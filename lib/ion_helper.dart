// Flame Ion
// Copyright (c) 2019 DelicateSephin

part of flame_ion;


class IonHelper{
  /// 지원하는 스크린 모드를 설정합니다.
  /// [fullScreen] : 전체 화면
  /// [portraitUp] : 세운 세로 화면
  /// [portraitDown] : 거꾸로 세운 세로 화면
  /// [landscapeLeft] : 왼쪽으로 눕힌 가로 화면
  /// [landscapeRight] : 오른쪽으로 눕힌 가로 화면
  void screenMode({
    bool fullScreen = true,
    bool portraitUp = true,
    bool portraitDown = false,
    bool landscapeLeft = false,
    bool landscapeRight = false
  }) async
  {
    if(fullScreen) flame.Flame.util.fullScreen();

    final orientations = List<flutter.DeviceOrientation>();
    if(portraitUp) orientations.add(flutter.DeviceOrientation.portraitUp);
    if(portraitDown) orientations.add(flutter.DeviceOrientation.portraitDown);
    if(landscapeLeft) orientations.add(flutter.DeviceOrientation.landscapeLeft);
    if(landscapeRight) orientations.add(flutter.DeviceOrientation.landscapeRight);
    await flame.Flame.util.setOrientations(orientations);
  }

}