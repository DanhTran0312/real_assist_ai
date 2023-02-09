// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      message: json['message'] as String,
      timeSent: json['timeSent'] as int,
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'message': instance.message,
      'timeSent': instance.timeSent,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
    };
