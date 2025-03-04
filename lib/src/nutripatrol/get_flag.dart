import 'package:json_annotation/json_annotation.dart';
import 'get_ticket.dart';
import '../prices/flavor.dart';

import '../interface/json_object.dart';
import 'nutripatrol_types.dart';

part 'get_flag.g.dart';

/// Get one flag by its ID.
@JsonSerializable()
class NutripatrolFlag extends JsonObject {
  /// Flag ID. Read-only.
  @JsonKey()
  late String id;

  /// Ticket ID. Read-only.
  @JsonKey()
  late NutripatrolTicket ticket;

  /// Barcode of the product. Read-only.
  @JsonKey()
  String? barcode;

  /// Type of the flag
  @JsonKey()
  late NutripatrolType type;

  /// Url of the product. Read-only.
  @JsonKey()
  late String url;

  /// User ID. Read-only.
  @JsonKey(name: 'user_id')
  late String userId;

  /// Device ID. Read-only.
  @JsonKey(name: 'device_id')
  late String deviceId;

  /// Source of the flag
  @JsonKey()
  late NutripatrolSource source;

  /// Confidence of the flag
  @JsonKey()
  double? confidence;

  /// Image ID of the flag. Read-only.
  @JsonKey(name: 'image_id')
  String? imageId;

  /// Flavor of the flag
  @JsonKey()
  late Flavor flavor;

  /// Reason of the flag
  @JsonKey()
  String? reason;

  /// Comment of the flag
  @JsonKey()
  String? comment;

  /// created date of the ticket. Read-only.
  @JsonKey()
  late DateTime created;

  NutripatrolFlag();

  factory NutripatrolFlag.fromJson(Map<String, dynamic> json) =>
      _$NutripatrolFlagFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NutripatrolFlagToJson(this);
}
