all			:
				@mkdir -p ${HOME}/data/mysql
				@mkdir -p ${HOME}/data/wordpress
				@sudo chown :1042 ${HOME}/data/mysql
				@sudo chown :1042 ${HOME}/data/wordpress
				@sudo chmod 775 ${HOME}/data/mysql
				@sudo chmod 775 ${HOME}/data/wordpress
				@sudo chmod g+s ${HOME}/data/
				@cat /etc/hosts | grep hsaadaou.42.fr ||  echo '127.0.0.1 hsaadaou.42.fr' | sudo tee -a /etc/hosts
				cd srcs && docker-compose up --build -d

clean		:
				cd srcs && docker-compose down

rm_ctnrs	:
				@docker container rm nginx ; true
				@docker container rm wordpress ; true
				@docker container rm mysql ; true
				@docker container rm adminer ; true
				@docker container rm ftp ; true
				@docker container rm redis ; true
				@docker container rm netdata ; true

rm_volumes	:
				@docker volume rm srcs_mysql ; true
				@docker volume rm srcs_wp ; true
				@sudo rm -rf ${HOME}/data ; true

rm_images	:
				@docker image rm hsaadaou/nginx ; true
				@docker image rm hsaadaou/wordpress ; true
				@docker image rm hsaadaou/mysql ; true
				@docker image rm hsaadaou/adminer ; true
				@docker image rm hsaadaou/ftp ; true
				@docker image rm hsaadaou/redis ; true
				@docker image rm hsaadaou/netdata ; true
				@docker image rm hsaadaou/alpine_base ; true

fclean		:	clean rm_ctnrs rm_volumes rm_images
				cat /etc/hosts | grep hsaadaou.42.fr && sudo sed -i '$d' /etc/hosts


re			:	fclean all

.PHONY		:	all clean fclean re rm_volumes rm_images rm_ctnrs
