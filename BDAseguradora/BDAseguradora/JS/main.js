///Funcion para mostrar los formularios de registrar y logear

$('.toggle').click(function () {
    $('.formulario').animate({
        height: "toggle",
        'padding-top': 'toggle',
        'padding-bottom': 'toggle',
        opacity: 'toggle'
    }, "slow");
    var x=false;
});

(function () {
    "use strict"



    var regalo = document.getElementById('regalo');
    document.addEventListener('DOMContentLoaded', function () {

        //MAP
        var map = L.map('mapa').setView([9.846612, -84.31568], 17);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);

        L.marker([9.846612, -84.31568]).addTo(map)
            .bindPopup('Est�s Aqu�')
            .openPopup('ads') //FIN MAPA
            .bindTooltip('Un punto')        //descripci�n en el mapa
            .openTooltip('asd')

    }); //DOM CONTENT LOADED
})();






