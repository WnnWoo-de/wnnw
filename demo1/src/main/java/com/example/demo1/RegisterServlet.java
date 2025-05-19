package com.example.demo1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // TODO: 这里可以添加数据库注册逻辑，目前仅简单返回注册成功
        if (username != null && !username.isEmpty() && password != null && !password.isEmpty()) {
            out.println("<html><body><h2>注册成功！</h2><a href='login.jsp'>去登录</a></body></html>");
        } else {
            out.println("<html><body><h2>注册失败，请检查输入！</h2><a href='register.jsp'>返回注册</a></body></html>");
        }
        out.close();
    }
}
