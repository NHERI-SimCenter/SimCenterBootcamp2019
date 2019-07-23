#include <iostream>

class Shape {
 public:
  virtual ~Shape();
  virtual double GetArea(void) =0;
  virtual void PrintArea(ostream &s);
};

class Rectangle: public Shape {
 public:
  Rectangle(double w, double h);
  ~Rectangle();
  double GetArea(void);
  void PrintArea(ostream &s);  

 protected:

 private:
  double width, height;
  static int numRect;
};

class Circle: public Shape {
 public:
  Circle(double d);
  ~Circle();
  double GetArea(void);

 private:
  double diameter;
  double GetPI(void);
};
  
