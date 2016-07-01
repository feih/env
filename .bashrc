
#=== start of automatically maintained lines (do not delete)===
# .bashrc, sourced by interactive non-login shells (also called by .bash_profile)
#umask 022
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

if [ "$PS1" != "" ]
then
	PS1="\h \t \w \$(parse_git_branch) \$ "
	if [ -n "$YROOT_NAME" ]; then
	   PS1="[$YROOT_NAME] \h \t \w \$ "
  	fi
	setenv ()  { export $1="$2"; }
	unsetenv ()  { unset $*; }
fi
#===   end of automatically maintained lines (do not delete)===
# per-user custom comands go here...
#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
export PATH=~/yclients/act/activator:$PATH
export PATH=~/.composer/vendor/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH

export M2_HOME=~/maven3
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

#export PATH=/home/y/bin:$PATH

alias source="source /Users/feih/.bashrc"
alias bashrc="vim ~/.bashrc"

# developement specific
alias xsync="~/sync.sh"
alias copy="~/copy.sh"

pwd=`pwd`
cwd=`echo $pwd | cut -d "/" -f5-`
cwd=`echo $cwd | sed 's/\//\-/g'` # replace / with -
alias savediff="echo saving project $cwd ; svn diff > ~/savings/$cwd.svn.`date +"%F-%H-%M-%S"`.diff"
alias svnchange="~/svnchange.sh"

netbeans_conf="/Applications/NetBeans/NetBeans 7.3.1.app/Contents/Resources/NetBeans/etc/netbeans.conf"
function jdk6() {
    # comment out jdk 7
#sudo sed -i '57s/^/#/' $file
#sudo sed -i '58s/^#//' $(eval $netbeans_conf)
    cp "$netbeans_conf.jdk6" "$netbeans_conf"
}

function jdk7() {
    # comment out jdk 7
    cp "$netbeans_conf.jdk7" "$netbeans_conf"
}

alias size="du -skh"

alias mvnDump="mvn help:effective-pom"

#svn co svn+ssh://svn.corp.yahoo.com/yahoo/searchfe/middleware/trunk . 

alias patchdiff="patch -p0 -i $1"

alias grep2="grep -R --exclude-dir='.svn' $1"

export EDITOR="vim"
export SVN_EDITOR="vim"

alias svns="svn stat | egrep '(^M|^A|^D)'"

alias creatediff="svn diff > ~/lastest.diff"

alias g="~/mygrep.sh $1 $2"

alias getDiff_u="echo 'generating diff remotely at uni1134 ..'; ssh feih@67.195.89.202 'cd ~/uni; svn diff > ~/latest.diff'; scp feih@67.195.89.202:~/latest.diff ~/."

alias jango="python manage.py runserver"

alias diffuni="scp feih@ug12.dev.uni.bf1.yahoo.com:~/latest.diff ~/"

export GEMINI_DEVAPI_HOST=wsc31.dev.gsm.search.corp.gq1.yahoo.com
#export GEMINI_DEVAPI_HOST=geminiui.trunk.development.manhattan.corp.gq1.yahoo.com

