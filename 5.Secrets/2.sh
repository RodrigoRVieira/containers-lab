#Creates a new secret from file

echo "{ \"ConnString\" : \"DataSource=dataSourceFile;User=userId;Password=password\" }" > connString.json

docker secret create connStringFromFile connString.json
