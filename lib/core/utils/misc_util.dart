import 'dart:async';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sharing_memo/lib.dart';

class MiscUtil {
  MiscUtil._();

  /// [1. Url Encoding]
  static String encodeUrl(Map<String, String> params) {
    var s = '';
    params.forEach((key, value) {
      if (value.isNotEmpty && value != 'null') {
        var urlEncode = Uri.encodeComponent(value);
        s += '${s == '' ? '?' : '&'}$key=$urlEncode';
      }
    });
    return s;
  }

  /// [2. Null이 아닌 값을 찾아서 리턴]
  static Map<String, dynamic> filterNonNullValues(Map<String, dynamic> data) {
    return data..removeWhere((key, value) => value == null);
  }

  /// [3. 파일 패스]
  static String filePath({
    required String fileName,
    String? subFolder,
  }) {
    final basePath = p.join('assets');
    if (subFolder != null) {
      final subFolderPath = p.join(basePath, subFolder, fileName);
      try {
        rootBundle.load(subFolderPath);
        return subFolderPath;
      } catch (e) {
        // 파일이 없는 경우 예외 처리
        log('File not found in $subFolderPath');
      }
    }
    final defaultPath = p.join(basePath, fileName);
    if (File(defaultPath).existsSync()) {
      return defaultPath;
    } else {
      throw Exception("${File(p.join(defaultPath, fileName))}이 존재하지 않습니다");
    }
  }

  /// [4. 랜덤값 가져오기]
  static rdInt({
    required int min,
    required int max,
  }) {
    final random = Random();
    return min + random.nextInt(max - min);
  }

  /// [5. Asset에 저장한 파일 불러오기 vs. 서버]
  static Future<File?> getFile({
    required String path,
    String? fileName,
  }) async {
    Completer<File> completer = Completer();
    bool isServer = false;
    String? originName;

    try {
      path.contains("http") ? isServer = true : isServer;
      if (fileName != null) {
        originName = fileName;
      }
      var dir = await getApplicationDocumentsDirectory();

      /// [1. Server]
      if (isServer) {
        originName ??= path.substring(path.lastIndexOf('/') + 1);
        var request = await HttpClient().getUrl(Uri.parse(path));
        var response = await request.close();

        var bytes = await consolidateHttpClientResponseBytes(response);
        File file = File("${dir.path}/$originName");

        await file.writeAsBytes(bytes, flush: true);
        completer.complete(file);
      } else {
        /// [2. Asset(Local)]
        originName ??= path.substring(path.lastIndexOf('/') + 1);

        File file = File("${dir.path}/$originName");
        var data = await rootBundle.load(path);
        var bytes = data.buffer.asUint8List();

        await file.writeAsBytes(bytes, flush: true);
        completer.complete(file);
      }
    } catch (e) {
      throw Exception("Error pasing file");
    }
    return completer.future;
  }

  /// [6. 모델 컨버터]
  T convert<S, T>(S source, T Function(S source) convertFunction) {
    return convertFunction(source);
  }
}
