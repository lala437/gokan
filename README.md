##### 简介：
基于GO语言开发

对接的维棠视频

进入播放页的时候会根据视频名称 去后台配置的资源站接口查询同名资源 因此理论上 播放源可以有很多

默认全局缓存,可以再后台设置关闭



##### 使用方式:

###### Linux部署
```
上传到Linux服务器任意目录,然后解压

解压之后依次执行以下命令
chmod +x gokan
./gokan
显示服务监听于1235 则表示成功

如需后台运行 执行如下命令
nohup ./gokan &

如果提示权限不足啥的 可以切换到root用户执行

执行完毕之后 
可以去配置nginx 反向代理 
指向http://127.0.0.1:1235 即可 
宝塔可以直接配置 其他的请自行百度 
然后就可以通过域名访问了


目前最优支持 X86_64 以及amd64 架构的linux系统
可以使用uname -a 查看自己的系统是什么架构的 目前云厂商的服务器应该都是支持的

ARM64架构的 可以试试 执行./gokan_arm start 不保证成功 QAQ

```

###### Docker部署

```
docker pull supersyskey/gokan:latest

docker run --name gokan -p 1235:1235 gokan

```

推荐一个白嫖docker容器的地址:[okteto](https://cloud.okteto.com)
就是自定义域名比较麻烦

###### windows

```
直接运行gokan.exe 文件 就会自动调用默认浏览器并打开网页

```

##### 后台相关

```
后台地址:http://域名/admin/index
默认账号密码:admin admin
```
