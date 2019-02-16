
window.onload=function () {
    // function sleep(numberMillis) {
    //     var now = new Date();
    //     var exitTime = now.getTime() + numberMillis;
    //     while (true) {
    //         now = new Date();
    //         if (now.getTime() > exitTime)
    //         return;
    //         }
    //     }
    $(".con").on('click',function () {
        $(".hid").css("left",0)
        $(".shadow").css('width','100%')
        // sleep(600)




    })
     $(".shadow").on('click',function () {
         $(".shadow").css('width',0)
        $(".hid").css("left",'-75%')

    })
    $('.shadow').on('touchmove',function(e){
        e.preventDefault()
    })
    $('.hid').on('touchmove',function(e){
        e.preventDefault()
    })

}