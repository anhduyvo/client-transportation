# demo-eshop: 
- angularjs
- nodejs
- mssql

# For run docker command:

# build image	
docker build -t admin/node-api-etherum .	

# attach to container	
docker run -p 8088:3000 -d admin/node-api-etherum	

# print app output	
docker logs [containerid]	

# Enter the container	
docker exec -it <container id> /bin/bash	

# get data
curl -i localhost:3000

docker stop [containerid]	

docker rm [containerid]	

docker rmi [imageid]	


# For run docker-compose:	
- docker-compose up	

rebuild images:	
- docker-compose down	
- docker-compose build	
- docker-compose up	

or rebuild images:	
- docker-compose down	
- docker-compose up --force-recreate