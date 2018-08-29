(function() {
  jQuery(function() {
    var completer;
    completer = new GmapsCompleter({
      mapElem: "#gmaps-canvas",
      zoomLevel: 15,
      pos: [4.684, -74.05],
      inputField: '#universidad_place',
      errorField: '#gmaps-error',

      updateUI: function(address, latLng) {
        $('#universidad_latitude').val(latLng.lat());
        $('#universidad_longitude').val(latLng.lng());
        $('#universidad_place').val(address);
      }

    });
    completer.autoCompleteInit({
      region: 'CO',
      country: 'Colombia',
      autocomplete: {
        minLength: 4,
        position: {
          my: "center top",
          at: "center bottom"
        }
      }
    });
  });
}).call(this);
