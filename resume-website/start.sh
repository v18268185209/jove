#!/bin/bash

# 胡振杰简历网站 - 快速启动脚本

echo "🚀 胡振杰个人简历网站"
echo "========================"

# 检查是否在项目目录中
if [ ! -f "package.json" ]; then
    echo "❌ 请在 resume-website 目录中运行此脚本"
    exit 1
fi

# 检查Node.js是否安装
if ! command -v node &> /dev/null; then
    echo "❌ Node.js 未安装，请先安装 Node.js"
    echo "   下载地址: https://nodejs.org/"
    exit 1
fi

# 检查npm是否安装
if ! command -v npm &> /dev/null; then
    echo "❌ npm 未安装"
    exit 1
fi

echo "✅ 环境检查通过"
echo ""

# 询问用户操作
echo "请选择操作:"
echo "1) 安装依赖并启动开发服务器"
echo "2) 仅启动开发服务器（依赖已安装）"
echo "3) 构建生产版本"
echo "4) 在浏览器中打开静态预览版本"
echo "5) 退出"
echo ""

read -p "请输入选项 (1-5): " choice

case $choice in
    1)
        echo "📦 正在安装依赖..."
        npm install
        
        if [ $? -eq 0 ]; then
            echo "✅ 依赖安装成功"
            echo "🚀 启动开发服务器..."
            npm run dev
        else
            echo "❌ 依赖安装失败"
        fi
        ;;
    2)
        echo "🚀 启动开发服务器..."
        npm run dev
        ;;
    3)
        echo "🏗️  构建生产版本..."
        npm run build
        
        if [ $? -eq 0 ]; then
            echo "✅ 构建成功！"
            echo "📁 构建文件位于 dist/ 目录"
        else
            echo "❌ 构建失败"
        fi
        ;;
    4)
        if [ -f "standalone.html" ]; then
            echo "🌐 在浏览器中打开静态预览版本..."
            
            # 检测操作系统并打开浏览器
            if [[ "$OSTYPE" == "darwin"* ]]; then
                open standalone.html
            elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
                xdg-open standalone.html
            elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
                start standalone.html
            else
                echo "请手动在浏览器中打开 standalone.html 文件"
            fi
        else
            echo "❌ 未找到 standalone.html 文件"
        fi
        ;;
    5)
        echo "👋 再见！"
        exit 0
        ;;
    *)
        echo "❌ 无效选项"
        exit 1
        ;;
esac

echo ""
echo "💡 提示:"
echo "   - 开发服务器地址: http://localhost:3000"
echo "   - 按 Ctrl+C 停止开发服务器"
echo "   - 查看 README.md 了解更多使用说明"