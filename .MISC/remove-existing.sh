stuff=(\
	.bashrc \
	.bash_profile \
	.zshrc \
	flunkybob
	)
	

for i in ${stuff[@]}; do
	if [ -f ../${i} ]
	then
		echo "Delete $i"
	else
		echo "$i does not exist"
	fi
done
