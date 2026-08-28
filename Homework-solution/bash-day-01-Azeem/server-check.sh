#!/bin/bash

#Store service name into variable

service_name="$1"


#service="systemctl status $service_name"

#systemctl status $service_name


while true; do
read -r -p "Do you want to check the status of $service_name? (y/n):" EXP
case "$EXP" in

	y|Y|Yes|yes|YES)
#		systemctl status $service_name
		a=$(systemctl is-active $service_name)

		echo "$service_name is $a!"
		exit 0
	;;
	n|N|No|no|NO)
		echo "Skipped!"
		exit 1
#		skipped
	;;
	*)
	echo "Provide a valid service name"
esac
done

