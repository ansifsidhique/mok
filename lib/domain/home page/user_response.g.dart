// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => UserDataResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) =>
    UserDataResponse(
      (json['id'] as num).toInt(),
      json['employee_name'] as String,
      (json['employee_salary'] as num).toInt(),
      (json['employee_age'] as num).toInt(),
    );

Map<String, dynamic> _$UserDataResponseToJson(UserDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_name': instance.employeeName,
      'employee_salary': instance.employeeSalary,
      'employee_age': instance.age,
    };

UserSupportResponse _$UserSupportResponseFromJson(Map<String, dynamic> json) =>
    UserSupportResponse(
      json['url'] as String,
      json['text'] as String,
    );

Map<String, dynamic> _$UserSupportResponseToJson(
        UserSupportResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'text': instance.text,
    };
