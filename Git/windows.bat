:: config git with WinMerge
git config --global diff.tool winmerge
git config --global difftool.winmerge.cmd "C\:/Program\ Files\ \(x86\)/WinMerge/WinMergeU.exe -e -ub \"$LOCAL\" \"$REMOTE\""
git config --global difftool.prompt false