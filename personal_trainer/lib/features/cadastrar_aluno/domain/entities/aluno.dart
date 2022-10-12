import 'package:equatable/equatable.dart';

class Aluno extends Equatable {
  final int matricula;
  final String nome;
  final DateTime dataNascimento;
  final double peso;
  final double altura;
  final String telefone;
  final String email;
  final String objetivosIniciais;

  @override
  List<Object> get props {
    return [
      matricula,
      nome,
      dataNascimento,
      peso,
      altura,
      telefone,
      email,
      objetivosIniciais,
    ];
  }

  const Aluno(
      {required this.matricula,
      required this.nome,
      required this.dataNascimento,
      required this.peso,
      required this.altura,
      required this.telefone,
      required this.email,
      required this.objetivosIniciais})
      : super();
}
