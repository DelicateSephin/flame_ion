// Flame Ion
// Copyright (c) 2019 DelicateSephin

part of flame_ion;


/// [IonRectangle]은 화면에 렌더링되는 직사각형 클래스입니다.
class IonRectangle extends IonObject{
  /// 현재 오브젝트의 크기입니다.
  ui.Size size;

  /// [IonRectangle]의 기본 생성자입니다.
  IonRectangle(ui.Offset center, ui.Paint paint, this.size)
    : super(center, paint)
  {
    assert(this.size != null);
  }

  /// [ui.Rect]를 이용하여 객체를 생성합니다.
  IonRectangle.fromRect(ui.Rect rect, ui.Paint paint)
    : super(rect.center, paint)
  {
    this.size = rect.size;
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
        width: this.size.width,
        height: this.size.height,
      ),
      this.paint
    );
  }
  
  @override
  void resize(ui.Size size){}
}