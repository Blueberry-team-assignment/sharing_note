import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharing_memo/lib.dart';

abstract class StorageService {
  Future<void> init();

  Future<Object?> get({required String key});

  Future<bool> set({required String key, required Object data});

  Future<bool> has({required String key});

  Future<bool> remove({required String key});

  Future<void> clear();
}

class StorageServiceImpl implements StorageService {
  late SharedPreferences sharedPreferences;
  final Completer<SharedPreferences> initCompleter = Completer();

  @override
  Future<void> init() async {
    initCompleter.complete(SharedPreferences.getInstance());
    // sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Future<dynamic> get({required String key}) async {
    sharedPreferences = await initCompleter.future;
    log(sharedPreferences.get(key).toString(), name: "get $key");
    return sharedPreferences.get(key);
  }

  @override
  Future<bool> set({required String key, required Object data}) async {
    sharedPreferences = await initCompleter.future;
    log("저장 완료", name: "set $key");
    return await sharedPreferences.setString(key, data.toString());
  }

  @override
  Future<bool> has({required String key}) async {
    sharedPreferences = await initCompleter.future;
    log("포함여부 확인중...", name: "has $key");
    return sharedPreferences.containsKey(key);
  }

  @override
  Future<bool> remove({required String key}) async {
    sharedPreferences = await initCompleter.future;
    log("삭제 완료", name: "remove $key");
    return await sharedPreferences.remove(key);
  }

  @override
  Future<void> clear() async {
    sharedPreferences = await initCompleter.future;
    log("Pref 클리어!", name: "clear");
    await sharedPreferences.clear();
  }
}
