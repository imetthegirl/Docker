##Ubuntu系统默认python版本不满足，需要升级版本
apt update
apt install software-properties-common
add-apt-repository ppa:deadsnakes/ppa
#Press [ENTER] to continue or Ctrl-c to cancel adding it.
apt install python3.x
#例如: 升级到python3.8
which python3.8
#/usr/bin/python3.8

update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.x 1

which python3.5
#/usr/bin/python3.5

update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 2

update-alternatives --config python3

# There are 2 choices for the alternative python3 (providing /usr/bin/python3).

#   Selection    Path                Priority   Status
# ------------------------------------------------------------
# * 0            /usr/bin/python3.5   2         auto mode
#   1            /usr/bin/python3.5   2         manual mode
#   2            /usr/bin/python3.8   1         manual mode

# Press <enter> to keep the current choice[*], or type selection number: 2


#安装pip3
apt install python3-pip
#或者
wget --no-check-certificate  https://pypi.python.org/packages/source/s/setuptools/setuptools-19.6.tar.gz#md5=c607dd118eae682c44ed146367a17e26
tar -zxvf setuptools-19.6.tar.gz
cd setuptools-19.6.tar.gz
python3 setup.py build
python3 setup.py install


#pip升级命令
pip3 install --upgrade pip

#pip国内源命令
pip3 install xxx -i https://pypi.tuna.tsinghua.edu.cn/simple 

#python3安装tensorflow
(python3.7可以直接安装,python3.8需要安装编译安装)
pip3 install tensorflow -i https://pypi.tuna.tsinghua.edu.cn/simple

