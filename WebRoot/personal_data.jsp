<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<input type="hidden" id="cenhead" cenhead="grzl" />
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>个人资料</title>
    <link rel="stylesheet" href="${basePath}css/personal_data.css">
    <link href="${basePath}css/bootstrap.min.css" rel="stylesheet">
	<link href="${basePath}css/cropper.min.css" rel="stylesheet">
	<link href="${basePath}css/demo.css" rel="stylesheet">
	<link rel="stylesheet" href="${basePath }default/js/uikit/css/components/datepicker.css" />
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="headIcon_personalData">
            <div class="uk-width-100">
                <h1>头像修改</h1>
            </div>
            <div class="uk-grid uk-grid-collapse">
                <div class="uk-width-7-10 headIconLeft_personalData">
                    <div id="crop-avatar">
                        <span title="Change Logo Picture" class="avatar-view"><a>选择您要上传的头像</a></span>
                    </div>
                    <div class="uk-width-100 uk-overflow-hidden">
                        <p class="uk-float-right">仅支持JPG、JPEG、PNG、GIF、BMP格式（图片大小不超过1M）</p>
                    </div>
                    <div class="uk-grid uk-grid-collapse defaultIcon_personalData">
                        <div class="uk-width-1-1 uk-text-center">
                            <img src="${basePath}images/useIcon_personalData.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="uk-width-3-10 headIconRight_personalData">
                    <div class="uk-width-100">
                        <p>效果预览</p>
                        <p>您上传的图片将自动生成2种尺寸，请注意小尺寸的头像是否清晰</p>
                    </div>
                    <div class="uk-width-100 previewSmall_personalData">
                        <img src="${basePath}images/useIcon_personalData.png" alt="" class="uk-align-center">
                        <p>100×100px</p>
                    </div>
                    <div class="uk-width-100 previewBig_personalData">
                        <img src="${basePath}images/useIcon_personalData.png" alt="" class="uk-align-center">
                        <p>50×50px</p>
                    </div>
                </div>
            </div>
            <div class="affirmAlter_personalData"><i></i><a href="">确认修改</a></div>
        </div>
        <div class="personalData">
            <p>个人资料</p>
            <div class="uk-grid uk-grid-collapse">
                <div class="uk-width-1-3 personalData_A">
                    <label for=""><i>*</i>登录名：</label>
                    <input type="text" class="personalLoginName_input">
                    <span class="personalLoginName_span" ></span>
                    <p>可用于登陆，请牢记哦~<br>（只可修改一次）</p>
                    <label for=""><i>*</i>用户昵称：</label>
                    <input type="text" id="userName">
                </div>
                <div class="uk-width-1-3 personalData_B">
                    <div class="uk-width-100">
                        <label for="">居住地：</label>
                        <select id="seleProvince" onchange="getCity(this.value)">
							<option value="0">省</option>
						</select>
						<select id="seleCity" onchange="getCounty(this.value)">
							<option value="1">市</option>
						</select>
<!-- 						<select id="seleCounty" onchange="setCountyCode(this.value)">
							<option value="">县</option>
						</select>
 -->                    </div>
                    <div class="uk-width-100">
                        <label for="">详细地址： </label>
                        <input type="text" id="address" />
                    </div>
                </div>
                <div class="uk-width-1-3 personalData_C">
                    <div class="uk-widht-100">
                        <label for="" class="margin">生日：</label>
                        <input type="" id="birthday" data-uk-datepicker="{format:'YYYY-MM-DD',weekstart:0,
                        i18n:{months:['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],
                        weekdays:['日','一','二','三','四','五','六']}}">
                    </div>
                    <div class="uk-width-100">
                        <label for="">性别：</label>
                        <span class="uk-form sexBorder_personalData">
                            <input type="radio" name="sex" value="2" id="sex_2">
                            <label for="">男</label>
                            <input type="radio" name="sex" value="1" id="sex_1">
                            <label for="">女</label>
                            <input type="radio" name="sex" value="0" id="sex_0">
                            <label for="">保密</label>
                        </span>
                    </div>
                </div>
            </div>
            <div class="affirmAlter_personalData"><i></i><a class="confirmUpdate">确认修改</a></div>
        </div>
        <cm:footer_mycenter></cm:footer_mycenter>
    </div>
    <div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <form class="avatar-form" action="{{url('admin/upload-logo')}}" enctype="multipart/form-data" method="post">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal" type="button">&times;</button>
                        <h4 class="modal-title" id="avatar-modal-label">上传头像</h4>
                    </div>
                    <div class="modal-body">
                        <div class="avatar-body">
                            <div class="avatar-upload">
                                <input class="avatar-src" name="avatar_src" type="hidden">
                                <input class="avatar-data" name="avatar_data" type="hidden">
                                <a class="uk-button avatar-clickupbtn">
                                	<input class="avatar-input" id="avatarInput" name="avatar_file" type="file">
                                	点击上传
                                </a>
                            </div>
                            <div class="row">
                                <div class="col-md-9">
                                    <div class="avatar-wrapper"></div>
                                </div>
                                <div class="col-md-3">
                                    <div class="avatar-preview preview-md"></div>
                                    <div class="avatar-preview preview-sm"></div>
                                </div>
                            </div>
                            <div class="row avatar-btns">
                                <div class="col-md-9">
                                    <div class="btn-group">
                                        <button class="btn" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees"><i class="fa fa-undo"></i> 向左旋转</button>
                                    </div>
                                    <div class="btn-group">
                                        <button class="btn" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees"><i class="fa fa-repeat"></i> 向右旋转</button>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <button class="btn btn-success btn-block avatar-save" type="submit"><i class="fa fa-save"></i> 保存修改</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<!--    <div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>-->
    <cm:footer></cm:footer>
</body>
<script>
   require(["app/common","uikit!datepicker"],function(cm,UI){
	   layer.load(0, {shade: 0.3});
	   $.ajax({
           url: jsonPath + "qzw/rest/user/queryUserInfo",
           contentType: "application/json; charset=utf-8",
           dataType: "json", 
           type: "post", 
           data: JSON.stringify({
               "user_id":userId
           }),
           success: function(data, status) {
        	   if(data.login_name != null && data.login_name.length > 0){
        		   $(".personalLoginName_input").css("display","none");
        		   $(".personalLoginName_span").css("display","inline-block");
        		   $(".personalLoginName_span").html(data.login_name);
        	   }
        	   $("#userName").val(data.user_name);
        	   var provinceId = data.province_id;
        	   if(data.province_id){
        		   $("#seleProvince option").each(function(){
        			   var optionVal = $(this).val();
        			   if(optionVal == provinceId){
        				   $(this).attr("selected",true);
        				   return false;
        			   }
        		   });
        	   	}
        	   if(data.city_id){
        		   var cityId = data.city_id;
        		   getCity(provinceId);
        		   $("#seleCity option").each(function(){
        			   var optionVal = $(this).val();
        			   if(optionVal == cityId){
        				   $(this).attr("selected",true);
        				   return false;
        			   }
        		   }); 
        	   	}
        	   	$("#address").val(data.address);
        	   	$("#birthday").val(data.birthday);
        	   	if(data.sex != null){
        	   		if(data.sex == "0"){
        	   			$("#sex_0").attr("checked",true);
        	   		}else if(data.sex == "1"){
        	   			$("#sex_1").attr("checked",true);
        	   		}else{
        	   			$("#sex_2").attr("checked",true);
        	   		}
        	   	}
        	   	layer.closeAll('loading');
           },
           error: function(request, status, message) {
        	   layer.msg("网络异常，请重试！");
           }
       });
	   $(".confirmUpdate").click(function(){
		   if($(".personalLoginName_input").css("display") == "none"){
			   var login_name = $(".personalLoginName_span").html();
		   }else{
			   var login_name = $(".personalLoginName_input").val();
		   }
		   if($("#seleProvince option:selected").val() == ""){
			  var province_id = "0";
		   }else{
			   var province_id = $("#seleProvince option:selected").val();
		   }
		   if($("#seleCity option:selected").val() == ""){
			  var city_id = "1";
		   }else{
			   var city_id = $("#seleCity option:selected").val();
		   }
		   layer.load(0, {shade: 0.3});
		   $.ajax({
	            url: jsonPath + "qzw/rest/user/updUserInfo",
	            contentType: "application/json; charset=utf-8",
	            dataType: "json", 
	            type: "post", 
	            data: JSON.stringify({
	            	"user_id":userId,
	            	"login_name":login_name,
	            	"user_name":$("#userName").val(),
	            	"sex":parseInt($("input[name='sex']:checked").val()),
	            	"birthday":$("#birthday").val(),
	            	"province_id":parseInt(province_id),
	            	"city_id":parseInt(city_id),
	            	"address":$("#address").val()
	            }),
	            success: function(data, status) { 
	            	//data.errcode  0：成功  2：用户名已存在
	                if(data.errcode == "2"){
	                	layer.msg("用户名已存在！");
	                }else{
	                	layer.msg("个人资料修改成功！");
	                	setTimeout("refresh()",1500);
	                }
	                layer.closeAll('loading');
	            },
	            error: function(request, status, message) {
	            	layer.msg("网络异常，请重试！");
	            }
	        }); 
	   });
	   
   });
   require(["bootstrap","cropper","demo"],function(){
       
   });
</script>
</html>