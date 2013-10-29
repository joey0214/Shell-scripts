##在自己的github上更新从别处fork过来的代码,假定本地已有git clone了
##学习自 http://blog.csdn.net/do_it__/article/details/7836513
#author：joey

cd ~/zhongxf_data/Biopython-cn-1   ##进入工作目录
git remote add check git@github.com:bigwiv/Biopython-cn.git  ##增加远程分支
git remote -v   ##查看状态
git fetch check  ##把对方最新的代码拉取到本地
git merge check/master  ##合并代码
git push -u origin master  ##把最新代码推送到自己的github上
