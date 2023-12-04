function cajeroAutomatico(cantidad) {
  var billetes = [
    500, 200, 100, 50, 20, 10, 5, 2, 1, 0.5, 0.2, 0.1, 0.05, 0.02, 0.01,
  ];
  var resultado = [];
  var cantidad = cantidad;
  for (var i = 0; i < billetes.length; i++) {
    if (cantidad >= billetes[i]) {
      const cantidadActual = Math.floor(cantidad / billetes[i]);
      resultado.push({
        billete: billetes[i],
        cantidad: cantidadActual,
      });
      cantidad = cantidad - billetes[i] * cantidadActual;
      i = i - 1;
    }
  }
  return resultado;
}
