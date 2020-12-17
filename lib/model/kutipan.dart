import 'package:json_annotation/json_annotation.dart';

part 'kutipan.g.dart';

@JsonSerializable()
class Kutipan {
  String nama_guru_kutipan;
  String created_at;
  String updated_at;

  Kutipan({
    this.nama_guru_kutipan,
    this.created_at,
    this.updated_at,
  });

  factory Kutipan.fromJson(Map<String, dynamic> json) =>
      _$KutipanFromJson(json);

  Map<String, dynamic> toJson() => _$KutipanToJson(this);

  @override
  String toString() => toJson().toString();
}
