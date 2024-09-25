import 'package:expense_tracker/src/core/utils/typedefs.dart';


/// A usecase class with params where [Type] is the result type
/// and [Params] is the parameters of the [call] function.
abstract class UseCaseWithParams<Type, Params> {
  const UseCaseWithParams();
  ResultFuture<Type> call(Params params);
}

abstract class UseCaseWithoutParams<Type> {
  const UseCaseWithoutParams();

  ResultFuture<Type> call();
}