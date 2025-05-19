# wnnw
志愿者服务平台
# demo1 项目说明

本项目结构如下：
- `src/`：源代码目录
- `pom.xml`：Maven 项目配置文件
- `.gitignore`：Git 忽略文件
- `db_init.sql`：数据库初始化脚本
- `mvnw` / `mvnw.cmd`：Maven Wrapper 脚本
- 其它目录如 `.idea/`、`.mvn/`、`target/` 为开发环境或构建相关目录

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

## 目录结构与说明

```
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com/example/demo1
│   │   │       ├── HelloServlet.java         # 示例 Servlet，通常用于测试
│   │   │       ├── JDBCUtil.java             # JDBC 工具类，数据库连接与操作
│   │   │       ├── LoginServlet.java         # 登录相关 Servlet
│   │   │       └── RegisterServlet.java      # 注册相关 Servlet
│   │   ├── resources                         # 资源文件目录（当前为空）
│   │   └── webapp
│   │       ├── WEB-INF
│   │       │   └── web.xml                   # Web 应用部署描述符，Servlet 配置
│   │       ├── index.jsp                     # 首页 JSP 页面
│   │       ├── login.jsp                     # 登录页面
│   │       ├── register.jsp                  # 注册页面
│   │       ├── add_project.jsp               # 添加项目页面
│   │       ├── project_list.jsp              # 项目列表页面
│   │       └── volunteer_center.jsp          # 志愿者中心页面
│   └── test
│       ├── java                              # 测试代码目录（当前为空）
│       └── resources                         # 测试资源目录（当前为空）
├── db_init.sql                               # 数据库初始化脚本
├── pom.xml                                   # Maven 项目配置文件
├── mvnw / mvnw.cmd                           # Maven Wrapper 脚本
├── .gitignore                                # Git 忽略文件
├── .idea / .vscode / .mvn                    # 开发工具和 Maven 配置目录
└── target                                    # 编译输出目录（自动生成）
```

### 关键文件与目录说明
- `src/main/java/com/example/demo1/`
  - `HelloServlet.java`：示例 Servlet，演示基本用法。
  - `JDBCUtil.java`：数据库连接和常用操作的工具类。
  - `LoginServlet.java`：处理用户登录逻辑。
  - `RegisterServlet.java`：处理用户注册逻辑。
- `src/main/webapp/`
  - `index.jsp`：系统首页。
  - `login.jsp`：登录页面。
  - `register.jsp`：注册页面。
  - `add_project.jsp`：添加新项目页面。
  - `project_list.jsp`：项目列表展示页面。
  - `volunteer_center.jsp`：志愿者中心页面。
  - `WEB-INF/web.xml`：Web 应用部署和 Servlet 配置文件。
- `db_init.sql`：数据库表结构及初始化数据脚本。
- `pom.xml`：Maven 项目依赖与构建配置。
- `mvnw` / `mvnw.cmd`：Maven Wrapper，便于无需全局安装 Maven 即可构建项目。
- `.gitignore`：Git 忽略规则。
- `.idea/`、`.vscode/`、`.mvn/`：开发工具和 Maven 配置目录。
- `target/`：编译和打包输出目录，自动生成。

## 其他

如需更多帮助，请联系项目维护者。
