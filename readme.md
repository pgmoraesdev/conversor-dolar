# 2TDSPR - FIAP
RM568580- Paulo Gustavo Moraes de Sousa
RM566621 - Luana Alves de Oliveira
RM566603 - Isabely Marques da Silva
RM566630 - Mateus Ribeiro de Azevedo

# Conversor de Real para Dólar 💵

Projeto simples desenvolvido em Flutter para converter valores de reais (BRL) para dólares (USD).

## Funcionalidades

- Inserir um valor em reais.
- Converter o valor para dólares ao clicar no botão **Calcular**.
- Exibir o resultado da conversão na tela.

## Como funciona?

O usuário informa o valor em reais no campo de texto e clica em **Calcular**. O aplicativo divide o valor informado pela cotação do dólar definida no código, atualmente em R$ 5,60, e exibe o resultado em dólares.

## Tecnologias utilizadas

- Flutter
- Dart
- Material Design

## Conceitos praticados

- `StatefulWidget` e `setState()` para atualizar o resultado na tela.
- `TextField` para receber o valor digitado.
- Funções para realizar o cálculo da conversão.
- `ElevatedButton` para executar a conversão.

## Como executar

1. Instale o Flutter.
2. Clone ou baixe este repositório.
3. Execute `flutter pub get`.
4. Execute `flutter run`.

## Observação

A cotação do dólar é fixa e definida diretamente no código, não sendo atualizada automaticamente.