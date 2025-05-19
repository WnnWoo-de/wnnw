-- 创建志愿者服务平台数据库及表结构
CREATE DATABASE IF NOT EXISTS volunteer_platform DEFAULT CHARSET utf8mb4;
USE volunteer_platform;

-- 用户表
CREATE TABLE IF NOT EXISTS user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    role VARCHAR(20) DEFAULT 'volunteer', -- 'volunteer' or 'admin'
    points INT DEFAULT 0
);

-- 志愿服务项目表
CREATE TABLE IF NOT EXISTS project (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    points INT DEFAULT 10, -- 完成该项目获得的积分
    status VARCHAR(20) DEFAULT 'open' -- 'open', 'closed'
);

-- 报名表
CREATE TABLE IF NOT EXISTS signup (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    project_id INT,
    signup_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    completed BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (project_id) REFERENCES project(id)
);

-- 示例数据
INSERT INTO user (username, password, role, points) VALUES ('admin', 'admin123', 'admin', 0)
    ON DUPLICATE KEY UPDATE username=username;
INSERT INTO project (name, description, points, status) VALUES
    ('社区清洁', '参与社区环境卫生清洁，贡献一份力量。', 10, 'open'),
    ('图书馆志愿服务', '协助图书馆整理书籍、引导读者。', 8, 'open')
    ON DUPLICATE KEY UPDATE name=name;
