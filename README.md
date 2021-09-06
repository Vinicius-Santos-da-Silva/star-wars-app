# star-wars-app

1. bundle install
2. No arquivo config/database.yml, ajustar as variáveis com relação a configuração do seu banco de dados.
3. No banco de dados, executar o seguinte comando: CREATE SCHEMA `swapi_test` DEFAULT CHARACTER SET utf8;
4. rails db:migrate ,para criar as tabelas no BD.
5. rake swapi:import , para consumir a API do SWAPI e salvar no BD.