import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:personal_trainer/features/cadastrar_aluno/domain/repositories/aluno_repository.dart';
import 'package:personal_trainer/features/cadastrar_aluno/domain/usecases/cadastrar_aluno.dart';

class MockAlunoRepository extends Mock implements AlunoRepository {
  void main() {
    CadastrarAluno usecase;
    MockAlunoRepository mockAlunoRepository;

    setUp(() {
      mockAlunoRepository = MockAlunoRepository();
      usecase = CadastrarAluno(mockAlunoRepository);
    });
  }
}
