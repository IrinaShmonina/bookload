NAME=$1
if [ "$NAME" == "" ]; then
    NAME="Пьер"
fi
rm -f book1.txt
wget http://vojnaimir.ru/files/book1.txt
echo Количество вхождений \"$NAME\":
rm -f result.txt
touch result.txt
cat book1.txt | iconv -f cp1251 | grep -c $NAME > result.txt
