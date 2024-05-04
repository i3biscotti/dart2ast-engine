# Dart2Ast Engine

```shell
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/request.proto
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/response.proto
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/base.proto
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/position.proto
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/expressions.proto
protoc -I=dart2kotlin_protocol/protocol --dart_out=lib/ast/protocol dart2kotlin_protocol/protocol/statements.proto
```
