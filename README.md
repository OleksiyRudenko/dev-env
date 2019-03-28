# Development Environment Helpers

This repo contains scripts that make git users'
and project maintainers' life easier.

All scripts are optional. It is recommended that you look
into the script of your choice before using it.

Some tools/scripts are specific to Windows OS (as denoted).
Under Windows scripts are intended to get launched under
e.g. Git Bash that comes bundled with git distribution.
It would be available from file explorer context menu.

Some scripts require you to fix filepath, credentials, etc
(as denoted).

Some scripts will require administrative privileges
and may require `chmod u=rwx *.sh` to run.
Remember to precede script with explicit path, e.g. `./script.sh`

## Pre-requisites

You have installed
 * [git](https://git-scm.com/downloads)
 * [node.js+npm](https://nodejs.org/en/download/)
 * Optional: [yarn](https://yarnpkg.com/en/docs/install) or [pnpm](https://pnpm.js.org/docs/en/installation.html);
   **NB** [`npm` vs `yarn` vs `pnpm`](https://www.alexkras.com/understanding-differences-between-npm-yarn-and-pnpm/);
   **NB** Under Windows `pnpm` may require that packages repository and projects are on the same hard drive
   (pnpm uses hard links, Windows poses restrictions; please, google for details)
 * Windows only: [Git Credential Manager for Windows](https://github.com/Microsoft/Git-Credential-Manager-for-Windows/releases)

## Git Helpers

### Linux specific

 * `git-editor-linux-nano.sh` set default editor to _nano_

### Windows specific

 * `git-editor-windows-notepadpp.sh` set default editor to Notepad++,
   requires [notepad++](https://notepad-plus-plus.org/download/)
 * `windows.sh` adds
   - [`windows-build-tools`](https://github.com/felixrieseberg/windows-build-tools);
     you may require
     [`python`](https://www.python.org/download/releases/2.7/),
     [`node-gyp`](https://github.com/nodejs/node-gyp#on-windows)

**Why not Notepad.exe?** Windows `Notepad.exe` may not support Unix line
endings (LF). You may opt for different text editor, just edit
`git-editor...` as appropriate.

### Universal

Locate your home dir ($HOME)
 * under Linux it is `~/`
 * under Windows it is `C:\Users\%username%\`;
   in `cmd.exe` run `set HOME` to find home path components

Locate your installed applications directory ($PROGRAMS)
 * under Linux try e.g. `which git` to find path to git executable
 * under Windows it is normally `C:\Program Files`

#### Global git helpers
 * Edit `.gitignore` adding directory name your favourite IDE
   creates under project directory and you don't want to get tracked
 * Copy `.gitignore` to your $HOME
 * You will need `git config --global core.excludesfile ~/.gitignore`
   for the above to work (already available in `git-helper.sh`)
 * Study `git-helper.sh`, try commands assigned to aliases
   on some of your repos to see what those do; edit your credentials.
   Some of aliases:
   - `sync-master-upstream` - updates local `master` and `origin/master`
     with `upstream/master`
   - `sync-branch-upstream-merge`
     - calls `sync-master-upstream`
     - updates feature branch from `master` using simple merge strategy
   - `sync-master` - updates local `master` from `origin/master`
     when on a feature branch
   - `sync-branch-rebase` - rebases current branch onto (updated)
     `master`; conflicts may arise
   - `sync-branch-continue` - completes reabasing after conflict resolution
 * Run `git-helper.sh`

#### Tweak terminal

Make your terminal shell prompt informative

 * Copy `git-completion.bash` and `git-prompt.sh` to your $HOME
 * You may also want tuning prompt in
   `$PROGRAMS\Git\etc\profile.d\git-prompt.sh`
 * supplement existing `$HOME\.bash_profile` with contents
   from `.bash_profile` or
   copy `.bash_profile` to your home dir.
 * You'll need to close and re-open Git Bash before all your changes take effect

Credits:
[Udacity](https://classroom.udacity.com/courses/ud775/lessons/2980038599/concepts/33417185870923)

[Customize Linux/Mac terminal prompt](https://gist.github.com/ankurk91/2efe14650d54d7d09528cea3ed432f6d)

## Utils

 * Run `utils-npm.sh` or `utils-yarn.sh` if you prefer `yarn`
   as **admin** to install
   - [doctoc](https://github.com/thlorenz/doctoc) -
     automate TOC creation for MD files.
     - use placeholder `<!-- START doctoc -->\n<!-- END doctoc -->`
     - use example: `doctoc README.md --github`
   - [pushdir](https://www.npmjs.com/package/push-dir) -
     to push a subtree to a given branch
     - run `push-dir --dir=dist --branch=gh-pages` to publish only
       what is built; normally it is `./dist` directory, which
       is also ignored
     - add a script to your `package.json` to publish a web app
       on e.g. github pages:
       `"push-gh-pages": "push-dir --dir=dist --branch=gh-pages --cleanup --verbose"`
 * [git-town](http://www.git-town.com/install.html) is
   one of git workflow supporting framework;
   `git-town-set.sh` offers initial settings
 * [git-subrepo](https://github.com/ingydotnet/git-subrepo) is a great replacement
   for `git-submodule` and `git-subtree`; refer to
   [Repo import and export back](https://gist.github.com/OleksiyRudenko/86d378b56fe690e47a066b8eeb4ac5b2)
   for a use case

## More related resources

 * [yevhenorlov/dotfiles@github](https://github.com/yevhenorlov/dotfiles)
 * [Git going with aliases](https://hackernoon.com/git-going-with-aliases-a9706e23fa9c)
 * [https://medium.com/@vitalyb/creating-powerful-git-aliases-3dfc0efc9a31](https://medium.com/@vitalyb/creating-powerful-git-aliases-3dfc0efc9a31)
 * [robmiller/.gitconfig@github](https://gist.github.com/robmiller/6018582)

## Issues?

 If anything above contains errors, not quite clear or requires
 improvement or update, please, feel free adding an
 [Issue](https://github.com/OleksiyRudenko/dev-env/issues).
