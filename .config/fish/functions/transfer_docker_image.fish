function transfer_docker_image
	echo "Transfering image: $argv[1]\n"
 	echo "To host: argv[2]\n"
	docker save $argv[1] | bzip2 | ssh $argv[2] 'bunzip2 | docker load'
end
