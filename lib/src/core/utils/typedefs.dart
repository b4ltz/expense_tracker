import 'package:dartz/dartz.dart';

typedef ResultFuture<T> = Future<Either<Exception,T>>;

typedef ResultFutureVoid = ResultFuture<void>;