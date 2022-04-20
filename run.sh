docker run -d  -p 5000:5000 --name server fl-server
docker run -d -e SERVER_URL="http://172.17.0.2:5000" -e CLIENT_URL="http://172.17.0.3:5000" --name client1 -v $(pwd)/chest_xray:/federated-learning-network/datasets fl-client
docker run -d -e SERVER_URL="http://172.17.0.2:5000" -e CLIENT_URL="http://172.17.0.4:5000" --name client2 -v $(pwd)/chest_xray:/federated-learning-network/datasets fl-client
docker run -d -e SERVER_URL="http://172.17.0.2:5000" -e CLIENT_URL="http://172.17.0.5:5000" --name client3 -v $(pwd)/chest_xray:/federated-learning-network/datasets fl-client
docker run -d -e SERVER_URL="http://172.17.0.2:5000" -e CLIENT_URL="http://172.17.0.6:5000" --name client4 -v $(pwd)/chest_xray:/federated-learning-network/datasets fl-client
