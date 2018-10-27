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

Some scripts will require administrative privileges to run.

## Pre-requisites

You have installed
 * [git](https://git-scm.com/downloads)
 * [node.js+npm](https://nodejs.org/en/download/)
 * [yarn](https://yarnpkg.com/en/docs/install) (optional)
 * [Git Credential Manager for Windows](https://github.com/Microsoft/Git-Credential-Manager-for-Windows/releases)

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
 * Study `git-helper.sh`, try commands assigned to aliases
   on some of your repos to see what those do; edit your credentials
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

 ## Issues?

 If anything above contains errors, not quite clear or requires
 improvement or update, please, feel free adding an
 [Issue](https://github.com/OleksiyRudenko/dev-env/issues).
