# Instalando projeto laravel com voyager
## 1. criar projeto Laravel
composer create-project laravel/laravel sct
### mudar diretório para a pasta criada
cd sct
## 2. instalar o voyager
composer require tcg/voyager
## configurar conexão com o banco no arquivo .env:
## colocar o DB_CONNECTION para sqlite
DB_CONNECTION=sqlite
## comentar o DB_DATABASE
#DB_DATABASE=laravel

## Criar banco as tabelas do banco com alguns dados
php artisan voyager:install --with-dummy

# Rodar a aplicação
php artisan serve
