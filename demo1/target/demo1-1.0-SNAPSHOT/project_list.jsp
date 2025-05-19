<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*,com.example.demo1.JDBCUtil" %>
<%
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
    <title>志愿服务项目列表</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="mb-0">志愿服务项目</h2>
        <a href="add_project.jsp" class="btn btn-primary">发布志愿服务活动</a>
    </div>
    <table class="table table-bordered table-hover">
        <thead class="table-primary">
        <tr>
            <th>项目名称</th>
            <th>描述</th>
            <th>积分</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <%
        try {
            conn = JDBCUtil.getConnection();
            String sql = "SELECT * FROM project WHERE status='open'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("description") %></td>
            <td><%= rs.getInt("points") %></td>
            <td><%= rs.getString("status") %></td>
            <td>
                <form action="signup-servlet" method="post" style="display:inline;">
                    <input type="hidden" name="project_id" value="<%= rs.getInt("id") %>">
                    <button type="submit" class="btn btn-success btn-sm">报名</button>
                </form>
            </td>
        </tr>
        <%
            }
        } catch(Exception e) {
            %>
<tr><td colspan='5'>加载失败：<%= e.getMessage() %></td></tr>
<%

        } finally {
            if (rs != null) try { rs.close(); } catch (Exception e) {}
            if (ps != null) try { ps.close(); } catch (Exception e) {}
            if (conn != null) try { conn.close(); } catch (Exception e) {}
        }
        %>
        </tbody>
    </table>
    <a href="index.jsp" class="btn btn-secondary">返回首页</a>
</div>
</body>
</html>
