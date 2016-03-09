clear

echo "==================================="
echo "Building  PostgreSQL"
echo "==================================="

docker stop postgre
docker rm postgre

docker run -d -p 5432:5432 --name postgre -e POSTGRES_PASSWORD=postgres postgres:9.3.11

echo "==================================="
echo "DONE"
echo "==================================="
