# Web-SSH2
一个可以直接通过web来ssh登录的客户端，你可以打开任何一个浏览器，就可以连接到你的群晖或VPS

安装后可以通过访问http://localhost:2222/ssh/host/192.168.1.1 来登录 高级用法： http://localhost:2222/ssh/host/192.168.1.1?port=2244&header=My%20Header&color=red

执行命令：

docker run -d --name webssh -p 2222:2222 layui0320/web-ssh2:latest

docker：https://hub.docker.com/r/layui0320/web-ssh2
