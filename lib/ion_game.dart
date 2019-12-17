// Flame Ion
// Copyright (c) 2019 DelicateSephin

part of flame_ion;


abstract class IonGame extends flame.Game{
  /// 현재 화면 크기입니다.
  static ui.Size screenSize = ui.Size.zero;  

  /// 현재 화면이 가로 화면인지 확인합니다.
  /// (true == 가로 화면)
  static bool isLandscape()
  {
    return screenSize.width > screenSize.height;
  }

  /// 현재 화면이 세로 화면인지 확인합니다. 
  /// (true == 세로 화면)
  static bool isPortrait()
  {
    return screenSize.width < screenSize.height;
  }


  final IonHelper helper = IonHelper();

  @override
  void resize(ui.Size size)
  {
    screenSize = size;
  }
}