Part 1:
# Pull the Images
docker pull prom/prometheus:v2.22.0   
docker pull infracloudio/csvserver:latest

# Run the container image in the Detach mode & check the status also check for the log details if any
docker run -d infracloudio/csvserver:latest  
docker ps -a                                 
docker logs 30bc5c9979a4 


# Run the container again in the background with file generated                   
docker run -d -v /root/assignment/csvserver/solution/inputFile:/csvserver/inputdata infracloudio/csvserver

# Get shell access to the container and find the port on which the application is listening.Once done, stop / delete the running container.
docker exec -lt inspiring_kilby /bin/bash
netstat -tulpn
docker container stop 540eb77a98fe

# Run the Docker Container again with port forwording & set the Env Variable CSVSERVER_BORDER=Orange
docker run -d -p 9393:9300 -v /root/assignment/csvserver/solution/inputFile:/csvserver/inputdata infracloudio/csvserver

docker run -d -p 9393:9300 -e CSVSERVER_BORDER=Orange -v /root/assignment/csvserver/solution/inputFile:/csvserver/inputdata infracloudio/csvserver

Part 2:

#Run the Container using docker-compose as below

docker-compose up -d


Part 3:

#Run the Container using docker-compose as below

docker-compose up -d

