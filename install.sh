#!/data/data/com.termux/files/usr/bin/bash
clear
echo "欢迎使用termux一键配置脚本！"
echo "版本：v1.0    作者：紫泉梦月\n"
echo "正在进行安装...请稍后...\n正在更换软件源..."
sed -ie '2cdeb https://mirrors.ustc.edu.cn/termux stable main' /data/data/com.termux/files/usr/etc/apt/sources.list
echo "更换成功！更新中..."
apt update
echo "安装必备组件中..."
apt install -y git wget curl zsh python vim
echo "安装完成！准备美化脚本中..."
echo "提示：下列操作国内可能较慢，可准备梯子以进行加速，准备好请输入任意字符..."
read tmp
echo "准备安装中..."
cd ~
git clone http://github.com/jerrita/termux
echo "正在进行vim配置&美化..."
cp ~/termux/src/vimrc ~/.vimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/Vundle.vim
echo "正在执行最后操作，美化桌面中（若需要输入，回车就行）..."
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
