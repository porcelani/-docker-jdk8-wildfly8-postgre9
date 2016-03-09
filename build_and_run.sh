clear

echo "==================================="
echo "Stoping containers"
echo "==================================="
docker stop postgres-container
docker stop wildfly-container

echo "==================================="
echo "Removing containers"
echo "==================================="
docker rm postgres-container
docker rm wildfly-container

echo "==================================="
echo "Removing images"
echo "==================================="
docker rmi porcelani/jdk8-wildfly8
docker rmi porcelani/jdk8-wildfly8-war

echo "==================================="
echo "Building images "
echo "==================================="
docker build -t porcelani/jdk8-wildfly8 -f Dockerfile-jdk8-wildfly8 .
docker build -t porcelani/jdk8-wildfly8-war -f Dockerfile-jdk8-wildfly8-war .

echo "==================================="
echo "Docker Compose "
echo "==================================="
docker-compose up
