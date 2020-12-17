// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paper_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaperDetails _$PaperDetailsFromJson(Map<String, dynamic> json) {
  return PaperDetails(
    id: json['id'] as String,
    kelas: json['kelas'] as String,
    tingkatan: json['tingkatan'] as String,
    nama_guru_penyedia: json['nama_guru_penyedia'] as String,
    mata_pelajaran: json['mata_pelajaran'] as String,
    bilangan_pelajar: json['bilangan_pelajar'] as int,
    kertas: json['kertas'] as String,
    status_kertas: json['status_kertas'] as int,
    penandaan: json['penandaan'] == null
        ? null
        : Penandaan.fromJson(json['penandaan'] as Map<String, dynamic>),
    penyerahan: json['penyerahan'] == null
        ? null
        : Penyerahan.fromJson(json['penyerahan'] as Map<String, dynamic>),
    kutipan: json['kutipan'] == null
        ? null
        : Kutipan.fromJson(json['kutipan'] as Map<String, dynamic>),
    created_at: json['created_at'] as String,
    updated_at: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$PaperDetailsToJson(PaperDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kelas': instance.kelas,
      'tingkatan': instance.tingkatan,
      'nama_guru_penyedia': instance.nama_guru_penyedia,
      'mata_pelajaran': instance.mata_pelajaran,
      'kertas': instance.kertas,
      'bilangan_pelajar': instance.bilangan_pelajar,
      'status_kertas': instance.status_kertas,
      'penandaan': instance.penandaan,
      'penyerahan': instance.penyerahan,
      'kutipan': instance.kutipan,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
