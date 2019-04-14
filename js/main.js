(function () {
    "use strict";

    document.addEventListener("DOMContentLoaded", function () {
        //campos datos usuarios
        let nombre = document.getElementById("nombre");
        let apellido = document.getElementById("apellido");
        let email = document.getElementById("email");

        //campos pases
        let paseDia = document.getElementById("pase_dia");
        let paseCompleto = document.getElementById("pase_completo");
        let paseDosDias = document.getElementById("pase_dosDias");

        //Botones y divs
        let calcular = document.getElementById("calcular");
        let divError = document.getElementById("error");
        let botonRegistro = document.getElementById("btnRegistro");
        let resultado = document.getElementById("lista-productos");

        calcular.addEventListener("click", calcularMontos);

        function calcularMontos(event) {
            event.preventDefault();
        }
    })//DOMContentLoaded
})();