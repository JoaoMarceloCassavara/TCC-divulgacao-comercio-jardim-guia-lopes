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

O projeto intitulado Janela do produtor foi desenvolvido para o Trabalho de Conclusão de Curso do Instituto Federal de Mato Grosso do Sul (IFMS) Campus Jardim, como exigência parcial para obtenção do título de Técnico em Informática.

Este projeto têm como objetivo a divulgação de produtos oriundos da economia local, intermediando a interação entre consumidores e produtores locais promovendo um canal direto para venda. Permite os produtores locais venderem seus produtos no sistema web de divulgação. O sistema permite o produtor cadastrar sua empresa e cadastrar seus produtos. Já os clientes , facilidade na hora de comprar um produto de seu agrado com produtores e seus produtos naturais.</br>
Documento do Trabalho de conclução de curso (TCC) [Coimbra-e-Cassavara-(2023)_TCC](/docs/Coimbra-e-Cassavara-(2023)_TCC.pdf)

----

## ⚙️ Funcionalidades


- [ ] Os usuários do tipo Empresário (Produtor Local) tem acesso ao menu administrativo, onde podem:
  - [X] Gerenciar sua empresa
  - [X] Gerenciar seus produtos
  - [X] Visualizar as categorias 
  - [X] Visualizar pedidos feito pelos consumidores para sua empresa.
  
- [ ] Os usuários do tipo Atendente tem acesso ao menu administrativo, onde podem:
  - [X] Informar pagamento de pedido.
  - [X] Gerenciar produtos.
  - [X] Atualizar informações das empresas.
  - [X] Adicionar empresas em destaque.
  
- [ ] Os usuários do tipo Padrâo tem acesso ao menu administrativo, onde podem:
  - [X] Avaliar empresa após efetuado pedido.
  - [X] Avaliar os produtos de um pedido efetuado.
  - [X] Visualizar os seus pedidos realizados.

---
## 🚀 Como executar o projeto

### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas: [Git](https://git-scm.com) e [Laravel](https://laravel.com/docs/installation).

Além disto é bom ter um editor para trabalhar com o código como [VSCode](https://code.visualstudio.com/)

### 🎲 Rodando o Projeto 

#### Instalando as dependências
```bash
# Clone este repositório
$ git clone https://github.com/JoaoMarceloCassavara/TCC-divulgacao-comercio-jardim-guia-lopes.git

# Acesse a pasta do projeto no terminal/cmd
$ cd TCC-divulgacao-comercio-jardim-guia-lopes

# Instale as dependências composer
$ composer install

```
#### Configurando o projeto
1. Faça uma cópia do arquivo `.env.example` e renomeie para `.env`:
2. Crie um banco de dados e baixe o arquivo do dump de banco na pasta [database/dump](./database/dump/), baixe o sql de criação do banco mais recente ([backup-latest.sql](./database/dump/backup-latest.sql)).
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
- [PHP](https://www.php.net/)

As seguintes dependências foram incluidas no projeto:
- [Módulo de linguagem Português do Brasil (pt_BR) para Laravel](https://github.com/lucascudo/laravel-pt-BR-localization)
- [Laravel Fortify](https://github.com/laravel/fortify)
- [Laravel UI](https://github.com/laravel/ui)
- [Laravel Legends pt-br-validator](https://github.com/LaravelLegends/pt-br-validator)
- [Voyager](https://voyager.devdojo.com/)
---
## 💪 Como contribuir para o projeto

1. Faça um **fork** do projeto.
2. Crie uma nova branch com as suas alterações: `git checkout -b my-feature`
3. Salve as alterações e crie uma mensagem de commit contando o que você fez: `git commit -m "feature: My new feature"`
4. Envie as suas alterações: `git push origin my-feature`

## 📝 Licença

Este projeto é um software de código aberto licenciado sob a licença [gnu general public license version 3.0 (gplv3)](./LICENSE).
