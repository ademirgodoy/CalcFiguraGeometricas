import '../model/Circulo.dart';
import '../model/Figura.dart';
import '../model/Retangulo.dart';
import '../model/Triangulo.dart';

void main() {
   var listaFiguras = new List<Figura>();
   num somaAreas = 0;

   var circulo1 = Circulo(34, 40, 2);
   circulo1.Diametro();
   circulo1.MostraArea();
   listaFiguras.add(circulo1);

   var circulo2 = Circulo(34, 40, 10);
   circulo2.Diametro();
   circulo2.MostraArea();
   listaFiguras.add(circulo2);

   var retangulo1 = Retangulo(34,40,10,40);
   retangulo1.ehQuadrado();
   retangulo1.MostraArea();
   listaFiguras.add(retangulo1);

   var retangulo2 = Retangulo(34,40,100,100);
   retangulo2.ehQuadrado();
   retangulo2.MostraArea();
   listaFiguras.add(retangulo2);

   var triangulo1 = Triangulo(34,40,13,12,11);
   triangulo1.GetTipo();
   triangulo1.MostraArea();
   listaFiguras.add(triangulo1);

   var triangulo2 = Triangulo(34,40,12,12,11);
   triangulo2.GetTipo();
   triangulo2.MostraArea();
   listaFiguras.add(triangulo2);

   for (var x = 0; x < listaFiguras.length; x++){
       somaAreas += listaFiguras[x].Area();
   }
   
   print("Área total das figuras criadas: ${somaAreas.toStringAsFixed(2)}");
   

}
