# Entrega-04---Lab-de-Redes
# Anna Flávia Ferreira Nascimento Gomes
# Empresa: Streaming de Rádio

## Docker
É criada uma imagem leve com o Dockerfile para que o index.html rode no servidor HTTP simples. A partir do diretório docker-pyserver no servidor ELAN, é adicionada a página index.html da empresa. Em seguida, é configurado o Dockerfile para obter a imagem que executará via container com o comando "run". Dentro do Dockerfile, são inseridas as instruções necessárias para o index.html rodar no servidor HTTP simples do python3. 

````
FROM python:3
WORKDIR /app
COPY index.html .
CMD ["python", "-m", "http.server", "8000"]
EXPOSE 8000

````

Criar e Configurar Dockerfile
````
docker build -f Dockerfile . -t radiostreaming
````
Rodar o container a partir da imagem,  executado como daemon (em background sem estar atrelado a um terminal).
````
docker run -d -p 8030:80 -it --rm --name radiostreaming radiostreaming
````

Assim sendo, foi desenvolvido um servidor HTTP utilizando o comando python, configurado para operar na porta externa 8000, direcionando todo o tráfego para a porta interna 80, a qual é reservada para o serviço TCP HTTP.
## Teste
Para verificar se o contêiner está em execução, é possível usar o comando "docker ps", que exibe os contêineres em execução.
````
docker ps
````
Outra opção seria realizar o download do arquivo 'index.html', presente dentro do contêiner, utilizando o comando 'wget' e o endereço IP local.
````
wget http://127.0.0.1:80
cat index.html
````
