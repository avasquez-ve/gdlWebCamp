(function () {
    "use strict";

    let regalo = document.getElementById("regalo");

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
        let resumenProductos = document.getElementById("lista-productos");
        let sumaTotal = document.getElementById("suma_total");

        //extras
        let camisas = document.getElementById("camisa_evento");
        let etiquetas = document.getElementById("etiquetas");

        //eventos
        calcular.addEventListener("click", calcularMontos);
        paseDia.addEventListener("blur", mostrarDias);
        paseDosDias.addEventListener("blur", mostrarDias);
        paseCompleto.addEventListener("blur", mostrarDias);
        nombre.addEventListener("blur", validarCampos);
        apellido.addEventListener("blur", validarCampos);
        email.addEventListener("blur", validarCampos);

        function validarCampos () {
            if(this.value == "") {
                divError.style.display = "block";
                divError.innerHTML = "Este campo es obligatorio";
                divError.style.border = "1px solid red";
                this.style.border = "1px solid red";
            } else {
                divError.style.display = "none";
                this.style.border = "1px solid #cccccc";
            }
        }

        function calcularMontos(event) {
            event.preventDefault();
            if (regalo.value === "") {
                alert("Debes elegir un regalo para continuar");
                regalo.focus();
            } else {
                let boletosDia = parseInt(paseDia.value, 10)||0;
                let boletosDosDias = parseInt(paseDosDias.value, 10)||0;
                let boletoCompleto = parseInt(paseCompleto.value, 10)||0;
                let cantCamisas = parseInt(camisas.value, 10)||0;
                let cantEtiquetas = parseInt(etiquetas.value, 10)||0;
                let totalPagar = (boletosDia * 30) + (boletosDosDias * 45) + (boletoCompleto * 50) + ((cantCamisas * 10) * .93) + (cantEtiquetas * 2);

                var listadoProductos = [];

                if(boletosDia >= 1) {
                    listadoProductos.push(boletosDia + " Pases por día");
                }
                if(boletosDosDias >= 1) {
                    listadoProductos.push(boletosDosDias + " Pases por 2 días");
                }
                if(boletoCompleto >= 1) {
                    listadoProductos.push(boletoCompleto + " Pases Completos");
                }
                if(cantCamisas >= 1) {
                    listadoProductos.push(cantCamisas + " Camisas");
                }
                if(cantEtiquetas >= 1) {
                    listadoProductos.push(cantEtiquetas + " Etiquetas");
                }
                var largoListadoProductos = listadoProductos.length;

                resumenProductos.style.display = "block";
                resumenProductos.innerHTML = "";
                for (let i = 0; i < largoListadoProductos; i++) {
                    resumenProductos.innerHTML += listadoProductos[i] + '<br />';        
                }
                sumaTotal.innerHTML = "$ "+ totalPagar.toFixed(2);
            }
        }

        function mostrarDias() {
            document.getElementById("viernes").style.display = "none";
            document.getElementById("sabado").style.display = "none";
            document.getElementById("domingo").style.display = "none";

            let boletosDia = parseInt(paseDia.value, 10)||0;
            let boletosDosDias = parseInt(paseDosDias.value, 10)||0;
            let boletoCompleto = parseInt(paseCompleto.value, 10)||0;

            let diasElegidos = [];
            if(boletosDia > 0) {
                diasElegidos.push("viernes");
            }
            if(boletosDosDias > 0) {
                diasElegidos.push("viernes", "sabado");
            }
            if(boletoCompleto > 0) {
                diasElegidos.push("viernes", "sabado", "domingo");
            }
            let largoDiasElegidos = diasElegidos.length;
            for (let i = 0; i < largoDiasElegidos; i++) {
                document.getElementById(diasElegidos[i]).style.display = "block";
            }
        }
    })//DOMContentLoaded
})();