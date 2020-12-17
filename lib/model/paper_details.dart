import 'package:json_annotation/json_annotation.dart';
import 'package:my_scan_kp/model/kutipan.dart';
import 'package:my_scan_kp/model/penandaan.dart';
import 'package:my_scan_kp/model/penyerahan.dart';

part 'paper_details.g.dart';

@JsonSerializable()
class PaperDetails {
  String id;
  String kelas;
  String tingkatan;
  // ignore: non_constant_identifier_names
  String nama_guru_penyedia;
  // ignore: non_constant_identifier_names
  String mata_pelajaran;
  String kertas;
  // ignore: non_constant_identifier_names
  int bilangan_pelajar;
  // ignore: non_constant_identifier_names
  int status_kertas;
  Penandaan penandaan;
  Penyerahan penyerahan;
  Kutipan kutipan;
  String created_at;
  String updated_at;

  PaperDetails(
      {this.id,
      this.kelas,
      this.tingkatan,
      this.nama_guru_penyedia,
      this.mata_pelajaran,
      this.bilangan_pelajar,
      this.kertas,
      this.status_kertas,
      this.penandaan,
      this.penyerahan,
      this.kutipan,
      this.created_at,
      this.updated_at});

  factory PaperDetails.fromJson(Map<String, dynamic> json) =>
      _$PaperDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$PaperDetailsToJson(this);

  @override
  String toString() => toJson().toString();
}
