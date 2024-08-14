import 'package:freezed_annotation/freezed_annotation.dart';

import 'match.dart';

part 'text.freezed.dart';
part 'text.g.dart';

@freezed
class Text with _$Text {
  factory Text({
    String? text,
    List<Match>? matches,
  }) = _Text;

  factory Text.fromJson(Map<String, dynamic> json) => _$TextFromJson(json);
}
