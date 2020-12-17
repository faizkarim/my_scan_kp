// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kutipan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kutipan _$KutipanFromJson(Map<String, dynamic> json) {
  return Kutipan(
    nama_guru_kutipan: json['nama_guru_kutipan'] as String,
    created_at: json['created_at'] as String,
    updated_at: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$KutipanToJson(Kutipan instance) => <String, dynamic>{
      'nama_guru_kutipan': instance.nama_guru_kutipan,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
