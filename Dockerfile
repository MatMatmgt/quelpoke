FROM debian
RUN apt update  			                    
RUN apt install -y nginx 		                  
COPY index.html /var/lib/nginx/html/	        
ENTRYPOINT ["nginx", "-g", "daemon off;"]		                    
