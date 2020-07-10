import 'Figura.dart';

class Retangulo extends Figura{
  num _lagura;
  num _comprimento;

  Retangulo(int posx, int posy, num lagura, num comprimento): super(posx,posy){
      print("");
      print("Retangulo Criado!");
      this._lagura = lagura;
      this._comprimento = comprimento;
  }

  @override
  num Area(){
      num area;

      area = this._lagura * this._comprimento;
      return area;
  }

  @override
  void MostraArea (){
    num a = Area();
    print("Area: ${a.toStringAsFixed(2)}");
  }

  void ehQuadrado () {
      if (this._lagura == this._comprimento){
        print("É quadrado: SIM");
      } else{
        print("É quadrado: NÃO");
      }
  }
}