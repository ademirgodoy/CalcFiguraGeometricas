import 'Figura.dart';
import 'Dart:math' as math;

class Triangulo extends Figura{
    num _face1;
    num _face2;
    num _face3;

    Triangulo(int posx, int posy, num face1, num face2, num face3) : super(posx,posy){
      print("");
      print("Triangulo Criado!");
      this._face1 = face1;
      this._face2 = face2;
      this._face3 = face3;
    }

    @override
    num Area() {
        //https://www.todamateria.com.br/area-do-triangulo/
        num s, base, area;
        s = (this._face1+this._face2+this._face3)/2;
        base = this._face2;
        area = ((math.sqrt(s * ((s-this._face1)*(s-this._face2)*(s-this._face3))))*2)/base;
        return area;

    }

    @override
    void MostraArea (){
      num a = Area();
      print("Area: ${a.toStringAsFixed(2)}");
    }

    void GetTipo (){
        num hip, scat = 0;

        //acha hipotenusa e catetos
        if  (this._face1>this._face2 && this._face1>this._face3){
          hip = math.pow(this._face1, 2);
          scat = math.pow(this._face2, 2)  + math.pow(this._face3, 2);
        }
        if  (this._face2>this._face1 && this._face2>this._face3){
          hip = math.pow(this._face2, 2);
          scat = math.pow(this._face1, 2)  + math.pow(this._face3, 2);
        }
        if  (this._face3>this._face1 && this._face3>this._face2){
          hip = math.pow(this._face3, 2);
          scat = math.pow(this._face2, 2)  + math.pow(this._face1, 2);
        }

        //verifica tipo traingulos
        if (this._face1 == this._face2 && this._face2 == this._face3) {
           print("Tipo: Equilátero");
        }else{
           if (this._face1 == this._face2 || this._face2 == this._face3 ||
              this._face1 == this._face3) {
              print("Tipo: Isóceles");
           }else{
              if (this._face1 != this._face2 && this._face2 != this._face3 &&
                 this._face1 != this._face3 && hip != scat) {
                 print("Tipo: Escaleno");
              }else{

                 if (hip == scat) {
                    print("Tipo: Retangulo");
                 } else {
                    print("Tipo: Inesistente");
                 }
              }
          }
        }
    }

}