
# 第一个参数记为commit 默认update
param=$1

if [[ $param = '' ]]
then
	read -p '输入本次commit注释（默认为update）:' commm
	param=$commm;
	if [[ $param = '' ]]; then
		param='update'
	fi
fi


# 第二个参数记为tag版本，默认0.0.3
param2=$2
if [[ $param2 = '' ]]
then
	read -p '输入本次pod更新版本（默认为0.0.4）:' commm
	param2=$commm;
	if [[ $param2 = '' ]]; then
		param2='0.0.4'
	fi
fi


echo '<<<<提交>>>>'
git status
echo '--添加'
git add -A
echo '--commit'

git commit -m "$param"

if [ "$?" != "0" ]; then
   echo "commit 的时候出问题了😑" 
   exit 1
fi 

echo '--提交'
git push origin 

if [ "$?" != "0" ]; then
   echo "push 的时候出问题了😑" 
   exit 1
fi 


echo '<<<<删除tag>>>>'
# 这里的版本可以由外部传入
git tag --d $param2
git push origin --delete tag $param2

echo '<<<<添加tag>>>>'
git tag -m "$param2" "$param2"
git push origin --tags

echo '<<<<清除pod缓存>>>>'
pod cache clean --all

git log --all --pretty  --graph --date=short

echo "完成! \n提交版本: $param. \npod tag: $param2";



终端插件
https://ohmyz.sh

阿里图标
http://www.iconfont.cn/home/index?spm=a313x.7781069.1998910419.2

Mac 破译软件
http://xclient.info/?t=768a17c4364b08227b83ae6d7954b385c9651c86

系统隐藏显示文件
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder AppleShowAllFiles -bool false


代码提交
git add. 或者 git -all (添加代码)  git add -A
git commit -m “说明可以是中文”
git status  查看提交的代码
git pull origin FZ  拉取远端的代码 看是否有冲突
git push  origin FZ 提交代码


新建分支 上传远端
查看分支：git branch
创建分支：git branch <name>
切换分支：git checkout <name>
创建+切换分支：git checkout -b <name>
上传到远端: git push origin <name>
删除分支：git branch -d <name>

分支合并
git merge DEV_TEST(合并的分支)
git add -A
git push origin DEV

Git tag创建与删除
创建tag：git tag -a 1.0.0 -m "7.27版本1.0.0"
推送所有tag ：git push origin --tags
推送指定tag ：git push origin <版本号>
打印所有标签：git tag          关闭v. or n.   wq
切换指定tag版本：git checkout 1.0.1
删除本地标签： git tag -d 2.0.1
删除远程仓库对应标签
git版本>V1.7.0 ： git push origin —delete 1.0.0
旧版本git :git push origin :refs/tags/1.0.0

/// 删除远程仓库对应标签
// Git版本 > V1.7.0
git push origin --delete 1.0.0
// 旧版本Git
git push origin :refs/tags/1.0.0

// 针对特定commit版本SHA创建标签
git tag -a 1.0.0 0c3b62d -m "这是备注信息"

// 创建轻量标签
git tag 1.0.0-light

# 显示有变更的文件
$ git status

# 显示当前分支的版本历史
$ git log

https://www.cnblogs.com/chenwolong/p/GIT.html


git branch -r  查看分支
git pull  提交代码

git checkout master 切换到 master分支
git checkout -- .
git master

git branch -D 1.20 删除1.20分支

git checkout -b 1.20 origin/1.20 切换到新的1.20分支

cd .git 调到.git
ls 查看列表
ls -1
cat config 打开config文件
cd..


