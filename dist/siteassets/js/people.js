$(document).ready(function() {

    $('.staff').hide();

    $('.card').click(function(e) {
        e.preventDefault();
        $('.staff').hide();
        var group = $(this).data('staff');
        $("#" + group).show();
    });

    $('.staff').click(function(e) {
        $('.staff').hide();
    });

});
