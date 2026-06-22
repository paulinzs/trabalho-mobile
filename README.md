1. Descrição do Projeto

O projeto Game Catalog é uma aplicação mobile desenvolvida utilizando o framework Flutter e a linguagem Dart.

O sistema foi criado para permitir que usuários visualizem um catálogo de jogos, consultem informações detalhadas sobre cada jogo e naveguem por uma interface moderna e intuitiva.

O aplicativo foi executado e testado através do Android Studio Emulator, simulando o funcionamento em dispositivos Android.

2. Objetivo da Aplicação

O objetivo do sistema é demonstrar conceitos de desenvolvimento mobile utilizando Flutter, incluindo:

Organização de projeto em camadas;
Navegação entre telas;
Consumo de API REST;
Gerenciamento de estado;
Interface responsiva;
Tema claro e escuro (Dark Mode);
Arquitetura escalável para futuras melhorias.
3. Funcionalidades Implementadas
Tela Inicial (Home)

A tela principal apresenta uma lista de jogos obtidos através da API.

Cada jogo exibe:

Imagem (capa);
Nome;
Avaliação (rating).
Tela de Detalhes

Ao clicar em um jogo, o usuário é direcionado para uma tela contendo informações mais detalhadas:

Imagem ampliada;
Nome do jogo;
Avaliação;
Descrição;
Informações adicionais fornecidas pela API.
Tela de Configurações

Foi implementada uma tela de configurações contendo:

Alternância entre modo claro e escuro;
Atualização instantânea do tema da aplicação.
4. Tecnologias Utilizadas
Flutter

Framework utilizado para desenvolvimento multiplataforma.

Dart

Linguagem utilizada pelo Flutter.

Riverpod

Utilizado para gerenciamento de estado da aplicação.

Go Router

Responsável pela navegação entre telas.

Dio

Biblioteca utilizada para realizar requisições HTTP à API.

Android Studio Emulator

Utilizado para execução e testes do aplicativo em ambiente Android virtual.

5. Estrutura do Projeto
lib/
│
├── core/
│   │
│   ├── database/
│   │   └── database_helper.dart
│   │
│   ├── network/
│   │   └── dio_client.dart
│   │
│   ├── router/
│   │   └── app_router.dart
│   │
│   └── providers/
│       └── theme_provider.dart
│
├── features/
│   │
│   └── games/
│       │
│       ├── data/
│       │   │
│       │   ├── models/
│       │   │   └── game_model.dart
│       │   │
│       │   ├── repositories/
│       │   │   └── game_repository.dart
│       │   │
│       │   └── sources/
│       │       └── remote/
│       │           └── game_remote_source.dart
│       │
│       ├── presentation/
│       │   │
│       │   ├── providers/
│       │   │   └── game_provider.dart
│       │   │
│       │   ├── screens/
│       │   │   ├── home_screen.dart
│       │   │   ├── detail_screen.dart
│       │   │   └── settings_screen.dart
│       │   │
│       │   └── widgets/
│       │       └── game_card.dart
│
├── main.dart
6. Explicação da Estrutura
Core

Contém recursos compartilhados por todo o sistema.

database

Responsável por futuras implementações de banco de dados local.

network

Configuração do cliente HTTP utilizando Dio.

router

Centraliza todas as rotas do aplicativo.

providers

Contém os Providers globais, como o controle do tema da aplicação.

Features

Organiza funcionalidades específicas do sistema.

Data

Camada responsável pelos dados.

Models

Representam os objetos utilizados na aplicação.

Exemplo:

GameModel

Representa um jogo retornado pela API.

Repository

Faz a comunicação entre a interface e as fontes de dados.

Remote Source

Responsável por acessar a API externa e recuperar os jogos.

Presentation

Camada responsável pela interface do usuário.

Screens

Contém as telas:

Home
Detalhes
Configurações
Widgets

Componentes reutilizáveis da interface.

Exemplo:

GameCard

Cartão utilizado para exibir cada jogo na lista.

Providers

Controlam o estado da aplicação utilizando Riverpod.

7. Fluxo de Funcionamento

O funcionamento ocorre da seguinte maneira:

Usuário
   ↓
Home Screen
   ↓
Game Provider
   ↓
Repository
   ↓
Remote Source
   ↓
API
   ↓
Retorna lista de jogos
   ↓
Exibe na tela

Quando o usuário toca em um jogo:

Home Screen
   ↓
Seleciona jogo
   ↓
Navegação
   ↓
Detail Screen
   ↓
Exibe informações completas
8. Como Executar o Projeto
Pré-requisitos

Instalar:

Flutter SDK
Android Studio
Android SDK
Emulador Android
Git
Passo 1 – Clonar o Projeto
git clone URL_DO_PROJETO
Passo 2 – Entrar na Pasta
cd game_catalog
Passo 3 – Instalar Dependências
flutter pub get
Passo 4 – Verificar o Flutter
flutter doctor

Corrigir possíveis erros apresentados.

Passo 5 – Abrir o Emulador Android

No Android Studio:

Tools
→ Device Manager
→ Start Emulator

Aguardar o dispositivo virtual iniciar.

Passo 6 – Verificar Dispositivos

No terminal:

flutter devices

Deverá aparecer algo semelhante:

Android SDK built for x86
Passo 7 – Executar o Projeto
flutter run

O Flutter irá compilar o aplicativo e instalar automaticamente no emulador.

9. Atualização Durante o Desenvolvimento
Hot Reload

Atualiza a interface sem reiniciar o aplicativo:

r
Hot Restart

Reinicia a aplicação mantendo o emulador aberto:

R
Limpeza do Projeto

Quando houver problemas de compilação:

flutter clean
flutter pub get
flutter run
10. Resultado Esperado

Ao executar o projeto, o usuário poderá:

Visualizar a lista de jogos.
Consultar informações detalhadas de cada jogo.
Navegar entre as telas.
Alterar entre tema claro e escuro.
Utilizar o aplicativo em ambiente Android através do emulador do Android Studio.
11. Conclusão

A atividade permitiu aplicar conceitos fundamentais de desenvolvimento mobile utilizando Flutter, incluindo arquitetura em camadas, gerenciamento de estado com Riverpod, navegação entre telas com Go Router e consumo de APIs utilizando Dio.

O projeto foi desenvolvido visando organização, escalabilidade e facilidade de manutenção, seguindo boas práticas de desenvolvimento mobile e proporcionando uma experiência de usuário moderna e intuitiva.
