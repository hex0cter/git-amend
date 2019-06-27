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
Usage: git-amend [options]
    -p, --path=<path>                Path to the target respository
    -a, --author=<email>             Author email for all commits
    -n, --author-name=<name>         Author name for all commits
    -c, --committer=<email>          Committer email for all commits
    -m, --committer-name=<name>      Committer name for all commits
    -C, --commit-hash=<hash>         The hash of git commit that needs to be updated
    -s, --shuffle                    Whether to shuffle the commit date (default: no)
    -f, --from=<date>                Date of the first commit
    -t, --to=<date>                  Date of the latest commit
    -v, --verbose                    Verbose mode
    -V, --version                    Print version
    -d, --dry-run                    Dry run without executing the actual command.
```
