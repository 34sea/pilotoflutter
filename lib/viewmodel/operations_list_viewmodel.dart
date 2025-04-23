// import 'dart:convert';

// import 'package:yard_flow/model/operation_list_model.dart';
// import 'package:http/http.dart' as http;

// class OperationsListViewmodel {
//   Future<List<OperationListModel>> fetchMoves(String startDateTime,
//       String endDateTime, String equipmentCode, String token) async {
//     try {
//       // final url = 'http://10.0.8.29:8004/api/move/moves?startDateTime=2025-04-16T00:00:00Z&endDateTime=2025-04-21T14:00:00Z';
//       final uri = Uri.parse("http://10.0.8.14:8004/api/move/moves")
//           .replace(queryParameters: {
//         'startDateTime': "2025-04-16T00:00:00Z",
//         'endDateTime': "2025-04-21T14:00:00Z",
//         'equipmentCode': equipmentCode
//       });

//       final response = await http.get(
//         uri,
//         headers: {
//           'Authorization': 'Bearer $token',
//           'Content-Type': 'application/json',
//         },
//       );

//       if (response.statusCode == 200) {
//         final List data = json.decode(response.body);
//         return data.map((e) => OperationListModel.fromJson(e)).toList();
//       } else {
//         throw Exception("Erro ${response.statusCode}: ${response.body}");
//       }
//     } catch (e) {
//       print("Erro na requisição: $e");
//       rethrow;
//     }
//   }
// }

// /*
// Type =>
// Container => 
// From => 
// to =>

// */
