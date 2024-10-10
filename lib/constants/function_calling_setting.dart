import 'package:google_generative_ai/google_generative_ai.dart';

final keywordAnswerController = FunctionDeclaration(
  'setKeywordAnswer',
  '質問の答えの文章をセットしてください',
  Schema(
    SchemaType.object,
    properties: {
      'keywordAnswer': Schema(
        SchemaType.string,
        description: 'キーワードからバズる文章',
      ),
    },
    requiredProperties: [
      'keywordAnswer',
    ],
  ),
);

final imageAnswerController = FunctionDeclaration(
  'setImageAnswer',
  '質問の文章をセットしてください',
  Schema(
    SchemaType.object,
    properties: {
      'imageAnswer': Schema(
        SchemaType.string,
        description: '画像からバズる文章',
      ),
    },
    requiredProperties: [
      'imageAnswer',
    ],
  ),
);

String? setKeywordAnswer(
  Map<String, Object?> arguments,
) =>
    arguments['keywordAnswer'] as String?;

String? setImageAnswer(
  Map<String, Object?> arguments,
) =>
    arguments['imageAnswer'] as String?;
