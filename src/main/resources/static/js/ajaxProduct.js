$(document).ready(function () {

    this.onPageChange = function (event, page) {
        var target = event.target;
        event.preventDefault();
        $(" #numberPage li.active ").removeClass("active");
        $(target).parent(" a ").parent(" li").addClass("active");

        $.get('/quan-ao2/'+page, {"data":"cc"},function (response, status, xhr) {
            if(status === "success"){

                console.log(response);
                for(var i = 1; i< response.listCate1ByPage.content.length + 1; i++){
                    $("#productName"+i).text(response.listCate1ByPage.content[0].name);
                    $("#productPrice"+i).text(response.listCate1ByPage.content[0].price);
                    $("#productImage"+i).attr('src',"/images/"+response.listCate1ByPage.content[0].image);
                }
            }else{
                alert("error from server. wait some minutes");
            }
        })
        /*});*/

    };

});