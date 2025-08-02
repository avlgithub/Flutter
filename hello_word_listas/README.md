# 📋 Lista de Pessoas em Flutter 

Este projeto é um exercício prático feito com **Flutter** e **Dart**, com o objetivo de treinar a criação de **interfaces baseadas em listas**.

## 🚀 Funcionalidades

- Exibição de uma lista de objetos `Pessoa`
- Dados mockados diretamente no código (sem dependência de API)
- Layout com `Card` e `ListTile` customizado
- Estrutura modular com widget separado para cada item da lista

## 🧱 Estrutura

- `mock/mock_pessoas.dart`: mock dos dados `Pessoa`
- `models/Pessoa.dart`: modelo da classe `Pessoa`
- `widgets/PessoaListTile.dart`: componente que renderiza o visual de cada item da lista
- `main.dart`: ponto de entrada com `ListView` de pessoas mockadas

## 🧪 Dados de Teste com Faker

Estamos utilizando o pacote [`faker`](https://pub.dev/packages/faker) para gerar dados mock automaticamente (nomes, números, etc.) durante os testes.

📦 Para adicionar o `faker` ao seu projeto, rode no terminal:

```bash
flutter pub add faker
```

## 🛠️ Como rodar o projeto localmente

Após clonar ou baixar o projeto, execute os seguintes comandos no terminal:

```bash
flutter pub get
flutter pub upgrade
```

Em seguida, execute o app com:

```bash
flutter run
```