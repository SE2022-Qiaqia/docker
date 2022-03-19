# SE2022 Qiaqia Docker

借助Docker完成一键部署项目。

### 启动项目

1. 更新镜像并启动服务，默认使用`nightly`版本的镜像。

    ```bash
    ./update-images.sh      # 更新镜像
    docker-compose up -d    # 启动服务
    ```

2. 访问项目。

    ```
    http://localhost/
    ```