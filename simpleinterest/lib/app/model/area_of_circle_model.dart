class AreaOfCircleModel{
  final int radius;

  AreaOfCircleModel({
    required this.radius
  });

  double areaOfCircle(){
    return (radius*radius*3.14);
  }
}