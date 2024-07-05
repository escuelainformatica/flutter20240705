// clase que se refiere a datos se llama clase de modelo
class Pais {
  String? nombre;
  String continente="";
  int poblacion;  
  Pais(this.nombre,this.continente,this.poblacion);  
}
// clases que hacen operaciones se llama clase de servicio
class PaisServicio {
  void mostrar(Pais pais) {
     print("${pais.nombre} ${pais.continente} ${pais.poblacion}");
  }
}
void main() {
  var chile=Pais("Chile","america",18);
  var servicio=PaisServicio();
  servicio.mostrar(chile);
}