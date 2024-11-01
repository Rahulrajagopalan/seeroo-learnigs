// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserResponseImpl _$$GetUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserResponseImpl(
      page: (json['page'] as num?)?.toInt(),
      perPage: (json['perPage'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetUserResponseImplToJson(
        _$GetUserResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'total': instance.total,
      'totalPages': instance.totalPages,
      'data': instance.data,
    };
