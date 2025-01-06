# AmiyaBot Docker Image

## 简介
这是一个简单的 Docker 镜像，用于快速部署 [Amiya-Bot-Core](https://github.com/AmiyaBot/Amiya-Bot-core/)的运行环境

## 使用方式

### 1. 安装 Docker 和 Docker Compose
确保你已经安装了 Docker 和 Docker Compose。如果尚未安装，可以参考以下链接进行安装：
- [Docker 安装指南](https://docs.docker.com/get-docker/)
- [Docker Compose 安装指南](https://docs.docker.com/compose/install/)

### 2. 创建 `docker-compose.yml` 文件
在你的项目目录中创建一个 `docker-compose.yml` 文件，并添加以下内容：

```yaml
version: '3.8'

services:
  amiyabot:
    image: ghcr.io/kirsysuv/amiyabotdocker:latest
    volumes:
      - ./your_code.py:/app/bot.py
    restart: unless-stopped
```
your_code.py是机器人代码入口文件。


### 3. 启动容器
在终端中运行以下命令来启动容器：

```bash
docker-compose up -d
```

### 5. 查看日志
你可以通过以下命令查看容器的日志：

```bash
docker logs -f amiyabot
```

## 许可证
本项目基于 [MIT 许可证](LICENSE) 发布。你可以自由地使用、修改和分发此项目，但请保留原始许可证文件。
