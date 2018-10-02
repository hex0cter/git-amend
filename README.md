# git-shuffle
Shuffle your git commits date and spread them throughout the year.

## How to install
```bash
gem install git-shuffle
```

## How to install
```bash
gem build git-shuffle.gemspec
gem install --local git-shuffle-<version>.gem
cd <repository>
git-shuffle
```

## How to use
```bash
$ git-shuffle -h
Usage: git-shuffle [options]
    -p, --path=<path>                Path to the target respository
    -i, --interval=<interval>        How frequent is repo updated in days
    -a, --author=<email>             Author email for all commits
    -n, --author-name=<name>         Author name for all commits
    -c, --committer=<email>          Committer email for all commits
    -m, --committer-name=<name>      Committer name for all commits

$ cd <repository>
$ git-shuffle
```
