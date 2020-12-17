import 'package:json_annotation/json_annotation.dart';

part 'penyerahan.g.dart';

@JsonSerializable()
class Penyerahan {
  String nama_guru_penyerahan;
  String created_at;
  String updated_at;

  Penyerahan({
    this.nama_guru_penyerahan,
    this.created_at,
    this.updated_at,
  });

  factory Penyerahan.fromJson(Map<String, dynamic> json) =>
      _$PenyerahanFromJson(json);

  Map<String, dynamic> toJson() => _$PenyerahanToJson(this);

  @override
  String toString() => toJson().toString();
}
