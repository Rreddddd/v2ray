#！/bin/bash
echo "选择梯子版本"
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast
yum install -y docker-ce
systemctl start docker
docker pull rreddd/v2ray:$0
docker run -idt --name=v2ray_$0 --privileged=true -p 443:443 rreddd/v2ray:$0 /usr/sbin/init
