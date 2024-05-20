import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

enum HttpMethod {
  get,
  post,
  put,
  delete,
}

class BaseService {
  BaseOptions get _options {
    return BaseOptions(
        baseUrl: 'https://659666886bb4ec36ca0287d6.mockapi.io/api/v1/',
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.acceptHeader: 'application/json',
        });
  }

  //Incase if an endpoint needs a trailing slash which is helpful
  String _cleanPath(String path) {
    if (!path.endsWith('/')) {
      return '$path/';
    }

    return path;
  }

  Future<Either<String, Map<String, dynamic>>> _handle(
      {required HttpMethod method,
      required String path,
      Map<String, dynamic> data = const {}}) async {
    try {
      late Response<dynamic> response;
      switch (method) {
        case HttpMethod.get:
          response = await Dio(_options).get(
            _cleanPath(path),
            queryParameters: data,
          );
        case HttpMethod.post:
          response = await Dio(_options).post(
            _cleanPath(path),
            data: data,
          );
        case HttpMethod.put:
          response = await Dio(_options).put(
            _cleanPath(path),
            data: data,
          );
        case HttpMethod.delete:
          response = await Dio(_options).delete(
            _cleanPath(path),
          );
      }

      return right({'data': response.data});
    } catch (e) {
      return left(e.toString());
    }
  }
  //GET
  Future<Either<String, Map<String, dynamic>>> get(
    String path, {
    Map<String, dynamic> data = const {},
  }) {
    return _handle(
      method: HttpMethod.get,
      path: path,
      data: data,
    );
  }

  //POST
   Future<Either<String, Map<String, dynamic>>> post(
    String path, {
    Map<String, dynamic> data = const {},
  }) {
    return _handle(
      method: HttpMethod.post,
      path: path,
      data: data,
    );
  }

  //PUT
   Future<Either<String, Map<String, dynamic>>> put(
    String path, {
    Map<String, dynamic> data = const {},
  }) {
    return _handle(
      method: HttpMethod.put,
      path: path,
      data: data,
    );
  }

  //DELETE
   Future<Either<String, Map<String, dynamic>>> delete(
    String path, {
    Map<String, dynamic> data = const {},
  }) {
    return _handle(
      method: HttpMethod.delete,
      path: path,
    );
  }
}
