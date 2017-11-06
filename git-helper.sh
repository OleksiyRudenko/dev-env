git config --global user.name OleksiyRudenko
git config --global user.email oleksiy.rudenko@gmail.com
git config --global alias.logg "log --graph --full-history --all --color --pretty=format:\"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s\""
git config --global format.commitMessageColumns 72
git config --global core.editor "'D:/Program Files (x86)/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin '$*'"
git config --global core.pager cat
git config --global color.ui true
git config --global merge.conflictstyle diff3
# Windows specific
git config --system core.longpaths true
git town alias true
git config git-town.code-hosting-driver github