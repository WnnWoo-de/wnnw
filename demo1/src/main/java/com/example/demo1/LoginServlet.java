package com.example.demo1;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // TODO: 这里可以添加数据库校验逻辑，目前仅做简单判断
        if ("admin".equals(username) && "admin".equals(password)) {
            // 登录成功后重定向到项目列表页面
            response.sendRedirect("project_list.jsp");
        } else {
            out.println("<html><body><h2>登录失败，用户名或密码错误！</h2><a href='login.jsp'>返回登录</a></body></html>");
            out.close();
        }
    }
}
