import 'package:json_annotation/json_annotation.dart';

part 'penandaan.g.dart';

@JsonSerializable()
class Penandaan {
  String nama_guru_penyediaan;
  String created_at;
  String updated_at;

  Penandaan({
    this.nama_guru_penyediaan,
    this.created_at,
    this.updated_at,
  });

  factory Penandaan.fromJson(Map<String, dynamic> json) =>
      _$PenandaanFromJson(json);

  Map<String, dynamic> toJson() => _$PenandaanToJson(this);

  @override
  String toString() => toJson().toString();
}
