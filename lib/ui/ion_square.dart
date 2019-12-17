// Flame Ion
// Copyright (c) 2019 DelicateSephin

part of flame_ion;


/// [IonSquare]은 화면에 렌더링되는 정사각형 클래스입니다.
class IonSquare extends IonObject{
  /// 현재 오브젝트의 크기입니다.
  double size;

  /// [IonSquare]의 기본 생성자입니다.
  IonSquare(ui.Offset center, ui.Paint paint, this.size)
    : super(center, paint)
  {
    assert(this.size != null);
  }

  @override
  void update(double t)
  {
    assert(t != null);
  }

  @override
  void render(ui.Canvas canvas)
  {
    assert(canvas != null);
    canvas.drawRect(
      ui.Rect.fromCenter(
        center: this.center,
        width: this.size,
        height: this.size,
      ),
      this.paint
    );
  }

  @override
  void resize(ui.Size size){}
}