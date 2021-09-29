all			:
				docker build srcs/requirements/base_image -t hsaadaou/alpine_base
				cat /etc/hosts | grep hsaadaou.42.fr ||  echo 'hsaadaou.42.fr 127.0.0.1' | sudo tee -a /etc/hosts
				cd srcs && docker-compose up

clean		:
				docker-compose down

fclean		:	clean
				# @rm -f $(NAME)

re			:	fclean all

.PHONY		:	all clean fclean re
