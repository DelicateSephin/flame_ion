// Flame Ion
// Copyright (c) 2019 DelicateSephin

part of flame_ion;


class IonImage extends IonObject{
  /// [IonImage]의 기본 생성자입니다.
  IonImage(ui.Offset center, ui.Paint paint, String filePath, {this.scale})
    : super(center, paint)
  {
    assert(filePath != null);
    _sprite = flame.Sprite(filePath);
    this.scale ??= 1.0;
  }

  /// 현재 오브젝트의 렌더링 비율입니다.
  /// 원본 이미지는 [scale]의 비율로 변환되어 렌더링됩니다.
  double scale;
  /// [IonImage]는 내부적으로 [flame.Sprite]를 이용하여 이미지를 관리합니다.
  flame.Sprite _sprite;

  @override
  void update(double t){}

  @override
  void render(ui.Canvas canvas)
  {
    _sprite.renderCentered(
      canvas,
      flame.Position(
        center.dx,
        center.dy
      ),
      size: _sprite.size * scale,
      overridePaint: paint
    );
  }

  @override
  void resize(ui.Size size){}
}