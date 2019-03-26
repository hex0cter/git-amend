# git-amend
A CLI tool to update the information of exisiting git commit, such as commit date, auther, etc.

## How to install
```bash
gem install git-amend
```

## How to install
```bash
gem build git-amend.gemspec
gem install --local git-amend-<version>.gem
cd <repository>
git-amend
```

## How to use
```bash
$ git-amend -h
Usage: git-amend [options]
    -p, --path=<path>                Path to the target respository
    -i, --interval=<interval>        How frequent is repo updated in days
    -a, --author=<email>             Author email for all commits
    -n, --author-name=<name>         Author name for all commits
    -c, --committer=<email>          Committer email for all commits
    -m, --committer-name=<name>      Committer name for all commits

$ cd <repository>
$ git-amend
```
