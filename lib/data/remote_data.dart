// import 'dart:convert';
// import 'dart:developer';

// import 'package:http/http.dart' as http;
// import 'package:rahul_test_file/domain/core/api_end_points.dart';

// class RemoteData {
//   final http.Client client = http.Client();
//   Future getPosts() async {
//     try {
//       var url = Uri.parse(ApiEndPoints.baseURL);
//       var response = await client.get(url);

//       if (response.statusCode == 200) {
//         var jsonTodis = jsonDecode(response.body);
//       } else {
        
//       }
//     } catch (e) {
//       log("Error was: $e");
//     }
//   }
// }