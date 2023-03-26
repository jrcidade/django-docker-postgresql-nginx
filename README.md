# [django-docker-postgresql-nginx
Project Django with docker, postgresql and nginx 

- 👉 Autor: [Jonecy Junior](https://github.com/jrcidade) - `Desenvolvedor Full Stack`
<br />
> Tecnologias usadas: 

- ✅ Framework - [Django](https://www.djangoproject.com/) 
- ✅ Virtual Container - [Docker](https://www.docker.com/)
- ✅ Web Server - [NGINX](https://www.nginx.com/)
- ✅ Python [3.9.0](https://www.python.org/downloads/release/python-390/)

## Preparação do ambiente para a instalação

> 👉 **Passo 1** - Instalação de várias dependências, para receber o `pyenv`

```bash
$ sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev git
```

> 👉 **Passo 2** - Instalar o `Pyenv`

```bash
$ curl https://pyenv.run | bash
```

> 👉 **Passo 3** - Configurar o arquivo: .bashrc

```bash
$ sudo nano .bashrc
```
`Adicionar as seguintes linhas:`
<br />
export PATH="/home/`NOMEDOUSUARIO`/.pyenv/bin:$PATH"
<br />
eval "$(pyenv init --path)"
<br />
eval "$(pyenv virtualenv-init -)"
<br />
<br />
Agora, feche o terminal e abra novamente, e faça um teste usando o comando abaixo:
```bash
$ pyenv
```
> 👉 **Passo 4** - Lista as versões de python disponíveis para instalar
```bash
$ pyenv install -l
```
> 👉 **Passo 5** - Instalar a versão do python do Projeto: 3.9.0
```bash
$ pyenv install 3.9.0
```
> 👉 **Passo 6** - Usar a versão instalada como global
```bash
$ pyenv global 3.9.0
```
<br />

## Instalação do Docker e Docker-Compose

> 👉 [Manual de instalação](https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository)  

<br />

## Baixar o projeto e levantar o sistema no docker-compose:
> 👉 **Passo 1** - Baixar o projeto
```bash
$ git clone git@github.com:jrcidade/django-docker-postgresql-nginx.git
```
> 👉 **Passo 2** - Criar a Virtualenv .venv
```bash
$ python -m venv .venv
```
> 👉 **Passo 3** - Ativar a Virtualenv 
```bash
$ source .venv/bin/activate
```
> 👉 **Passo 4** - Instalar os pacotes do projeto
```bash
$ pip install -r requirements.txt
```
> 👉 **Passo 5** - Levantar e construir o projeto
```bash
$ sudo docker-compose up --build
```
ctrl + c para finalizar
> 👉 **Passo 6** - Executar os contêineres em segundo plano
```bash
$ sudo docker-compose up --d
```
> 👉 **Passo 7** - Python manage.py migrate
```bash
$ sudo docker-compose exec appseed-app python manage.py migrate
```
> 👉 **Passo 8** - Python manage.py createsuperuser
```bash
$ sudo docker-compose exec appseed-app python manage.py createsuperuser
```