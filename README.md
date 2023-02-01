# dockerportfolioimagerepo
Docker Portfolio Image Repository

git clone https://github.com/amgoit/dockerportfolioimagerepo.git

cd dockerportfolioimagerepo
docker build -t portfolio:v1 ./
docker run -p 80:80 -d --name webserver_portfolio portfolio:v1
docker stop webserver_portfolio
docker rm webserver_portfolio
