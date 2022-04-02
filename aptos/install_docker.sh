#安装docker
curl -fsSL https://get.docker.com | bash
#拉取最新的aptos容器
sudo docker pull qsobad/aptos:nighty
#运行容器，接口8080，9101
sudo docker run --name aptos -v ~/aptos:/data/aptos -p "8080:8080" -p "9101:9101" --restart always -d qsobad/aptos:nighty
#等待2秒
sleep 2
#获取私钥
echo "打印私钥"
cat ~/aptos/.aptos/key/private-key.txt && echo
