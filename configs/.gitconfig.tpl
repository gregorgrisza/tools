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
