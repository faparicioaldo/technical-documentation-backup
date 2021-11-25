# GIT UTIL COMMANDS

git reset --soft
git reset --hard

git revert --no-commit HEAD~1
git revert --continue

git stash --include-untracker
git stash push -m ¨nombre¨ --include-untracker
git stash apply (el ultimo en pila)
git stash drop 
git stash pop (hace apply and drop)
git stash show stash@\{0\} 

