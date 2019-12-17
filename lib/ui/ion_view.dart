// Flame Ion
// Copyright (c) 2019 DelicateSephin

part of flame_ion;


abstract class IonView extends IonObject{
  List<IonObject> objects;

  IonView(String backgroundImageFilePath)
    : super(
      IonGame.screenSize.center(ui.Offset.zero),
      flame.BasicPalette.white.paint
    )
  {
    assert(backgroundImageFilePath != null);
    _background = IonImage(
      this.center,
      this.paint,
      backgroundImageFilePath
    );
    _background.scale = IonGame.screenSize.width / _background._sprite.image.width;
  }

  IonImage _background;

  @override
  void update(double t)
  {
    for(var obj in objects){
      obj.update(t);
    }
  }

  @override
  void render(ui.Canvas canvas)
  {
    assert(canvas != null);
    _background.render(canvas);
    for(var obj in objects){
      obj.render(canvas);
    }
  }

  @override
  void resize(ui.Size size){}

  /// [IonView]는 이동시킬 수 없습니다.
  @override
  void move(double x, double y){}
}