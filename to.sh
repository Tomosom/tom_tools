#export PATH=/home/book/opensource:$PATH
#alias t='. to.sh'

if [ $1 != "a" ] && [ $1 != "b" ] && [ $1 != "c" ]
then
	echo "wrong usage"
	exit
fi

if [[ $PWD =~ ^/home/book/._codehub.* ]]
then
	:
else
	echo "wrong path"
	exit
fi

var=${PWD#/home/book/*_codehub}
var="/home/book/$1_codehub$var"
echo $var
cd $var
