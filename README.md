# wnnw
志愿者服务平台
# demo1 项目说明

本项目结构如下：
- `src/`：源代码目录
- `pom.xml`：Maven 项目配置文件
- `.gitignore`：Git 忽略文件
- `db_init.sql`：数据库初始化脚本
- `mvnw` / `mvnw.cmd`：Maven Wrapper 脚本
- 其它目录如 `.idea/`、`.vscode/`、`.mvn/`、`target/` 为开发环境或构建相关目录

## 快速开始

1. 使用 `mvnw` 或 `mvnw.cmd` 构建项目：
   ```sh
   ./mvnw clean install
   ```
   或在 Windows 下：
   ```bat
   mvnw.cmd clean install
   ```
2. 初始化数据库（可选）：
   使用 `db_init.sql` 脚本初始化数据库。

3. 运行项目：
   具体运行方式请参考 `src/` 目录下的代码说明。

## 目录说明

- `src/`：包含所有 Java 源代码和资源文件。
- `target/`：编译输出目录（自动生成）。
- `.idea/`、`.vscode/`、`.mvn/`：IDE 和 Maven 配置目录。

## 其他

如需更多帮助，请联系项目维护者。
