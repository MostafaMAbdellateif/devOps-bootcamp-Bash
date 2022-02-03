#!/bin/bash

# task: Create a script called s1 that create and calls another script s2 where
#           a. In s1 there is a variable called x, it's value 5?
#           b. Try to print the value of x in s2?

# a
x=5

# b
script_name="2_s2.sh"
touch 2_s2.sh
echo "#!/bin/bash \necho the value of X from s2: \$1" > 2_s2.sh
. ./2_s2.sh $x