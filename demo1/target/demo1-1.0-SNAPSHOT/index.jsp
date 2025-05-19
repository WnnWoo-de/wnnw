<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <style>
    .feature-card {
  border: 2px solid #e0e0e0;
  border-radius: 18px;
  padding: 32px 16px;
  background: #fff;
  box-shadow: 0 2px 10px rgba(0,0,0,0.04);
  transition: transform 0.25s cubic-bezier(.4,2,.6,1), box-shadow 0.25s cubic-bezier(.4,2,.6,1);
  margin-bottom: 16px;
}
.feature-card:hover {
  transform: translateY(-8px) scale(1.04);
  box-shadow: 0 8px 24px rgba(0,0,0,0.12);
  border-color: #7ed957;
}
  </style>
    <title>志愿者服务平台</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .feature-icon {
            font-size: 2.5rem;
            color: #0d6efd;
        }
        .leaderboard {
            background: #fffbe7;
            border-radius: 12px;
            padding: 1.5rem;
        }
        .leaderboard-animated {
            transition: transform 0.25s cubic-bezier(.4,2,.6,1), box-shadow 0.25s cubic-bezier(.4,2,.6,1), border-color 0.25s cubic-bezier(.4,2,.6,1);
            box-shadow: 0 2px 10px rgba(0,0,0,0.04);
            border: 2px solid #f7e3a3;
            border-radius: 18px;
            animation: leaderboard-fade-in 0.7s cubic-bezier(.4,2,.6,1);
        }
        .leaderboard-animated:hover {
            transform: translateY(-8px) scale(1.04);
            box-shadow: 0 8px 24px rgba(243,156,18,0.18);
            border-color: #f39c12;
        }
        @keyframes leaderboard-fade-in {
            from { opacity: 0; transform: translateY(32px); }
            to { opacity: 1; transform: none; }
        }
        .carousel-caption {
            background: rgba(0,0,0,0.4);
            border-radius: 8px;
        }
    </style>
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">志愿者服务平台</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="login.jsp">登录</a></li>
        <li class="nav-item"><a class="nav-link" href="register.jsp">注册</a></li>
        <li class="nav-item"><a class="nav-link" href="volunteer_center.jsp">个人中心</a></li>
      </ul>
    </div>
  </div>
</nav>
<!-- 轮播图 -->
<div id="mainCarousel" class="carousel slide mt-3" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=1200&q=80" class="d-block w-100" style="max-height:350px;object-fit:cover;" alt="志愿服务">
      <div class="carousel-caption d-none d-md-block">
        <h5>让爱心点亮城市</h5>
        <p>加入我们，让世界因你更美好！</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://images.unsplash.com/photo-1464983953574-0892a716854b?auto=format&fit=crop&w=1200&q=80" class="d-block w-100" style="max-height:350px;object-fit:cover;" alt="志愿者活动">
      <div class="carousel-caption d-none d-md-block">
        <h5>志愿服务，收获成长</h5>
        <p>每一次付出都值得被铭记。</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#mainCarousel" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#mainCarousel" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- 平台简介与特色 -->
<div class="container mt-5">
  <div class="row text-center mb-5">
    <div class="col">
      <h1 class="fw-bold">欢迎来到志愿者服务平台</h1>
      <p class="lead">参与志愿服务，收获成长与积分，兑换精彩奖励！</p>
      <a href="project_list.jsp" class="btn btn-success btn-lg mt-3">浏览志愿服务项目</a>
    </div>
  </div>
  <div class="row text-center mb-5">
  <div class="col-md-4">
    <div class="feature-card">
      <div class="feature-icon mb-2">❤️</div>
      <h5>公益项目丰富</h5>
      <p>多样化志愿服务项目，满足不同兴趣与特长。</p>
    </div>
  </div>
  <div class="col-md-4">
    <div class="feature-card">
      <div class="feature-icon mb-2">🏆</div>
      <h5>积分激励机制</h5>
      <p>每参与一次志愿服务即可获得积分，积分可兑换奖励。</p>
    </div>
  </div>
  <div class="col-md-4">
    <div class="feature-card">
      <div class="feature-icon mb-2">🤝</div>
      <h5>成长与交流</h5>
      <p>结识志同道合的朋友，共同成长、共同进步。</p>
    </div>
  </div>
</div>
  <!-- 积分榜（静态示例，可后续动态化） -->
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="leaderboard leaderboard-animated shadow-sm">
        <h4 class="mb-3"><span style="color:#f39c12;">🏅</span> 积分榜</h4>
        <table class="table table-striped">
          <thead><tr><th>排名</th><th>用户名</th><th>积分</th></tr></thead>
          <tbody>
            <tr><td>1</td><td>admin</td><td>100</td></tr>
            <tr><td>2</td><td>志愿者A</td><td>80</td></tr>
            <tr><td>3</td><td>志愿者B</td><td>65</td></tr>
            <tr><td>4</td><td>志愿者C</td><td>40</td></tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
<footer class="footer mt-auto py-3 bg-dark text-white text-center mt-5">
  <div class="container">
    <span class="text-muted">&copy; 2025 志愿者服务平台 | 联系方式：service@volunteer.com | 地址：北京市志愿路100号</span>
  </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>