#!/bin/bash

mkdir -p test_tmp
rm -rf test_tmp/* test_tmp/.gitik test_tmp/.чс
cd test_tmp

echo "Hello" > hello.txt
echo "baka" > baka.txt
echo "baka.txt" > .чс
mkdir uwu
echo "world" > uwu/world.txt
echo "nya" > uwu/nya.txt

#
echo "../gitik/skill_issue.sh" && ../gitik/skill_issue.sh

#
echo ""
echo "../gitik/init.sh" && ../gitik/init.sh << EOF
Mikhail
butvinm@ya.ru
Omsk
EOF

#
echo ""
touch new_file_0
touch new_file_1
rm hello.txt
rm uwu/world.txt
echo "nya :3" > uwu/nya.txt

echo "../gitik/wtf.sh" && ../gitik/wtf.sh

#
echo ""
echo "../gitik/incest.sh" && ../gitik/incest.sh
echo "../gitik/wtf.sh" && ../gitik/wtf.sh

#
echo ""
echo "../gitik/breed.sh" && ../gitik/breed.sh
echo "../gitik/breed.sh dev" && ../gitik/breed.sh dev
echo "../gitik/breed.sh dev" && ../gitik/breed.sh dev
echo "../gitik/wtf.sh" && ../gitik/wtf.sh

#
echo ""
echo "../gitik/spy.sh" && ../gitik/spy.sh

#
echo ""
echo "../gitik/metro.sh" && ../gitik/metro.sh

echo ""
echo "../gitik/metro.sh master/0" && ../gitik/metro.sh master/0
echo "../gitik/wtf.sh" && ../gitik/wtf.sh

echo ""
echo "../gitik/metro.sh 1" && ../gitik/metro.sh 1
echo "../gitik/wtf.sh" && ../gitik/wtf.sh

echo ""
echo "../gitik/metro.sh dev" && ../gitik/metro.sh dev
echo "../gitik/wtf.sh" && ../gitik/wtf.sh

#
echo "test" > "test.txt"
echo "../gitik/wtf.sh" && ../gitik/wtf.sh

echo ""
echo "../gitik/pls.sh" && ../gitik/pls.sh

echo ""
echo "../gitik/pls.sh merge master/0 in2 master asap" && ../gitik/pls.sh merge master in2 master asap
echo "../gitik/wtf.sh" && ../gitik/wtf.sh
