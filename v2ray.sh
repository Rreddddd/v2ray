#！/bin/bash
echo "选择梯子版本"
read ver
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast
yum install -y docker-ce
systemctl start docker
docker pull rreddd/v2ray:"${ver}"
docker run -idt --name=v2ray_"${ver}" --privileged=true -p 443:443 rreddd/v2ray:"${ver}" /usr/sbin/init
