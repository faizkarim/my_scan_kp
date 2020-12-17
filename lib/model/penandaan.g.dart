// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'penandaan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Penandaan _$PenandaanFromJson(Map<String, dynamic> json) {
  return Penandaan(
    nama_guru_penyediaan: json['nama_guru_penyediaan'] as String,
    created_at: json['created_at'] as String,
    updated_at: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$PenandaanToJson(Penandaan instance) => <String, dynamic>{
      'nama_guru_penyediaan': instance.nama_guru_penyediaan,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
