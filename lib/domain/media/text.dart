import 'package:webfeed_revised/util/xml.dart';
import 'package:xml/xml.dart';

/// The text of a media element
/// See https://www.rssboard.org/media-rss#media-text
class Text {
  /// Default constructor for the Text class
  Text({
    this.type,
    this.lang,
    this.start,
    this.end,
    this.value,
  });

  /// Parse constructor for the Text class, used when 'parsing' a feed
  factory Text.parse(XmlElement element, bool parseHtml) => Text(
        type: element.getAttribute('type'),
        lang: element.getAttribute('lang'),
        start: element.getAttribute('start'),
        end: element.getAttribute('end'),
        value: element.parseText(parseHtml),
      );

  /// The type of the text
  final String? type;

  /// The language of the text
  final String? lang;

  /// The start of the text
  final String? start;

  /// The end of the text
  final String? end;

  /// The value of the text
  final String? value;
}
