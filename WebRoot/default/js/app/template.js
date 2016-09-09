define(["lib/template"],function(template){

	//模板处理分页函数
	    template.helper('setpage',function(d){
	      
        var e = d.pageCount, c = d.pageNum;
        var cstr = "";
        var i = (c - 2) >= 1 ? c > (e - 2) ? e - 4 : c - 2  : 1, 
            f = (c + 2) >= e ? e : (c + 2) < 5 ? 5 : c + 2 ;
            
        i = i <= 0 ? 1 : i;
        
        if (e >= 2) {

            cstr = '<div class="pages">' + '<ul>';
            if (e >= 2 && c != 1) {
                cstr += '<li><a href="javascript:;" _id="' + (c - 1) + '">上一页</a></li>';
            }

            for (var j = i; j <= f; j++) {
                var cclass = "";
                if (j == c) {
                    cclass = "class='active'";
                }
                cstr += '<li><a ' + cclass + ' href="javascript:;" _id="' + j + '">' + j + '</a></li>';
            }
            if (e >= 2 && c != e) {
                cstr += '<li><a href="javascript:;" _id="' + (c + 1) + '">下一页</a></li><li><a href="javascript:;" _id="' + e + '">共' + e + '页</a></li>';
            }
            return cstr + '</ul></div>';
        } else {
            return '';
        }

	    });
	    //模板处理分页函数
	    template.helper('setpageOld',function(d){
	      var  e=d.totalPage,
	           c=d.currentPage;
	       var cstr="";
	       var i=(c-2)>=1?(c-2):1,
	           f=(c+2)>=e?e:c+2;
	      if(e>=2){

	        cstr='<div class="pages">'+
	             '<ul>';
	        if(e>=2&&c!=1){
	          cstr+='<li><a href="javascript:;" _id="'+(c-1)+'">上一页</a></li>';
	        }

	       for (var j=i;j<=f;j++)
	       {
	         var cclass="";
	         if(j==c){
	           cclass="class='active'";
	         }
	         cstr+='<li><a '+cclass+' href="javascript:;" _id="'+j+'">'+j+'</a></li>';
	       }
	       if(e>=2&&c!=e){
	          cstr+='<li><a href="javascript:;" _id="'+(c+1)+'">下一页</a></li><li><a href="javascript:;" _id="'+e+'">共'+e+'页</a></li>';
	        }
	       return cstr+'</ul></div>';
	       }else{
	        return '';
	       }
	    });

	    //模板金额格式化 
	    template.helper('fmoney',function(s){
	        var l = s.split(".")[0].split("").reverse(), r = s.split(".")[1];  
	        t = "";  
	        for (i = 0; i < l.length; i++) {  
	            t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : "");  
	        }  
	        return t.split("").reverse().join("") + "." + r;  
	    });

	    template.helper('fdate',function(s){
	        var t=s.split(",");
	        var cnum=t.length;
	        return t[0]+"-"+t[cnum-1];  
	    });
	    //模板处理等级数字转成字符串
	    template.helper('newlevel',function(d){
	      var tlevel=parseInt(d);
	      var tlevelStr='';
	      for (var i = 1; i <= tlevel; i++) {
	        tlevelStr+="A";
	      };
	      return tlevelStr;
	      
	    });
	  
	return template; 
	

});
