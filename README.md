# Development Environment Helpers

1. Install [notepad++/Windows](https://notepad-plus-plus.org/download/)
1. Install [git](https://git-scm.com/)
1. Install [git-town](http://www.git-town.com/install.html)
1. Check, edit, save and run `git-helper.sh`
1. Install [node.js+npm](https://nodejs.org/en/download/)
1. Check, edit, save and run `npm-set.sh` as **admin**. Shell scriptgit repo contains:
   * [doctoc](https://github.com/thlorenz/doctoc) - 
     automate TOC creation for MD files.
     - use placeholder `<!-- START doctoc -->\n<!-- END doctoc -->`
     - use example: `doctoc README.md --github`
1. Copy `git-completion.bash` and `git-prompt.sh` to your home dir
   (Windows: `C:\Users\%username%\`). Consider also tuning prompt in
   `%ProgramFiles%\Git\etc\profile.d\git-prompt.sh`.
1. Use `bash_profile_course` following the
   [instructions](https://classroom.udacity.com/courses/ud775/lessons/2980038599/concepts/33417185870923)
   (note that `bash_profile_course` is renamed here into `.bash_profile`):
   supplement existing `$HOME\.bash_profile` with contents from `.bash_profile` or
   copy `.bash_profile` to your home dir.
