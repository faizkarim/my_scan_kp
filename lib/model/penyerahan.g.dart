// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'penyerahan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Penyerahan _$PenyerahanFromJson(Map<String, dynamic> json) {
  return Penyerahan(
    nama_guru_penyerahan: json['nama_guru_penyerahan'] as String,
    created_at: json['created_at'] as String,
    updated_at: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$PenyerahanToJson(Penyerahan instance) =>
    <String, dynamic>{
      'nama_guru_penyerahan': instance.nama_guru_penyerahan,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
