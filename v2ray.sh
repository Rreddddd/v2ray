#！/bin/bash
echo "开始处理梯子"
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast
yum install -y docker-ce
systemctl start docker
docker pull rreddd/v2ray:$1
docker run -idt --name=v2ray_$1 --privileged=true -p 443:443 rreddd/v2ray:$1 /usr/sbin/init
echo "梯子搭建完成，版本号:$1"
