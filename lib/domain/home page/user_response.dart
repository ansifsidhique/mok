import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  List<UserDataResponse> data;

  UserResponse({
    this.data = const [],
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}

@JsonSerializable()
class UserDataResponse {
  int id;

  @JsonKey(name: 'employee_name')
  String employeeName;
  @JsonKey(name: 'employee_salary')
  int employeeSalary;

  @JsonKey(name: 'employee_age')
  int age;

  UserDataResponse(
      this.id, this.employeeName, this.employeeSalary, this.age);

  factory UserDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataResponseToJson(this);
}

@JsonSerializable()
class UserSupportResponse {
  String url;
  String text;

  UserSupportResponse(this.url, this.text);

  factory UserSupportResponse.fromJson(Map<String, dynamic> json) =>
      _$UserSupportResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserSupportResponseToJson(this);
}
