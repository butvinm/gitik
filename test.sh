#!/bin/bash

mkdir -p test_tmp
rm -rf test_tmp/* test_tmp/.gitik
cd test_tmp

echo "Hello" > hello.txt
mkdir uwu
echo "world" > uwu/world.txt
echo "nya" > uwu/nya.txt

#
echo "../gitik/help.sh" && ../gitik/help.sh

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
