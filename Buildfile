docker build -t myflix .
docker tag myflix dwlferrier/myflix
docker push dwlferrier/myflix
docker stop myflix
docker rm myflix
docker run -p 80:5000 -d --name myflix dwlferrier/myflix
