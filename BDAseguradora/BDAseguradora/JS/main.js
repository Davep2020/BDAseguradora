
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
            .bindPopup('Estás Aquí')
            .openPopup('ads') //FIN MAPA
            .bindTooltip('Un punto')        //descripción en el mapa
            .openTooltip('asd')

    }); //DOM CONTENT LOADED
})();






