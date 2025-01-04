# 使用官方的 Python 3.11 镜像
FROM python:3.11-slim

# 设置工作目录
WORKDIR /app

# 安装 amiyabot 和 aiohttp
RUN pip install --no-cache-dir amiyabot

# 设置容器启动时运行的命令
CMD ["python", "bot.py"]