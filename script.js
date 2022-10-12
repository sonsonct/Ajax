$(document).ready(function(){

   
    $('.load-more').click(function(){
        var row = Number($('#row').val());
        var allcount = Number($('#all').val());
        row = row + 3;

        if(row <= allcount){
            $("#row").val(row);

            $.ajax({
                url: 'getData.php',
                type: 'post',
                data: {row:row},
                beforeSend:function(){
                    $(".load-more").text("Đang Tải...");
                },
                success: function(response){

                    
                    setTimeout(function() {
                        
                        $(".post:last").after(response).show().fadeIn("slow");

                        var rowno = row + 3;

                        
                        if(rowno > allcount){

                            
                            $('.load-more').text("Ẩn Bớt");
                            $('.load-more').css("background","darkorchid");
                        }else{
                            $(".load-more").text("Xem Thêm");
                        }
                    }, 2000);


                }
            });
        }else{
            $('.load-more').text("Đang Tải...");

           
            setTimeout(function() {

                
                $('.post:nth-child(3)').nextAll('.post').remove().fadeIn("slow");

                
                $("#row").val(0);
                $('.load-more').text("Xem Thêm");
                $('.load-more').css("background","#15a9ce");

            }, 2000);


        }

    });

});