The backend Dockerfile is created in the lib_catalog folder.

Command to create a network: docker network create epam_homework
Command to build container with backend:

docker build -t backend --network epam_homework .

Command to start container with backend:

docker run -d -p 8000:8000 --name backend_django -e DATABASE_HOST=database --network epam_homework backend

The command to start a container with postgresql is in the file: postgres_docker.
