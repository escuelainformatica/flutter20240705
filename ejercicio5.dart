class Libro {
    String titulo;
    String autor;
    int numPaginas;
    int precio;
  
    Libro(this.titulo,this.autor,this.numPaginas,this.precio);
}
void main() {
  var libro=Libro("harry potter","jrk",400,50000);
  print("${libro.titulo} ${libro.autor} ${libro.numPaginas} ${libro.precio}");
}