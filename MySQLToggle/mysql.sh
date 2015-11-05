COUNT=$(ps -ax | grep -c mysql)

echo "<?xml version=\"1.0\"?>"
echo "<items>"
echo $COUNT


if [[ $COUNT == 3 ]]
then
# Turn MySQL On
    echo "<item uid=\"mysql turn on\" arg=\"start\"><title>Turn MySQL On</title><subtitle></subtitle><icon>database-on.png</icon></item>"

else
# Turn MySQL Off
    echo "<item uid=\"mysql turn off\" arg=\"stop\"><title>Turn MySQL Off</title><subtitle></subtitle><icon>database-off.png</icon></item>"

fi

echo "</items>"
