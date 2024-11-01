import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rahul_test_file/domain/entities/post_model.dart';


part 'get_post_response.freezed.dart';
part 'get_post_response.g.dart';

@freezed
class GetUserResponse with _$GetUserResponse {
  const factory GetUserResponse({
    final int? page,
    final int? perPage,
    final int? total,
    final int? totalPages,
    final List<PostModel>? data,
  }) = _GetUserResponse;

  factory GetUserResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserResponseFromJson(json);
}
