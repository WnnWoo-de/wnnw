<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>发布志愿服务活动</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">发布志愿服务活动</h2>
    <form action="add-project-servlet" method="post" class="bg-white p-4 rounded shadow-sm">
        <div class="mb-3">
            <label for="name" class="form-label">活动名称</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">活动描述</label>
            <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
        </div>
        <div class="mb-3">
            <label for="points" class="form-label">积分</label>
            <input type="number" class="form-control" id="points" name="points" required min="0">
        </div>
        <button type="submit" class="btn btn-primary">提交</button>
        <a href="project_list.jsp" class="btn btn-secondary ms-2">返回列表</a>
    </form>
</div>
</body>
</html>
