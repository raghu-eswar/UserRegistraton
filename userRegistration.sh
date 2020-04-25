echo "welcome";

echo "enter your first name ";read name;
pattern="^[[:upper:]]{1}[[:lower:]]{2,}$";
if [[ $name =~ $pattern ]]; then
	echo "valid";
else 
	echo "not valid";
fi