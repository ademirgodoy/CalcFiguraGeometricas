import 'Figura.dart';
import 'Dart:math' as math;

class Circulo extends Figura{
    num _raio;

    Circulo(int posx, int posy, num raio): super(posx,posy){
        print("");
        print("Circulo Criado!");
        this._raio = raio;
    }

    @override
    num Area() {
      num area;

      area = math.pi * math.pow(this._raio, 2);
      return area;
    }

    @override
    void MostraArea (){
         num a = Area();
         print("Area: ${a.toStringAsFixed(2)}");
    }

    void Diametro (){
        num diametro;

        diametro = 2*this._raio;
        print("Diametro: ${diametro.toStringAsFixed(2)}");
    }
}