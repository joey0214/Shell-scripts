#!/bin/bash

# check modeller
cd modeller
if [ -e $*~ ];then
	rm *~
	#echo $(date)
fi
#syntax error:unexpected end of file
timestamp=echo $(date)
git add *
git commit -m timestamp
git push -u origin master
cd ..

#check Perl
cd Perl
if [ -e $*~ ];then
	rm *~
fi
timestamp=echo $(date)
git add *
git commit -m timestamp
git push -u origin master
cd ..

#check R_scripts
cd R_scripts
if [ -e $*~ ];then
	rm *~
fi
timestamp=echo $(date)
git add *
git commit -m timestamp
git push -u origin master
cd ..

#check joey0214.github.com
cd joey0214.github.com
if [ -e $*~ ];then
	rm *~
fi
timestamp=echo $(date)
git add *
git commit -m timestamp
git push -u origin master
cd ..

#check PaperNet  
cd PaperNet
if [ -e $*~ ];then
	rm *~
fi
timestamp=echo $(date)
git add *
git commit -m timestamp
git push -u origin master
cd ..

#check Python
cd Python
if [ -e $*~ ];then
	rm *~
fi
timestamp=echo $(date)
git add *
git commit -m timestamp
git push -u origin master
cd ..

#check Shell-scripts
cd Shell-scripts
if [ -e $*~ ];then
	rm *~
fi
timestamp=echo $(date)
git add *
git commit -m timestamp
git push -u origin master
cd ..