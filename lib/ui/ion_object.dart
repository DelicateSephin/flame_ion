// Flame Ion
// Copyright (c) 2019 DelicateSephin

part of flame_ion;


/// [IonObject]는 [Flame Ion]에서 렌더링되는 최소 클래스입니다.
/// [Flame Ion]에서 렌더링되는 모든 클래스들은 [IonObject]의
/// 서브클래스입니다.
abstract class IonObject{
  /// [IonObject]의 기본 생성자입니다.
  IonObject(this.center, this.paint)
  {
    assert(this.center != null);
    assert(this.paint != null);
  }

  /// 현재 오브젝트의 중심 좌표입니다.
  ui.Offset center;  
  /// 오브젝트를 렌더링할 때 사용되는 [Paint]입니다.
  ui.Paint paint;

  /// 오브젝트를 [t]마이크로 초마다 업데이트합니다.
  void update(double t);
  
  /// 화면에 오브젝트를 렌더링합니다.
  void render(ui.Canvas canvas);

  /// 오브젝트의 크기를 재설정합니다.
  void resize(ui.Size size);

  /// 오브젝트를 [x, y]만큼 이동시킵니다.
  void move(double x, double y)
  {
    assert(x != null);
    assert(y != null);    
    this.center = ui.Offset(this.center.dx + x, this.center.dy + y);
  }
}