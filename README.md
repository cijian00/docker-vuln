# docker-vuln
- 记一下以前搭过的docker环境
- 安装docker、docker-compose可以参考（https://github.com/vulhub/vulhub）
```
# 安装 pip
curl -s https://bootstrap.pypa.io/get-pip.py | python3

# 安装新版本 docker
curl -s https://get.docker.com/ | sh

# 运行docker服务
service docker start

# 安装 docker-compose
pip install docker-compose
```
- 用法也与vulhub中的环境一样
```
# 进到docker环境目录下
cd ./001-bwapp/

# 构建环境
docker-compose build

# 运行环境
docker-compose up -d
```
