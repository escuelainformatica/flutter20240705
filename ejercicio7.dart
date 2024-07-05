void main() {
  var libro={"titulo":"harry potter","autor":"jrk","numPaginas":400,"precio":50000};
  Map<String,dynamic> libro2={"titulo":"harry potter2","autor":"jrk2","numPaginas":500,"precio":40000};
  print("${libro['titulo']} ${libro['autor']} ${libro['numPaginas']} ${libro['precio']}");
  List<Map<String,dynamic>> libros=[libro,libro2];
}