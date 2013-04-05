# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export TERM=linux
alias hadoop-ston="/home/zhangchao08/Tool/hadoop-ston/hadoop/bin/hadoop"
alias hadoop-stoff="/home/zhangchao08/Tool/hadoop-stoff/bin/hadoop"
alias hive="/home/zhangchao08/Tool/hive_udw2/bin/hive"
export HADOOP_HOME="/home/zhangchao08/Tool/hadoop-stoff/"
alias comake="/home/zhangchao08/CVS/comake_2-1-3-2304_PD_BL/comake2"
alias hadoop-ecomon="/home/zhangchao08/Tool/hadoop-ecomon/bin/hadoop"
alias ctags="/home/zhangchao08/program_files/Exuberant/bin/ctags"
alias cscope="/home/zhangchao08/program_files/cscope/bin/cscope"
#alias emacs="/home/zhangchao08/program_files/emacs-24.2/bin/emacs"
alias emacs="/home/zhangchao08/program_files/emacs-24-3/bin/emacs"
alias etags="/home/zhangchao08/program_files/emacs-24.2/bin/etags"

alias gtags="/home/zhangchao08/program_files/global-6.2.7/bin/gtags"
alias global="/home/zhangchao08/program_files/global-6.2.7/bin/global"
alias tar="/home/zhangchao08/program_files/tar-1.26/bin/tar"
alias xz="/home/zhangchao08/program_files/xz-5.0.4/bin/xz"
alias m4="/home/zhangchao08/program_files/m4/bin/m4"
alias flex="/home/zhangchao08/program_files/flex/bin/flex"
alias bison="/home/zhangchao08/program_files/bison/bin/bison"

export PATH=$PATH:~/program_files/idutils-4.6/bin/
export PATH=$PATH:/home/zhangchao08/program_files/m4/bin/
