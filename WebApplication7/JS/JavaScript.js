//This dix will display Google map
const mapArea = document.getElementById('map');

displayLocation = (position) => {
    showMap(latlng);
    createMarker(latlng);
    mapArea.style.display = "block";
}

