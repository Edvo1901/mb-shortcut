$(document).ready(function() {
    window.addEventListener('message', function(event) {
        var eventData = event.data;

        if (eventData.action == 'open') {
            $('.main').fadeIn(150);
        } else if (eventData.action == 'close') {
            $('.main').fadeOut(100);
        }
    })
})