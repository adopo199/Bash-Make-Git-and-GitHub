#!/usr/env bash

function cantidad {
contF=0
contD=0
for i in *
do

if [[ -f  $i ]]  
then
 let contF+=1
elif [[ -d $i ]]
then 
 let contD+=1
fi  
done

cantidFin=$(( $contF + $contD ))

echo  $cantidFin
}



corec=$( cantidad )
op=0
while [ $op -ne $corec ]
do
 echo " ADIVINA EL NÚMERO ARCHIVOS "
 read -p "Ingrese numero " op
   if [ $op -gt $corec ]
   then 
   echo " el numero ingresado excede a la respuesta correcta "
   elif [ $op -lt $corec ]
   then 
   echo " el numero ingresado el menor a la respuesta correcta "
   else 
    echo " Felicitaciones campeon " 
   fi

done
