# Entrega 4 - Anna Flávia Ferreira Nascimento Gomes

Professora: Edilayne Meneses Salgueiro

### Clonar Git e entrar na pasta
```
git clone https://github.com/nah2602/entrega4redes/
```

```
cd entrega4redes
```

### Build do docker:
```
docker build -t  streamingradio .
```
### Executar servidor Docker:
```
docker run -d streamingradio
```
###  Criação do  container
```
docker run -d -p 12005:12000 -it --rm --name streamingradioc streamingradio
```
### Descobrir o Container ID 
```
docker ps
```

### Testar o cliente
```
docker exec b64472260fd9 python TCPClient.py
```

### Verificar informações de container
```
docker exec -i -t b64472260fd9 /bin/bash
```
