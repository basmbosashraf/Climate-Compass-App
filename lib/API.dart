import 'package:dio/dio.dart';

class ApiRepo {
   Dio _dio = Dio();
   late String url;
   late Map<String, dynamic> payload;

   ApiRepo({required this.url, required this.payload});

   void getData({
      required Function() beforeSend,
      required Function(dynamic data) onSuccess,
      required Function(dynamic error) onError,
   }) {
      beforeSend();
      _dio.get(url, queryParameters: payload).then((response) {
         onSuccess(response.data);
      }).catchError((error) {
         onError(error);
      });
   }
}
