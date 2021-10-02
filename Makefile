all			:
				mkdir -p ${HOME}/data/mysql
				mkdir -p ${HOME}/data/wordpress
				cat /etc/hosts | grep hsaadaou.42.fr ||  echo '127.0.0.1 hsaadaou.42.fr' | sudo tee -a /etc/hosts
				cd srcs && docker-compose up --build -d

clean		:
				cd srcs && docker-compose down

rm_ctnrs	:
				docker container rm nginx ; true
				docker container rm wordpress ; true
				docker container rm mysql ; true
				docker container rm adminer ; true

rm_volumes	:
				docker volume rm srcs_mysql ; true
				docker volume rm srcs_wp ; true
				sudo rm -rf ${HOME}/data

rm_images	:
				docker image rm hsaadaou/nginx ; true
				docker image rm hsaadaou/wordpress ; true
				docker image rm hsaadaou/mysql ; true
				docker image rm hsaadaou/adminer ; true
				docker image rm hsaadaou/alpine_base ; true

fclean		:	clean rm_ctnrs rm_volumes rm_images


re			:	fclean all

.PHONY		:	all clean fclean re rm_volumes rm_images rm_ctnrs
