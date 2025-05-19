<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page session="true" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.example.demo1.JDBCUtil" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    int points = 0;
    String errorMsg = null;
    try (Connection conn = JDBCUtil.getConnection();
         PreparedStatement ps = conn.prepareStatement("SELECT points FROM user WHERE username=?")) {
        ps.setString(1, username);
        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                points = rs.getInt("points");
            }
        }
    } catch (Exception e) {
        errorMsg = "获取积分失败：" + e.getMessage();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>个人中心 - 志愿者服务平台</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header bg-info text-white">个人中心</div>
                <div class="card-body">
                    <h4>欢迎，<%= username %>！</h4>
                    <p>当前积分：<span class="badge bg-success"><%= points %></span></p>
                    <% if (errorMsg != null) { %>
                        <div class="alert alert-danger"><%= errorMsg %></div>
                    <% } %>
                    <hr/>
                    <h5>我的志愿服务记录</h5>
                    <table class="table table-bordered mt-3">
                        <thead class="table-light">
                        <tr>
                            <th>项目名称</th>
                            <th>描述</th>
                            <th>获得积分</th>
                            <th>报名时间</th>
                            <th>是否完成</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                        try (Connection conn = JDBCUtil.getConnection();
                             PreparedStatement ps = conn.prepareStatement(
                                "SELECT p.name, p.description, p.points, s.signup_time, s.completed " +
                                "FROM signup s JOIN user u ON s.user_id=u.id " +
                                "JOIN project p ON s.project_id=p.id " +
                                "WHERE u.username=? ORDER BY s.signup_time DESC")) {
                            ps.setString(1, username);
                            try (ResultSet rs = ps.executeQuery()) {
                                boolean hasRecord = false;
                                while (rs.next()) {
                                    hasRecord = true;
                        %>
                        <tr>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("description") %></td>
                            <td><%= rs.getInt("points") %></td>
                            <td><%= rs.getTimestamp("signup_time") %></td>
                            <td><%= rs.getBoolean("completed") ? "已完成" : "未完成" %></td>
                        </tr>
                        <%
                                }
                                if (!hasRecord) {
                        %>
                        <tr><td colspan="5" class="text-center">暂无志愿服务记录</td></tr>
                        <%
                                }
                            }
                        } catch (Exception e) {
                        %>
                        <tr><td colspan="5" class="text-danger">加载报名记录失败：<%= e.getMessage() %></td></tr>
                        <%
                        }
                        %>
                        </tbody>
                    </table>
                    <a href="index.jsp" class="btn btn-secondary">返回首页</a>
                    <a href="project_list.jsp" class="btn btn-primary ms-2">浏览志愿服务项目</a>
                    <a href="logout.jsp" class="btn btn-outline-danger ms-2">退出登录</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
                    <p>当前积分：<span class="badge bg-success"><%= points %></span></p>
                    <a href="index.jsp" class="btn btn-secondary">返回首页</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
