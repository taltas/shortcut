/**
 * Created by taltas on 26/01/2016.
 */

$(function() {

    console.log('ihihih');
    $('#search').click(function () {
        var urls = $('#urls_in').val().split('\n');

        $.ajax({
            url: '/api/v1/meta_info',
            type: 'post',
            data: {urls: urls},
            dataType: 'json',
            success: function(data) { console.log(data)},
            error: function(data) { console.log(data)}
        });

        //$.each(arrayOfLines, function (index, item) {
        //
        //    console.log(item);
        //});
    });

})



