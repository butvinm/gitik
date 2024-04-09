echo "Preparing test directory..."

rm -rf test_tmp
mkdir test_tmp
cd test_tmp
echo "Hello" > hello.txt
mkdir uwu
echo "world" > uwu/world.txt

echo "Testing gitik/init.sh..."

../gitik/init.sh << EOF
Mikhail
butvinm@ya.ru
Omsk
EOF
