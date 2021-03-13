// adapted from @pepopowitz's Tampermonkey script
// see https://artsy.slack.com/archives/C02BC3HEJ/p1615566743155200?thread_ts=1615561240.153500&cid=C02BC3HEJ
// see https://github.com/pepopowitz/dotfiles/blob/master/tampermonkey-scripts/github-warn-squash-or-merge.js

(function () {
  'use strict';

  document.addEventListener('pjax:end', () => {
    queueButtonCheck();
  });
  queueButtonCheck();

  function isMatchingPath() {
    return Boolean(document.location.pathname.match(/^\/artsy.*\/pull\/.*/))
  }

  function queueButtonCheck() {
    if (!isMatchingPath()) return

    window.setTimeout(checkButton, 1000);
  }

  function checkButton() {
    const titleEl = document.querySelector('.gh-header-title .js-issue-title');
    if (!titleEl) {
      return;
    }

    const title = titleEl.innerText.trim();

    const activeButtonName = getActiveButtonName();
    if (!activeButtonName) {
      return;
    }

    if (
      (title === 'Deploy' && activeButtonName !== 'merge') ||
      (title !== 'Deploy' && activeButtonName !== 'squash')
    ) {
      showWarning();
    }
  }

  function getActiveButtonName() {
    const names = ['merge', 'squash', 'rebase'];
    return names.find((name) => {
      const element = document.querySelector('.btn-group-' + name);
      if (element) {
        return elementIsVisible(element);
      }
    });
  }

  function elementIsVisible(element) {
    return window.getComputedStyle(element).display !== 'none';
  }

  function showWarning() {
    const button = document.querySelector('.btn-group-merge');
    const ancestor = button.closest('.js-merge-box');
    ancestor.classList.add("artsy-merge-warning__buttons")
    ancestor.insertAdjacentHTML('beforebegin', makeWarningHTML());
    console.log('hey!');
  }

  function makeWarningHTML() {
    return `<div class="artsy-merge-warning__hey"><h2>👇 Hey Roop! Are you sure this is right?</h2></div>`;
  }
})();
