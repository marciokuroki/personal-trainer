import 'package:dartz/dartz.dart';
import 'package:personal_trainer/core/error/failure.dart';
import 'package:personal_trainer/features/cadastrar_aluno/domain/entities/aluno.dart';

abstract class AlunoRepository {
  Future<Either<Failure, Aluno>> cadastrarAluno(int matricula, String nome);
  Future<Either<Failure, Aluno>> getAluno(int matricula);
  Future<Either<Failure, Aluno>> getAllAluno();
}
