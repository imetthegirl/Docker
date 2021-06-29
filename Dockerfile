Dockerfile每个指令的含义

FROM ubuntu:18.04 #使用Ubuntu18.04作为基础镜像，后续操作都基于此镜像进行操作。
COPY sources.list /etc/apt/sources.list #将当Dockerfile所在目录下的sources.list复制到容器中/etc/apt/下命名为sources.list。
RUN apt update && apt install vim wget curl python3 -y #更新软件源并安装软件。应该在安装完毕之后再清除缓存节省空间 rm -rf /var/lib/apt/lists/*
COPY ./start.sh /  #将当前目录下的start.sh复制到容器的根目录下面
CMD ["/start.sh"] #容器启动的时候自动执行start.sh，但是使用docker run -d xxx:xx 的时候在后面加了命令就不会执行CMD指令
ENTRYPOINT ["/start.sh"] #也是容器启动的时候自动执行，但是使用 docker run -d xxx:xx 的时候在后面加了参数依然会执行ENTRYPOINT，只会把命令当成一个参数使用，而不会直接执行后面的命令

docker logs -f 容器id  # -f 跟踪日志输出 

完成Dockerfile之后使用docker build -t ubuntu18：v1 . 命令创建镜像，-t参数可以指定新的镜像的名字，.表示Dokcerfile文件在当前目录下,当前目录为/root/Dockerfile/ubuntu18。
