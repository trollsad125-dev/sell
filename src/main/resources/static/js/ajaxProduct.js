$(document).ready(function () {



    $.post('/quan-ao2', {"data":1},function (response,status,xhr) {
        if(status === "success"){
            $("#mainProduct").empty();
            console.log(response);
            obj = {};
            for(var i = 0; i< response.listCate1ByPage.content.length; i++){
                let id = response.listCate1ByPage.content[i].id;
                $('#mainProduct').append(`<div>${response.listCate1ByPage.content[i].name}</div>`);
                /*$("#productName"+id).text(response.listCate1ByPage.content[0].name);
                 $("#productPrice"+id).text(response.listCate1ByPage.content[0].price);
                 $("#productImage"+id).attr('src',"/images/"+response.listCate1ByPage.content[0].image);*/
            }
        }else{
            alert("error from server. wait some minutes");
        }
    });

    this.onPageChange = function (event, page) {
        var target = event.target;
        event.preventDefault();
        $(" #numberPage li.active ").removeClass("active");
        $(target).parent(" a ").parent(" li").addClass("active");

        $.post('/quan-ao2', {"data":page},function (response,status,xhr) {
            if(status === "success"){
                $("#mainProduct").empty();
                 console.log(response);
                 for(var i = 0; i< response.listCate1ByPage.content.length; i++){
                     let id = response.listCate1ByPage.content[i].id;
                     $('#mainProduct').append(`<div>${response.listCate1ByPage.content[i].name}</div>`);
                     $("#mainProduct").append(`<div id="divCha${id}" class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up"></div>`)
                     $("divCha"+id).appendChild()
                     /*$("#productName"+id).text(response.listCate1ByPage.content[0].name);
                     $("#productPrice"+id).text(response.listCate1ByPage.content[0].price);
                     $("#productImage"+id).attr('src',"/images/"+response.listCate1ByPage.content[0].image);*/
                 }
            }else{
                alert("error from server. wait some minutes");
            }
        });
        /*});*/

    };

});