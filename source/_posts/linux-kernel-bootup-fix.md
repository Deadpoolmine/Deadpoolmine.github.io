---
title: Linux内核启动修复
date: 2025-5-19 10:43:29
categories: 
- 杂记
tags: [博客]
keywords: Linux Kernel 启动 修复
---

## 1. 问题

如下，奇奇怪怪的报错，没有找到root device，这个kernel是vmlinuz-6.1.56+

![Kernel启动报错](/images/blogs/linux-kernel-bootup-fix/linux-kernel-bootup-fix.png)

## 2. 解决方案

找一个能跑的kernel，用grub起来

```shell
cd /boot
sudo dracut --force initrd.img-6.1.56+ 6.1.56+
```

需要注意两个点：
- 上述的通用规则是要启动的kernel是vmlinuz-xxx，则`dracut`命令就是`sudo dracut --force initrd.img-xxx xxx`
- `initrd.img`并不一定是通用的命名规则，比如，有些发行版是`initramfs-xxx`，这要通过观察`/boot`目录下的文件结构来确认


OK，从现在开始就可以起飞了🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫🛫