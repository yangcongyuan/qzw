$(function(){
    $(".commentOpen").click(function(){
        $(this).parent().siblings(".commentContentBox_projectComment").children(".commentedBox").children(".commented").slideUp();
        $(this).parent().siblings(".commentContentBox_projectComment").children(".commenting").slideDown();
        $(this).parent().siblings(".commentingBtn").fadeIn();
    });
    $(".commentingBtn").click(function(){
        var commentContent = $(this).siblings(".commentContentBox_projectComment").children(".commenting").children("input").val();
        $(this).siblings(".commentContentBox_projectComment").children(".commentedBox").append
        (
        "<div class='commented'>"+
            "<div>"+
                "<img src='"+basePath+"/images/userIcon_myCenter.png' >"+
                "<p class='commentNameTime_projectComment'><i>喵小喵</i><br><i>2016.5.13</i></p>"+
                "</div>"+
            "<p>"+commentContent+"</p>"+
        "</div>"
        );
        $(this).siblings(".commentContentBox_projectComment").children(".commentedBox").children(".commented").show();
        $(this).siblings(".commentContentBox_projectComment").children(".commenting").fadeOut();
    });
});