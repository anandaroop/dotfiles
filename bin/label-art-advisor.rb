#! /usr/bin/env ruby

require 'octokit'
require 'date'
require 'rainbow'

# GitHub personal access token for Art Advisor Labels
GITHUB_AAL_TOKEN = ENV['GITHUB_AAL_TOKEN']

# Initialize the GitHub client
client = Octokit::Client.new(access_token: GITHUB_AAL_TOKEN)

# Organization name
ORG = 'artsy'

# List of users and repos
users = [
  "anandaroop",
  "araujobarret",
  "dblandin",
  "egdbear",
  "MounirDhahri",
  "nickskalkin",
  "olerichter00"
]

repos = [
  "metaphysics",
  "eigen",
  "cohesion",
]

# How many PRs
two_weeks_ago = (Date.today - 14).to_time
per_page = 100

def get_pr_labels(client, repo, pr_number)
  client.labels_for_issue(repo, pr_number)
rescue Octokit::Error => e
  puts "Error fetching labels for PR ##{pr_number}: #{e.message}"
  []
end

def days_ago(date)
  (Date.today - date.to_date).to_i
end


# Iterate through each repo
repos.each do |repo|
  full_repo_name = "#{ORG}/#{repo}"
  puts Rainbow("Inspecting PRs for #{full_repo_name}\n").bold.purple.underline

  begin
    # Fetch all pull requests for the repository
    pulls = client.pull_requests(full_repo_name, state: 'all', per_page:)

    # Filter PRs by user and creation date
    user_pulls = pulls.select do |pr|
      users.include?(pr.user.login) && pr.created_at > two_weeks_ago
    end

    if user_pulls.empty?
      puts "No PRs found for #{users.join("/")} in the last 4 weeks."
    else
      user_pulls.each do |pr|
        # date
        days_old = days_ago(pr.created_at)
        puts Rainbow("#{days_old} day#{'s' unless days_old == 1} ago, #{pr.user.login}").lightgray

        # title
        if pr.state == "open"
          puts Rainbow(pr.title).underline.bold.green
        else
          puts Rainbow(pr.title).underline.bold
        end

        # url
        puts Rainbow(pr.html_url)

        # labels
        current_labels = get_pr_labels(client, full_repo_name, pr.number)
        current_label_names = current_labels.map(&:name)
        if current_label_names.include?("Art Advisor")
          colored_labels = current_label_names.map { |label| label == "Art Advisor" ? Rainbow(label).blue.bold : label }
          puts colored_labels.join(', ')
        else
          puts Rainbow("Might need label").orange.bold
        end

        puts "\n\n"
      end
    end
  rescue Octokit::NotFound
    puts "Repository not found or you don't have access to it."
  rescue Octokit::Unauthorized
    puts "Authentication failed. Please check your GitHub access token."
  rescue => e
    puts "An error occurred: #{e.message}"
  end

  puts "\n\n"
end

puts "View them all at https://github.com/search?q=org%3Aartsy+label%3A%22Art+Advisor%22&type=pullrequests&s=created&o=desc"
