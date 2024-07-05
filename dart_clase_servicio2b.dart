// tengo una lista de compras que tienen los siguientes valores
// producto, precio unitario y cantidad
// y quisiera hacer lo siguiente:
// calcular el total.
// calcular el total con iva.
// mostrar la compra.
class Compra {
  String producto;
  int precioUnitario;
  int cantidad;
  // constructor por defecto:
  // constructor tiene argumentos posicionales
  Compra(this.producto,this.precioUnitario,this.cantidad);
  // constructor con nombre, y tiene valores asignados
  Compra.soloProducto(this.producto): precioUnitario=0, cantidad=0;
  // constructor con nombre y tiene argumentos con nombre { }
  Compra.argumentoNombre({required this.producto,this.precioUnitario=0,this.cantidad=0});
  // constructor con nombre y tiene un argumento posicional y dos argumentos con nombre.
  Compra.nombre3(this.producto,{this.precioUnitario=0,this.cantidad=0});
}
class CompraServicio {
  int calcularTotal(Compra compra) {
    int total=compra.cantidad*compra.precioUnitario;
    return total;
  }
  double calcularTotalConIva(Compra compra) {
    double total=compra.cantidad*compra.precioUnitario*1.19;
    return total;
  }
  void mostrar(Compra compra) {
    print("---------------------compra--------------------");
    print("producto        :${compra.producto}");
    print("cantidad        :${compra.cantidad}");
    print("precioUnitario  :${compra.precioUnitario}");
    print("total           :${calcularTotal(compra)}");
    print("total con iva   :${calcularTotalConIva(compra)}");
  }
}

void main() {
  var compra=Compra("cocacola",2500,10);
  var servicio=CompraServicio();
  servicio.mostrar(compra);
  var compra2=Compra.soloProducto("fanta");
  servicio.mostrar(compra2);
  var compra3=Compra.argumentoNombre(producto:"sprite",cantidad:200);
  servicio.mostrar(compra3);
  var compra4=Compra.nombre3("seven up",precioUnitario:200);
  servicio.mostrar(compra4);
}