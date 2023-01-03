import 'package:dartz/dartz.dart';
import 'package:flutter/rendering.dart';

import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import '../models/user_model.dart';

abstract class RegisterRemoteDataSource {
  Future<Either<Failure, User>> registerUser({required User user});
  Future<Either<Failure, User>> registerUserWithGoogle();
  Future<Either<Failure, User>> registerUserWithFacebook();
}

class RegisterRemoteDataSourceImpl implements RegisterRemoteDataSource {
  final Request request = serviceLocator<Request>();

  // normal register
  @override
  Future<Either<Failure, User>> registerUser({required User user}) async {
    try {
      final response = await request.post(
        '/auth/register',
        data: user.toJson(),
      );
      if (response.statusCode == 200) {
        return Right(User.fromJson(response.data));
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        Exception('Exception Occured in RegisterRemoteDataSourceImpl'),
      );
    }
  }

  // google register
  @override
  Future<Either<Failure, User>> registerUserWithGoogle() async {
    try {
      final response = await request.post(
        '/auth/google',
      );
      if (response.statusCode == 200) {
        return Right(User.fromJson(response.data));
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        Exception('Exception Occured in RegisterRemoteDataSourceImpl'),
      );
    }
  }

  // facebook register
  @override
  Future<Either<Failure, User>> registerUserWithFacebook() async {
    try {
      final response = await request.post(
        '/auth/facebook',
      );
      if (response.statusCode == 200) {
        return Right(User.fromJson(response.data));
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        Exception('Exception Occured in RegisterRemoteDataSourceImpl'),
      );
    }
  }
}
