#!\bin\bash
#runs coolgpus


cd /usr/local/bin

echo running GPU fans at 99 speed 

sudo ./coolgpus --speed 99 99 &

echo "coolgpus enabled - executing GPU_Burn_Test.sh"
sleep 1


sudo bash GPU_Burn_Test.sh
