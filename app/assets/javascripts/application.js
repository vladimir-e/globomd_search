// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function addEventHandler(elem, eventType, handler) {
  if (elem.addEventListener) elem.addEventListener(eventType, handler, false);
  else if (elem.attachEvent) elem.attachEvent("on" + eventType, handler);
}

addEventHandler(document, "DOMContentLoaded", function() {
  searchInput = document.getElementById("SearchBox");
  addEventHandler(searchInput, "keyup", function() {
    const query = searchInput.value;
    const url = new URL("http://localhost:3000/search");
    url.search = new URLSearchParams({ query });
    fetch(url)
      .then(response => response.json())
      .then(json => {
        console.table(json.data);
      })
      .catch(() => console.error("Server Error"));
  });
});
