#!/bin/bash

#6. Design a script using the case and select utility to list some countries 
#   and when we select a country it print the language of that country.

echo "please select one of these countries"
countries=("Egypt" "Netherlands" "UK" "Germany" "USA" "Quit")
select country in ${countries[@]}
do
    case ${country} in 
        UK | USA )
            echo "$country language is English"
            ;;

        Netherlands)
            echo "$country language is Dutch"
            ;;

        Germany)
            echo "$country language is German"
            ;;

        Egypt)
            echo "$country language is Arabic"
            ;;
        
        Quit)
            echo "Goodbye!"
            break
            ;;
        
        *)
            echo "Please select one of the ${#countries[@]} options listed above"
            ;;
    esac
done