# 项目结构说明

## 目录结构

```
LeNet_Demo_WebApplication/
├── .github/                    # GitHub Actions CI/CD配置
│   └── workflows/
│       └── ci.yml             # 持续集成工作流
├── LeNet/                      # LeNet模型相关代码
│   ├── model/                 # 模型定义
│   │   ├── __init__.py
│   │   └── lenet.py          # LeNet-5网络架构
│   ├── __init__.py
│   └── train.py              # 模型训练脚本
├── utils/                     # 工具函数
│   ├── __init__.py
│   ├── pre_process.py        # 数据预处理
│   └── visualizer.py         # 可视化工具
├── templates/                 # HTML模板
│   ├── Home.html             # 首页
│   ├── TrainModel.html       # 模型训练页面
│   └── ShowInfo.html         # 结果展示页面
├── static/                    # 静态文件
├── migrations/               # Django数据库迁移文件
├── .gitignore               # Git忽略文件配置
├── clean_repository.sh      # Linux/Mac清理脚本
├── clean_repository.bat     # Windows清理脚本
├── LICENSE                  # MIT许可证
├── MODEL_DOWNLOAD.md        # 模型权重下载说明
├── PROJECT_STRUCTURE.md     # 项目结构说明（本文件）
├── README.md                # 项目说明文档
├── requirements.txt         # Python依赖包列表
└── manage.py               # Django管理脚本
```

## 文件说明

### 核心文件
- `manage.py`: Django项目的管理脚本，用于运行服务器、创建迁移等
- `requirements.txt`: 项目依赖的Python包列表
- `README.md`: 项目的主要说明文档

### 模型相关
- `LeNet/model/lenet.py`: LeNet-5卷积神经网络模型定义
- `LeNet/train.py`: 模型训练脚本
- `lenet.pth`: 预训练模型权重文件（需要单独下载）

### 工具文件
- `utils/pre_process.py`: 数据预处理工具
- `utils/visualizer.py`: 结果可视化工具

### 模板文件
- `templates/Home.html`: 项目首页
- `templates/TrainModel.html`: 模型训练界面
- `templates/ShowInfo.html`: 训练结果展示界面

### 配置文件
- `.gitignore`: Git版本控制忽略文件配置
- `.github/workflows/ci.yml`: GitHub Actions持续集成配置

### 清理脚本
- `clean_repository.sh`: Linux/Mac系统清理脚本
- `clean_repository.bat`: Windows系统清理脚本

## 注意事项

1. **模型权重文件**: `lenet.pth` 不在Git仓库中，需要单独下载
2. **数据库文件**: `db.sqlite3` 是本地开发数据库，不应提交到Git
3. **系统文件**: `.DS_Store` 等系统生成的文件会被自动忽略
4. **虚拟环境**: `venv/` 目录包含Python虚拟环境，不应提交到Git

## 开发环境设置

1. 克隆仓库
2. 创建虚拟环境
3. 安装依赖: `pip install -r requirements.txt`
4. 下载模型权重文件
5. 运行Django服务器: `python manage.py runserver`
