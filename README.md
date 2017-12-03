# ZEDCreatePodModule
## 介绍
该工程存放了ZEDCreatePodModule.sh的脚本文件，用于快速创建组件化时的模板工程，以达到简化组件化的操作，该脚本文件仅针对公有pod,如果有需要弄自己的私有pod可以，可以拿过去改动一下。

## 使用时说明
### 使用步骤一：
首先在Github上面创建一个公开项目,当然你还有其它的可选择，如开源中国，CODING,Bitbucked以及CSDN Code

### 使用步骤二：
将ZEDCreatePodModule.sh  Copy到到想要创建工程的位置，使用终端执行.sh脚本，然后按照里面的提示一步步的做配置，具体步骤如下：

1.执行脚本文件
```sh
./ZEDCreatePodModule.sh
```
2.依次选择对于项目的配置项，首先填入在git上创建的项目名称，然后填入类型，测试等相关项，最后部分填入步骤一中创建的项目git地址与主页,填写完成后会自动生成一个workspace，并且已经配置好远程git,打开workspace,加入自己需要的共享给开发者的文件，修改配置对应的podspec文件即可。

3.配置好pod工程文件之后,执行文件目录下的valideSpec.sh脚本，开始验证spec
```sh
./valideSpec.sh
```

4.push代码到远程
```code
git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/fantastic-peng/pengyueDemo.git(将远端仓库添加到本地repo 其中origin指代远端仓库的名字)
git push -u origin master（这里的origin就是上个命令中的origin，可以自己命名）
```
5.打tag
```code
git  tag  1.0.1
git tag -m 'first release' ‘1.0.1’(打tag时添加注释)
git push -u origin master 1.0.1 (push tag 到远端)
```

6.spec文件验证通过之后，执行文件目录下的upload.sh脚本，将podsepc push 到 master repo
```sh
./upload.sh
```

5.如果在执行.sh时出现权限文件，可以用下面的修改一下即可打开  xattr -rd com.apple.quarantine xxx.sh
```sh
xattr -rd com.apple.quarantine valideSpec.sh
```
