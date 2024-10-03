# CIzzBuzz

This repository exists to learn more about how GitHub Merge Queues practically work. Reading the documentation is one thing; actually understanding what all of the knobs control and what the edge cases are requires practical experience.

In order to do this effectively, we want a repository with a handful of pull requests where it's easy to get CI to pass on its own, but slightly harder to get CI to pass on the merge if someone has already merged ahead of you. This repository is a modified version of the "fizz buzz" game: **The total number of lines of all the files in the repository (according to `LANG=C wc -l`) must be divisible by 3 or 5, but not both.**

Writing a bot to make a bunch of useless pull requests seems poor-spirited, so instead I'll ask... you! Pull requests welcome! [Nothing could possibly go wrong.](https://github.com/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)

Pull requests that don't pass checks on their own can't go into the merge queue. Once your PR passes checks and I'm okay with the contents, I'll approve the PR. After that, you don't need to do anything else.

It's likely --- in fact, it's the entire point of this repository --- that your PR will be removed from the merge queue for failing checks there, and you'll receive a notification about this. You don't need to do anything if you don't want to; since it still passes checks on its own I'll be able to add it to the merge queue again later, and it still has a chance of merging based on whatever else got merged in the meantime.

## Ground rules

- I won't merge anything that changes the "meta" part of the repo: this explanatory text, the license, the code of conduct, or the CI workflow.
- If you submit a PR with something I don't want to be in the repo, I'll close it. (I reserve the right to report it to GitHub Support if it's particularly unpleasant.)
- If you'd like to share feedback about how the GitHub Merge Queue workflow feels (particularly if you had to rebase a few times) I'd love to hear it in the PR itself.

## Ideas for commits

- Write a fizz buzz implementation in a programming language that's new to you
- Invent a new programming language and write a fizz buzz implementation in that
- Add to this list of ideas for commits
