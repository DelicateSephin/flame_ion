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


  /// [IonHelper]는 보다 편한 게임 제작을 위해 제공되는
  /// 헬퍼 클래스입니다. [IonHelper]를 이용하면 게임의
  /// 화면 조작을 비롯한 많은 작업들이 자동으로 수행됩니다.
  /// [IonHelper]를 이용할 경우 사용자는 [IonGame]의
  /// 서브클래스에서 [IonHelper]를 이용하여 게임을 관리합니다.
  /// [IonHelper]의 자동 처리 기능을 이용하고 싶지 않다면,
  /// 사용자는 [IonGame]의 서브클래스에서 [update], [render]
  /// 함수를 재정의하고, 직접 게임에서 사용될 [IonView]들을
  /// 관리하여야 합니다. 이 경우에도 [IonHelper]의 각종 편의
  /// 기능들을 제한적으로 이용할 수 있습니다.
  IonHelper helper = IonHelper();

  @override
  void update(double t)
  {
    assert(t != null);
    helper.update(t);
  }

  @override
  void render(ui.Canvas canvas)
  {
    assert(canvas != null);
    helper.render(canvas);
  }

  @override
  void resize(ui.Size size)
  {
    assert(size != null);
    screenSize = size;
  }
}