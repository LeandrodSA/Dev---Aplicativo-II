class Pessoa {
  final String nome;
  final String sobreNome;
  final String idade;
  final String endereco;

  Pessoa(
    this.nome,
    this.sobreNome,
    this.idade,
    this.endereco,
  );

  String toString() {
    return 'nome: $nome\nsobrenome: $sobreNome\nidade: $idade\nendereço: $endereco';
  }
}
