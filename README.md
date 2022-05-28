# SE2022 Qiaqia Docker

借助Docker完成一键部署项目。

### 启动项目(Spring后端)

1. 更新镜像并启动服务，默认使用`nightly`版本的镜像。

    ```bash
    ./update-images.sh      # 更新镜像
    docker-compose -f docker-compose-old.yml up -d    # 启动服务
    ```

2. 访问项目。

    ```
    http://localhost/
    ```

### 启动项目(GO后端)

1. 克隆仓库

```shell
git clone https://github.com/SE2022-Qiaqia/docker.git
git submodule update --init --recursive
```

2. 构建并启动服务

```shell
docker-compose up

# 或者使用下面这条命令
# docker-compose up --build
```

3. 访问服务

http://localhost/