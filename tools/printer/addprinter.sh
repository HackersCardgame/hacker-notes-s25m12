#!/bin/bash
#
#lpadmin -p duplex -v socket://192.168.1.242 -E -m everywhere
#lpadmin -p duplex -v socket://192.168.1.242 -E -m driverless
#


# Helper Function to show first the command that is beeing executed
#==============================================================================
function ShowAndExecute {
#show command
echo -e "
${red}● $1 ${default}"
#execute command
$1
#test if it worked or give an ERROR Message in red, return code of apt is stored in $?
rc=$?; if [[ $rc != 0 ]]; then echo -e ${red}ERROR${default} $rc; fi
}

#==============================================================================
function YESNO {
echo -e -n "
${red}$1 [y/N]${default} "
read -d'' -s -n1 answer
echo
if  [ "$answer" = "y" ] || [ "$answer" = "Y" ]
then
return 0
else
echo -e "
"
return 1
fi
}
#==============================================================================


function deleteAllPrinter {
for printer in $(lpstat -p |awk '{print $2}')
do
  lpadmin -x "$printer"
done

}


if YESNO "delete all printers ???"
then
  ShowAndExecute "deleteAllPrinter"
fi

if YESNO "add new printers ???"
then

cp brups10a.ppd /home/marc/
cp brups10a_gray.ppd /home/marc/

/usr/sbin/lpadmin -p MFC_9480CDN -o PageSize=A4 -v socket://192.168.0.242 -E -i /home/marc/brups10a.ppd
/usr/sbin/lpadmin -p MFC_L8690CDW -o PageSize=A4 -v socket://192.168.0.243 -E -i /home/marc/brups10a.ppd

#/usr/sbin/lpadmin -p MFC_9480CDN.NOcolor -o PageSize=A4 -o Duplex=DuplexNoTumble -v socket://192.168.0.242 -E -i /home/marc/brups10a_gray.ppd
#/usr/sbin/lpadmin -p MFC_L8690CDW.NOcolor -o PageSize=A4 -o Duplex=DuplexNoTumble -v socket://192.168.0.243 -E -i /home/marc/brups10a_gray.ppd

#/usr/sbin/lpadmin -p MFC_9480CDN.duplex -o PageSize=A4 -o Duplex=DuplexNoTumble -v socket://192.168.0.242 -E -i /home/marc/brups10a.ppd
#/usr/sbin/lpadmin -p MFC_L8690CDW.duplex -o PageSize=A4 -o Duplex=DuplexNoTumble -v socket://192.168.0.243 -E -i /home/marc/brups10a.ppd

#/usr/sbin/lpadmin -p MFC_9480CDN.big -o PageSize=A4 -o Duplex=DuplexNoTumble -o scaling=200 -v socket://192.168.0.242 -E -i /home/marc/brups10a.ppd
#/usr/sbin/lpadmin -p MFC_L8690CDW.big -o PageSize=A4 -o Duplex=DuplexNoTumble -o scaling=200 -v socket://192.168.0.243 -E -i /home/marc/brups10a.ppd



fi







echo " OLD : /usr/sbin/lpadmin -p duplexer_new2 -v socket://192.168.0.243 -E -i /home/marc/Brother-MFC-9450CDN-Postscript.ppd"





