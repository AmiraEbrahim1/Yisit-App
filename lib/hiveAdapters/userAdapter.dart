import 'package:hive/hive.dart';
part 'userAdapter.g.dart';
@HiveType(typeId:1)
class HiveUserModel{
  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? createdAt;
  @HiveField(2)
  String? updatedAt;
  @HiveField(3)
  String? email;
  @HiveField(4)
  String? mobile;
  @HiveField(5)
  String? password;
  @HiveField(6)
  String? role;
  @HiveField(7)
  int? monthlyRank;
  @HiveField(8)
  int? seasonalRank;
  @HiveField(9)
  String? plan;
  @HiveField(10)
  bool? active;
  @HiveField(11)
  String? parentName;
  @HiveField(12)
  String? studentName;
  @HiveField(13)
  bool? verified;

  HiveUserModel(
      {this.uuid,
        this.createdAt,
        this.updatedAt,
        this.email,
        this.mobile,
        this.password,
        this.role,
        this.monthlyRank,
        this.seasonalRank,
        this.plan,
        this.active,
        this.parentName,
        this.studentName,
        this.verified});

  HiveUserModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    email = json['email'];
    mobile = json['mobile'];
    password = json['password'];
    role = json['role'];
    monthlyRank = json['monthly_rank'];
    seasonalRank = json['seasonal_rank'];
    plan = json['plan'];
    active = json['active'];
    parentName = json['parent_name'];
    studentName = json['student_name'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    data['role'] = this.role;
    data['monthly_rank'] = this.monthlyRank;
    data['seasonal_rank'] = this.seasonalRank;
    data['plan'] = this.plan;
    data['active'] = this.active;
    data['parent_name'] = this.parentName;
    data['student_name'] = this.studentName;
    data['verified'] = this.verified;
    return data;
  }
}