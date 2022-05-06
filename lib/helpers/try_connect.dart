import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import 'package:inno_queue/shared/bloc/server_error_bloc/server_error_bloc.dart';
import 'package:provider/src/provider.dart';

Future<Either<bool, Response>> tryConnect(Future<Response> Function() f,
    {bool? isUpdate}) async {
  try {
    return Right(await f());
  } catch (e) {
    if (e is DioError) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout) {
        getIt<ServerErrorBloc>()
            .add(const ServerErrorEvent.connectionTimeout());
      } else if (isUpdate != null && isUpdate == true) {
        getIt<ServerErrorBloc>().add(const ServerErrorEvent.couldNotUpdate());
      } else {
        getIt<ServerErrorBloc>().add(const ServerErrorEvent.serverError());
      }
    }

    return const Left(false);
  }
}

class HandledResponse {
  static Future<Either<bool, Response>> query(Future<Response> Function() f,
      {bool? isUpdate}) async {
    try {
      return Right(await f());
    } catch (e) {
      if (e is DioError) {
        if (e.type == DioErrorType.connectTimeout ||
            e.type == DioErrorType.receiveTimeout) {
          getIt<ServerErrorBloc>()
              .add(const ServerErrorEvent.connectionTimeout());
        } else if (isUpdate != null && isUpdate == true) {
          getIt<ServerErrorBloc>().add(const ServerErrorEvent.couldNotUpdate());
        } else {
          getIt<ServerErrorBloc>().add(const ServerErrorEvent.serverError());
        }
      }

      return const Left(false);
    }
  }
}
