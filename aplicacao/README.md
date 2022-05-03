# Biblioteca Pessoal

Sistema para registro de livros pessoais

### Ruby and Rails version 
- Ruby `3.0.0p0`  
- Rails `7.0.2.3`
- Bundler

## Instruções para utilização
### Pré-requisitos
- Docker
- Docker Compose
- Git

### 1. Realizar clone do repositório
git clone https://github.com/MaiconMares/Trabalho-Individual-2021-2.git

### 2. Fazer build da imagem
```bash
sudo docker-compose build
```
Ou para versões mais recentes do compose:

```bash
sudo docker compose build
```

### 3. Subir os containers

```bash
sudo docker-compose up
```

ou

```bash
sudo docker compose up
```

### 4. Abrir o servidor
Repare que nessa etapa o banco já terá sído criado e migrado. Basta apenas ir no navegador de sua preferência e acessar a url: http://localhost

### Comando alternativos
- Criar banco de dados, rodar migrações e executar seed:
```bash
sudo docker-compose run app rails db:setup
```

ou 

```bash
sudo docker compose run app rails db:setup
```

- Rodar comandos dentro de um container:
Pode ser mais fácil executar comandos separadamente dentro do container, para isto rode:
```bash
sudo docker exec -it <nome-container> bash
```
**Obs.**: Em alguns computadores pessoais pode não ser necessário utilizar sudo se o docker e docker compose já estiverem incluídos em um grupo.

Nome dos containers:
<ol>
  <li>app: container da aplicação</li>
  <li>database: container do banco de dados PostgreSQL</li>
  <li>nginx: container do servidor Nginx</li>
</ol>

### Informações úteis
- Usuário do banco: tesla
- Senha do banco: tesla

**Nota**: Isso se aplica a todos os bancos.
