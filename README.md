# SE2022 Qiaqia Docker

借助Docker完成一键部署项目。

您可以通过[演示视频](https://b23.tv/ZJgkxTl)查看部署过程及系统大致效果。

## 运行项目

请确保已安装以下工具：

- Linux：Docker & Docker Compose
- MacOS: Docker Desktop
- Windows: Docker Desktop

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
    git clone https://github.com/SE2022-Qiaqia/docker.git course-system-docker

    cd course-system-docker

    git submodule update --init --recursive
    ```

2. 构建并启动服务

    暂时没有提供预打包好的Docker镜像，所以首次运行可能会花较长的时间完成镜像的构建，那是正常的。

    ```shell
    docker-compose up

    # 或者使用下面这条命令
    # docker-compose up --build

    ```

3. 访问服务

    http://localhost/

4. 预设账户密码

    在[用于初始化数据库的SQL文件](https://github.com/SE2022-Qiaqia/docker/tree/master/db/init)中，我们提供了一些用于初始化系统的数据，包含了一些示例学院、课程、教师、管理员等。
    
    |角色|用户名|密码|
    |----|------|----|
    |管理员|admin|hello-admin|
    |教师|请通过管理员查看用户列表获取|demo-password|
