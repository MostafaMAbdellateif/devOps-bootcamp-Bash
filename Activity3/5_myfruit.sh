#!/bin/bash

# 5. Write a script called myfruit, using the case and select utility to list fruit option (apple, banana and kiwi):
    # -if select apple option, list another three options for me (red, yellow, green) and after selection return to first list.
    # -if select banana option, list another two options for me (yellow, green) and after selection return to first list.
    # -Break the script when select quit option

echo "Please enter your favourite fruit from this list"

options=("Apple" "Banana" "Kiwi" "Quit")
apple_colors=("Red" "Yellow" "Green")
banana_colors=("Yellow" "Green")
select fruit in ${options[@]}; 
do
    case ${fruit} in
        Apple)
            echo "Please enter your favourite apple color"
            select color in ${apple_colors[@]}; do
                case $color in
                    Red)
                        echo "You have selected the Red Apple"
                        break
                        ;;   
                    Yellow)
                        echo "You have selected the Yellow Apple"
                        break
                        ;;
                    Green)
                        echo "You have selected the Green Apple"
                        break
                        ;;
                    *)
                        echo "Please select one of the ${#apple_colors[@]} colors listed above"
                        ;;
                esac
            done
            ;;

        Banana)
            echo "Please enter your favourite banana color"
            select color in ${banana_colors[@]}; do
                case $color in
                    Green)
                        echo "You have selected the Green Banana"
                        break
                        ;;                    
                    Yellow)
                        echo "You have selected the Yellow Banana"
                        break
                        ;;
                    *)
                        echo "Please select one of the ${#banana_colors[@]} colors listed above"
                        ;;
                esac
            done
            ;;

        Kiwi)
            echo "You have selected Kiwi"
            ;;

        Quit)
            echo "Goodbye!"
            break
            ;;

        *)
            echo "Please select one of the ${#options[@]} options listed above"
            ;;
    esac
done