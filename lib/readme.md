# Guida conversione Modelli AST in protobuf (e viceversa)

Al fine di semplificare i messaggi di comunicazione dal wrapper delle api ai vari
frontend del linguaggio, si è deciso di utilizzare un formato il Protobuf per lo scaambio di dati.

Protobuf è un formato di serializzazione binaria sviluppato da Google e utilizzato
per la comunicazione tra sistemi distribuiti. Il formato è progettato per essere
più efficiente, più semplice e più piccolo di XML e Json.

Per visualizzare i modelli protobuf andare nella cartella `dart2kotlin_protocol/protocol`

Affinché sia possibile gestire il polimorfismo i messaggi che si riferiscono a classi padri generiche 
(AstObject, Node, Statement, Expression) vengono generati delli oggetti di tipo protobuf con 
tante property quante sono le possibili classi figlie. Per questo è necessario prima di tutto creare 
delle funzioni o metodi di estensioni capaci di convertire dall'ast al corrispettivo in protobuf e poi 
assegnarlo alla property corretta.

Per la lettura invece, è necessario leggere tutta la classe padre e capire quale attributo è stato 
valorizzato per poter convertire correttamente il modello protobuf in ast.