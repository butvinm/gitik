#!/bin/bash
echo "Preparing test directory..."

mkdir -p test_tmp
rm -rf test_tmp/* test_tmp/.gitik
cd test_tmp

echo "Hello" > hello.txt
mkdir uwu
echo "world" > uwu/world.txt
echo "nya" > uwu/nya.txt

#
echo ""
echo "Testing gitik/help.sh..."
../gitik/help.sh

#
echo ""
echo "Testing gitik/init.sh..."
../gitik/init.sh << EOF
Mikhail
butvinm@ya.ru
Omsk
EOF

#
echo ""
echo "Testing gitik/wtf.sh..."
touch new_file_0
touch new_file_1
rm hello.txt
rm uwu/world.txt
echo "nya :3" > uwu/nya.txt
../gitik/wtf.sh


#
echo ""
echo "Testing gitik/incest.sh..."
../gitik/incest.sh
../gitik/wtf.sh
