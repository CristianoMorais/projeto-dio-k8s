echo "Criando as imagens ...."

docker build -t cristianomorais/projeto-dio-backend:1.0 backend/.
docker build -t cristianomorais/projeto-dio-database:1.0 database/.


echo "Realizando push das imagens ....."

docker push cristianomorais/projeto-dio-backend:1.0
docker push cristianomorais/projeto-dio-database:1.0

echo "Criando serviços"

kubectl apply -f ./services.yml

echo "Criando deployments"

kubetcl apply -f ./deployments.yml

