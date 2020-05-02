#!/bin/bash

function banner() {
	echo " /__  ___/           "
	echo "   / /         __    "
	echo "  / //   / / //  ) ) "
	echo " / ((___/ / //       "
	echo "/ /    / / //        "
}

function check_root() {
	if [ `whoami` != "root" ];then
		echo "	[+] 当前非root用户，请使用sudo重新运行。"
		exit
	fi
}

function install_base() {
	echo "	[+] 正在安装git，python，Java，。。。"
	apt install -y git python2 python3 openjdk-8-jre
}

function install_from_apt() {
	echo "	[+] 正在安装apktool foremost volatility。。。"
	apt install -y apktool foremost yara
}

function setup_env() {
	echo "	[+] 正在配置环境"
	echo "export PATH=\"\$PATH:/opt/Tyr/bin\"" > /etc/profile.d/Tyr.sh
}

function setup_app() {
	ln -s /opt/Tyr/vendor/ALB/ALB_linux /opt/Tyr/bin/ALB
}

banner
check_root
install_base
install_from_apt
setup_env
setup_app
