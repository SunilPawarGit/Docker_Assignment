build:
	docker build -t mysql-test .
	
run: 
	docker run -itd --name mysql-eg -p 2026:2026 mysql-test

exec:
	docker exec -it mysql-eg /bin/bash	

clean:
	docker stop mysql-eg; docker rm mysql-eg; docker rmi mysql-test


