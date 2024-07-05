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
  Compra(this.producto,this.precioUnitario,this.cantidad);
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
}