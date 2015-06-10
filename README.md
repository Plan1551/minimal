最小Linux Live
=======
什么是最小Linux Live(minimal linux live)？
最小Linux Live就是一个用来生成最迷你的Linux Live版本的工具。
生成的镜像文件仅仅几MB大小（译者实测8.04MB，2015年06月10日数据），可以方便地装进U盘或者做练习Linux命令的作用。

使用方法：
'''bash
sh build_minimal_linux_live.sh 
'''
或
'''bash
./build_minimal_linux_live.sh 
'''
然后去喝杯咖啡在来吧！

注意事项：
1.下载Linux内核的时间可能会有点长，可自行从Linux内核官网使用百度云等工具下完再下载下来，然后不忘忘记更改.config文件里面的URL
2.如果编译过程中出现错误，请仔细检查，可能你缺少一些程序，装上就好。

效果实例：
生成完成结果：


![ScreenShot](https://raw.githubusercontent.com/Diaob/minimal/master/pic/generate.png)

开机结果：


![ScreenShot](https://raw.githubusercontent.com/Diaob/minimal/master/pic/Startsup.png)

uname结果：

![ScreenShot](https://raw.githubusercontent.com/Diaob/minimal/master/pic/uname.png)

=====
其它：
原作者网站:  http://minimal.linux-bg.org

教程（英文）: http://minimal.linux-bg.org/the_dao_of_minimal_linux_live.txt

关于我（译者）：
	联系邮箱：diaob#hotmail.com （将#换成@）
	高考刚考完，如果有哪个大学想录取我，可以发录取通知书给我哦
	如果翻译不当，或有错误，请在issue中提出，谢谢！


===   ===   ===

本项目翻译基于https://github.com/ivandavidov/minimal


