#Creates a new secret from Standard Input

printf "{ \"ConnString\" : \"DataSource=dataSourceStdIn;User=userId;Password=password\" }" | docker secret create connStringFromStdIn -
