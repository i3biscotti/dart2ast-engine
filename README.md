# Dart Language Frontend Engine

Modulo che supporta le specifiche del linguaggio Dart e sfrutta [un protocollo dedicato]( dart2kotlin_protocol/README.md) per la comunicazione all'interno dell'applicazione.

## Componenti principali

- Dart Frog HTTP Server
- Protobuf
- ANTLR 4

## Come aggiornare le classi Protobuf

```shell
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/request.proto
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/response.proto
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/base.proto
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/position.proto
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/expressions.proto
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/statements.proto
```
