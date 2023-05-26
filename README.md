# Janela do Produtor: E-commerce para Agricultura Familiar
### Projeto de divulgação de comercios locais

<p align="center">
 <a href="#-sobre-o-projeto">Sobre</a> •
 <a href="#-funcionalidades">Funcionalidades</a> •
 <a href="#-como-executar-o-projeto">Como executar</a> • 
 <a href="#-tecnologias">Tecnologias</a> •  
 <a href="#user-content--licença">Licença</a>
</p>

## 💻 Sobre o projeto

Na Janela do produtor, permite os produtores locais venderem seus produtos no sistema web de divulgação. O sistema permite o produtor cadastrar sua empresa e cadastrar seus produtos. Já os clientes , facilidade na hora de comprar um produto de seu agrado com produtores e seus produtos naturais.

----

## ⚙️ Funcionalidades


- [ ] Os usuários Empresários tem acesso ao menu administrativo, onde podem:
  - [ ] gerenciar sua empresa
  - [ ] gerenciar seus produtos
  - [ ] visualizar as categorias 
  - [ ] e visualizar os seus pedidos e pedidos para empresa do usuário.
  
- [ ] Os usuários Atendente tem acesso ao menu administrativo, onde podem:
  - [ ] efetuar pagamento.
  - [ ] gerenciar produtos.
  - [ ] atualizar as empresas(editar).
  
- [ ] Os usuários normais tem acesso ao menu administrativo, onde podem:
  - [ ] gerenciar suas avaliações das empresas.
  - [ ] gerenciar suas avaliações dos produtos.
  - [ ] visualizar os pedidos realizado pelo usuario.

---
## 🚀 Como executar o projeto

### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas: [Git](https://git-scm.com), [Laravel](https://laravel.com/docs/8.x/installation) e [Node.js](https://nodejs.org/en/).

Além disto é bom ter um editor para trabalhar com o código como [VSCode](https://code.visualstudio.com/)
### 🎲 Rodando o Projeto 

#### Instalando as dependências
```bash
# Clone este repositório
$ git clone <https://github.com/JoaoMarceloCassavara/TCC-divulgacao-comercio-jardim-guia-lopes.git>

# Acesse a pasta do projeto no terminal/cmd
$ cd TCC-divulgacao-comercio-jardim-guia-lopes

# Instale as dependências composer
$ composer install

# Instale as dependências npm (frontend)
$ npm install && npm run dev
```
#### Configurando o projeto
1. Faça uma cópia do arquivo `.env.example` e renomeie para `.env`:
2. Crie um banco de dados ou baixe o banco `cd database` e `cd dumb`, abaixe o banco com a data mais recente.
> Sugestão MariaDB ou MySQL: definição de collation: **utf8mb4_general_ci**

1. Configure a conexão com os dados do banco de dados no arquivo `.env`:
```php  
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=NOMEDOBANCO
    DB_USERNAME=USUARIO
    DB_PASSWORD=SENHA
```
#### Rodando o servidor
```bash    
# Criação de nova chave de criptografia da aplicação:
php artisan key:generate
    
# Criação das tabelas e inserção dos dados no banco de dados:
php artisan migrate:fresh --force --seed

# Execute a aplicação em modo de desenvolvimento
php artisan serve

# O servidor iniciará na porta:8000 - acesse <http://localhost:8000>
```

### 🎲 Acesso ao Projeto (servidor)
Acesso à área pública da aplicação:
> **URL:** http://domínio/

Acesso à área privada da aplicação:
> **URL:** http://domínio/admin <br/> 

**Criar usuário pelo terminal usando tinker:**
```bash
# Executar o tinker
php artisan tinker

# No tinker: 
>>> $user = new \App\Models\User;
>>> $user->email = 'admin@admin.com';
>>> $user->password = Hash::make('senha'); # altere 'senha' para uma senha forte
>>> $user->name = 'Nome do Administrator';
>>> $user->save();
>>> exit() # sair do tinker
```
---
## 🛠 Tecnologias

As seguintes ferramentas foram usadas na construção do projeto:

- [Laravel](https://laravel.com/docs)
- [Bootstrap](https://getbootstrap.com/)
- [PHP]()

As seguintes dependências foram incluidas no projeto:
- [Módulo de linguagem Português do Brasil (pt_BR) para Laravel](https://github.com/lucascudo/laravel-pt-BR-localization)
- [Laravel Fortify](https://github.com/laravel/fortify)
- [Laravel Permission](https://github.com/spatie/laravel-permission)
- [Laravel UI](https://github.com/laravel/ui)
- [Composer]()
- [Voyager]()
---
## 💪 Como contribuir para o projeto

1. Faça um **fork** do projeto.
2. Crie uma nova branch com as suas alterações: `git checkout -b my-feature`
3. Salve as alterações e crie uma mensagem de commit contando o que você fez: `git commit -m "feature: My new feature"`
4. Envie as suas alterações: `git push origin my-feature`

## 📝 Licença

Este projeto é um software de código aberto licenciado sob a licença [gnu general public license version 3.0 (gplv3)](./LICENSE).
