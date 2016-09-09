define(["app/template","app/area"],function(template,a) {
		template.config("cache",false);
		return {
			renderHtml : function renderHtml(id, d, f) {
				var html = template(id, d);
				if (f) {
					document.getElementById(f).innerHTML = html;
				} else {
					document.getElementById(id + 'Html').innerHTML = html;
				}
			},
			//将表单元素打包成json格式的js对象
			
			buildData : function buildData(obj){
	           var inputs=$(obj).find("input,textarea,select");  
	           var o = {};  
	           $.each(inputs,function(i,n){  
	               switch(n.nodeName.toUpperCase()){  
	                   case "INPUT":  
	                       if($(n).is(":checkbox")){  
	                           if($(n).is(":checked")){  
	                               o[n.name]=true;  
	                           }else{  
	                               o[n.name]=false;  
	                           }  
	                       }else if($(n).is(":radio")){  
	                           if($(n).is(":checked")){  
	                               o[n.name]=n.value;  
	                           }  
	                       }else if($(n).is(":button")){  
	                           if($(n).hasClass("active")){  
	                               o[n.name]=n.id;
	                           }
	                       }else{  
	                           o[n.name]=n.value;   
	                       }  


	                       break;  
	                   case "TEXTAREA":  
	                       //o[n.name]=$(n).text();  
	                	   o[n.name]=$(n).val();
	                       break;  
	                   case "SELECT":  
	                       o[n.name]=n.value;  
	                       break;  
	                   
	               }  
	           });
	           return o;  
			}
		}
	});
function getQueryString(name) {
    var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
    var r = window.location.search.substr(1).match(reg);
    if (r != null) {
        return unescape(r[2]);
    }
    return null;
}