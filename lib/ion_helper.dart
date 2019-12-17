// Flame Ion
// Copyright (c) 2019 DelicateSephin

part of flame_ion;


/// [IonHelper]는 보다 편한 게임 제작을 위해 제공되는
/// 헬퍼 클래스입니다. [IonHelper]를 직접 생성하는 것
/// 보다는 [IonGame]에 생성되어 있는 [helper] 객체를
/// 이용하는 것을 추천합니다.
class IonHelper{
  /// [currentView]의 값은 다음을 의미합니다.
  /// [currentView]의 값을 변경할 때, 직접 값을
  /// 입력하는 대신 다음 상수들을 이용합니다.
  /// ex) 만약 currentView가 0이면, 현재 화면에
  /// 렌더링 된 [IonView]는 홈 화면 입니다.
  static const home_view = 0;
  static const game_view = 1;
  static const setting_view = 2;
  static const credit_view = 3;


  /// [IonHelper]를 이용한 Flame Ion 게임에서,
  /// 게임의 화면 처리는 자동으로 처리되며 이를
  /// 위해선 사용자는 [IonHelper]의 [views]에
  /// [IonView]들을 추가하여야 합니다.
  List<IonView> views = List<IonView>();
  /// [IonHelper]를 이용한 Flame Ion 게임에서
  /// 현재 화면에 렌더링 된 [IonView]를 나타냅니다.
  /// 기본 설정은 홈 화면입니다.
  int currentView = home_view;

  /// [views]에 포함된 [IonView]들을 업데이트합니다.
  void update(double t)
  {
    assert(t != null);
    for(var obj in views){
      obj.update(t);
    }
  }

  /// 현재 화면에 나올 [IonView]를 렌더링합니다.
  void render(ui.Canvas canvas)
  {
    assert(canvas != null);
    views[currentView].render(canvas);
  }
  
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