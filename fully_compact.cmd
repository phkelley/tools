@echo off
git pack-refs --prune --all
git reflog expire --all
git repack -a -f -l -d
git prune
git commit-graph write --reachable
