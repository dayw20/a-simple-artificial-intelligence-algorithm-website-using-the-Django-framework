# 模型权重下载说明

由于模型权重文件 `lenet.pth` 较大（约118KB），已从Git仓库中移除。请按照以下方式获取模型权重：

## 方法1：从Releases下载（推荐）

1. 访问 [GitHub Releases](https://github.com/dayw20/LeNet_Demo_WebApplication/releases)
2. 下载最新版本的 `lenet.pth` 文件
3. 将文件放置在项目根目录下

## 方法2：使用wget下载

```bash
wget https://github.com/dayw20/LeNet_Demo_WebApplication/releases/latest/download/lenet.pth
```

## 方法3：使用curl下载

```bash
curl -L -o lenet.pth https://github.com/dayw20/LeNet_Demo_WebApplication/releases/latest/download/lenet.pth
```

## 方法4：手动训练模型

如果您想自己训练模型，可以运行：

```bash
cd LeNet
python train.py
```

训练完成后，模型权重将保存在 `LeNet/` 目录下。

## 注意事项

- 确保 `lenet.pth` 文件位于项目根目录
- 模型权重文件包含预训练的LeNet-5网络参数
- 如果下载失败，请检查网络连接或使用VPN
