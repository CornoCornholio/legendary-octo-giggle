$(document).ready(function() {

    var currentPeopleGroup;

    $('.staff').hide();

    $('.card').click(function(e) {
        //e.preventDefault();
        $('.staff').hide();
        $('*[data-staff]').css("border-bottom",'white 1px solid');

        var group = $(this).data('staff');
        var background = $(this).css("background-color");
        $(this).css("border-bottom", background + ' 5px solid');

        $('#' + group).css("border", background + ' 5px solid');
        $('#' + group).css("background", background);

        $('#' + group).show();
        console.log(group);

    });

    $('.staff').click(function(e) {
        $('.staff').hide();
        $('*[data-staff]').css("border-bottom",'white 5px solid');
    });

});
