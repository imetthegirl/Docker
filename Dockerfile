Dockerfile每个指令的含义

FROM ubuntu:18.04 #使用Ubuntu18.04作为基础镜像，后续操作都基于此镜像进行操作。
COPY sources.list /etc/apt/sources.list #将当Dockerfile所在目录下的sources.list复制到容器中/etc/apt/下命名为sources.list。
RUN apt update && apt install vim wget curl python3 -y #更新软件源并安装软件。应该在安装完毕之后再清除缓存节省空间 rm -rf /var/lib/apt/lists/*



完成Dockerfile之后使用docker build -t ubuntu18：v1 . 命令创建镜像，-t参数可以指定新的镜像的名字，.表示Dokcerfile文件在当前目录下。
