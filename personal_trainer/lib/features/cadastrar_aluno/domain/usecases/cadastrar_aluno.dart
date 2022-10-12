import 'package:equatable/equatable.dart';
import 'package:personal_trainer/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:personal_trainer/core/usecases/usecase.dart';
import 'package:personal_trainer/features/cadastrar_aluno/domain/entities/aluno.dart';
import 'package:personal_trainer/features/cadastrar_aluno/domain/repositories/aluno_repository.dart';

class CadastrarAluno implements UseCase<Aluno, Params> {
  final AlunoRepository repository;

  CadastrarAluno(this.repository);

  @override
  Future<Either<Failure, Aluno>> call(params) async {
    return await repository.cadastrarAluno(params.matricula, params.nome);
  }
}

class Params extends Equatable {
  final int matricula;
  final String nome;

  Params({required this.matricula, required this.nome});

  @override
  List<Object> get props => [matricula, nome];
}
