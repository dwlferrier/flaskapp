docker build -t flaskapp .
docker tag flaskapp dwlferrier/myflix:flaskapp
docker push dwlferrier/myflix:flaskapp
docker stop flaskapp
docker rm flaskapp
docker run -p 8080:5000 -d --name flaskapp dwlferrier/myflix:flaskapp
