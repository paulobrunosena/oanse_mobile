# Etapa 1: Construção da aplicação Flutter
FROM debian:buster-slim AS build-env

# Instalar dependências necessárias
RUN apt-get update && apt-get install -y curl git unzip

# Definir variáveis para o Flutter
ARG FLUTTER_SDK=/usr/local/flutter
ARG FLUTTER_VERSION=3.24.3
ARG APP=/app/

# Clonar o repositório do Flutter e fazer checkout da versão específica
RUN git clone https://github.com/flutter/flutter.git $FLUTTER_SDK \
    && cd $FLUTTER_SDK \
    && git fetch \
    && git checkout $FLUTTER_VERSION

# Adicionar o Flutter e Dart SDK ao PATH
ENV PATH="$FLUTTER_SDK/bin:$FLUTTER_SDK/bin/cache/dart-sdk/bin:${PATH}"

# Verificar se o Flutter foi instalado corretamente
RUN flutter doctor -v

# Criar diretório de trabalho e copiar o código da aplicação
RUN mkdir $APP
COPY . $APP
WORKDIR $APP

# Limpar, baixar dependências e construir a aplicação
RUN flutter clean && flutter pub get && dart run build_runner build --delete-conflicting-outputs && flutter build web

# Etapa 2: Servir a aplicação com nginx
FROM nginx:alpine

# Copiar os arquivos de build do Flutter para o diretório de nginx
COPY --from=build-env /app/build/web /usr/share/nginx/html

# Expor a porta 80 e rodar o nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
