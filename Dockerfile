From debian  			                            #Librairies debian systeme 
RUN apt install -y nginx 		                  #Moteur applicatif 
COPY index.html /var/lib/nginx/html/	        # copie de l'application 
ENTRYPOINT ["nginx -f"]		                    #Instruction de démarrage 
