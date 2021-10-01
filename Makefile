all			:
				mkdir -p ${HOME}/data/mysql
				mkdir -p ${HOME}/data/wordpress
				docker build srcs/requirements/base_image -t hsaadaou/alpine_base
				cat /etc/hosts | grep hsaadaou.42.fr ||  echo 'hsaadaou.42.fr 127.0.0.1' | sudo tee -a /etc/hosts
				cd srcs && docker-compose up

clean		:
				cd srcs && docker-compose down

fclean		:	clean
				docker volume rm srcs_db
				docker image rm srcs_mysql
				docker image rm srcs_wp

re			:	fclean all

.PHONY		:	all clean fclean re
