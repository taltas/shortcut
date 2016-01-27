/**
 * Created by taltas on 26/01/2016.
 */

$(function() {


    $('#search').click(function () {
        var urls = $('#urls_in').val().split('\n');


        // clear output data
        $('#output_data').html('')
        $('#loading').show()

        $.ajax({
            url: '/api/v1/meta_info',
            type: 'post',
            data: {urls: urls},
            dataType: 'json',
            success: function(data) {
                $.each(data, function(i,val){
                    $('#output_data').append("<tr><td>"+val.os_type+"</td><td>"+val.original_url+"</td><td>"+val.app_name+"</td><td>"+val.app_store_id+"</td><td>"+val.package+"</td> <td>"+val.url+"</td> </tr>")
                    $('#loading').hide()


                });



            },
            error: function(data) { console.log('something went wrong, show some output to reflect')
                $('#loading').hide()
            }
        });

        //$.each(arrayOfLines, function (index, item) {
        //
        //    console.log(item);
        //});
    });

})



