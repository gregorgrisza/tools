[user]
	name = <USER>
	email = <USER_EMAIL>
[http]
	proxy = <PROXY>
[core]
	autocrlf = true
[push]
	default = current
[merge]
	tool = <MERGE_TOOL>
[mergetool]
	prompt = false
[alias]
	cm = commit -m
	pur = pull --rebase
	p = pull
	co = checkout
	ci = commit
	cam = commit -am
	st = status
	g = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
	unstage = reset HEAD --
	d = diff
	ca = commit -a
	c = commit
	pfm = push origin HEAD:refs/for/master%r=<REVIEWER_1>,<REVIEWER_2>,<REVIEWER_n>
	pfr = push origin HEAD:refs/for/<BRANCH>%r=<REVIEWER_1>,<REVIEWER_2>,<REVIEWER_n>
	brdesc = branch -a --sort=-committerdate --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'

    find-merge = "!sh -c 'commit=$0 && branch=${1:-HEAD} && (git rev-list $commit..$branch --ancestry-path | cat -n; git rev-list $commit..$branch --first-parent | cat -n) | sort -k2 -s | uniq -f1 -d | sort -n | tail -1 | cut -f2'"
    show-merge = "!sh -c 'merge=$(git find-merge $0 $1) && [ -n \"$merge\" ] && git show $merge'"
        lu = ls-files . --exclude-standard --others

# Push merge request to gitlab to branch
	pmr = push -o merge_request.create -o merge_request.target=<BRANCH>
	meld = !/home/greg/scripts/git-meld.pl
	branch-sorted = "for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
[color]
	ui = auto
[merge]
	tool = meld
