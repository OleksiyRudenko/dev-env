git config --global user.name OleksiyRudenko
git config --global user.email fake-address@gmail.com
git config --global format.commitMessageColumns 72
git config --global core.pager cat
# git config --global push.default upstream
git config --global merge.conflictstyle diff3
git config --global color.ui true
git config --global core.excludesfile ~/.gitignore
# aliases
git config --global alias.logg "log --graph --full-history --all --color --pretty=format:\"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s\""
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
# next lists branches you worked on (most recent goes first)
git config --global alias.branch-history "for-each-ref --sort=-committerdate --count=10 --format='%(refname:short)' refs/heads/"
# Windows specific
git config --system core.longpaths true
# UPSTREAM/ORIGIN sync
# next syncs local master and origin/master with upstream/master
git config --global alias.sync-master-upstream '!git checkout master && git pull upstream master && git push origin master'
# next syncs current branch recursively with upstream and local & origin master
git config --global alias.sync-branch-upstream-merge '!git sync-master-upstream && git checkout - && git merge master'
# ORIGIN sync
# next syncs local master and origin/master from any branch
git config --global alias.sync-master '!git checkout master && git pull origin master && git checkout -'
# next rebases feature branch onto master
git config --global alias.sync-branch-rebase '!git rebase master'
# next completes rebase after conflict resolution
git config --global alias.sync-branch-continue '!git add . && git rebase --continue'
