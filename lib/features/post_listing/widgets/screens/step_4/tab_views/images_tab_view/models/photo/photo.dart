import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    @Default("") String index,
    @Default("") String path,
    @Default("") String name,
    @Default("") String size,
  }) = _Photo;
}
