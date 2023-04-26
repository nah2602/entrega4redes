# Entrega 4 - Anna Flávia Ferreira Nascimento Gomes

Professora: Edilayne Meneses Salgueiro

### Clonar Git e entrar na pasta
```
git clone https://github.com/
```

```
cd 
```

### Build do docker:
```
docker build -t  .
```
### Executar servidor Docker:
```
docker run -d 
```

### Descobrir o Container ID 
```
docker ps
```

### Testar o cliente
```
docker exec ID python TCPClient.py
```

### Verificar informações de container
```
docker exec -i -t ID /bin/bash
```
