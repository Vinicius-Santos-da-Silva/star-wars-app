# Star Wars App
## Este é o repositório do Backend em Ruby on Rails.


Frontend - (https://github.com/Vinicius-Santos-da-Silva/star-wars-app-front)

Star Wars API (https://swapi.dev/)

## Instruções para rodar a aplicação.

- Para instalar as dependências da aplicação.
```sh
bundle install
```

- No arquivo config/database.yml, ajustar as variáveis com relação a configuração do seu banco de dados.

-  No banco de dados, executar o seguinte comando:
```sh
CREATE SCHEMA `swapi_test` DEFAULT CHARACTER SET utf8;
```
-  Para criar as tabelas no BD execute o comando :
```sh
rails db:migrate
```

- Comando CLI do Rails para rodar uma task e consumir a API do SWAPI e salvar no BD. Sendo este um dos requisitos do desafio.
```sh
rake swapi:import
```
