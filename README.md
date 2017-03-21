# macaca rawIdentifier注入插件

主要用途是测试人员无法更改源代码，又想通过rawIdentifier来操作元素

## 准备工作

1.准备一台越狱手机

2.安装theos

## 使用方式

1.修改idInject.plist,配置测试app的bundleId

```
{
	Filter = {
		Bundles = (
			"测试app的bundleId",
		);
	};
}
```

2.修改Makefile

- THEOS_DEVICE_IP  #手机的ip地址,等会ssh协议打包安装
- TARGET 指定编译器sdk版本和发布最低版本(latest是你选择xcode的最新sdk,也可以填写8.0)

3.进入目录执行

make && make package && make install


## 特别感谢
[iosHookViewId](https://github.com/Yinxl/iosHookViewId)的作者的分享

