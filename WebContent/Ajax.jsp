<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<script type="text/javascript">
			
	var js = {
		XMLHttp:null,
		//����������
		sendRequest:function(url,responseFun,callback){
			//����XMLHTTPRequest����
			(function(){
				
				//������������ʹ���XMLHTTPRequest����
				if(window.XMLHttpRequest){
					js.XMLHttp = new XMLHttpRequest();
				}
				else{
					try{
						js.XMLHttp = new ActionXObject("Msxml2.XMLHTTP");
					}catch (e){
						try{
							js.XMLHttp = new ActiveXObject("Microsoft.XMLHTTP");
						} catch (e0){alert("Microsoft"+e0);}
					}
				}
				
				})();
			
			js.XMLHttp.open("POST", url, true);
			js.XMLHttp.onreadystatechange = function(responseFunction){
				if(js.XMLHttp.readyState == 4){
					if(js.XMLHttp.status == 200){
						responseFun(js.XMLHttp);
					}else{
						document.getElementById("div").innerHTML = "<font color='red'>���ӷ������쳣...</font>"	;
					}
				}
				else{
					//document.getElementById("div").innerHTML = "<font color='red'>���ݼ�����...</font>"	;	
				}
			};//ָ����Ӧ����
			js.XMLHttp.send(null);
			return js.XMLHttp;
		}
	}
	
		
		
		
		
		//��Ӧ����
		function responseFunction(xmlhttp){
			var xmlDOM = xmlhttp.responseXML; //���ܷ��������ص�xml�ĵ�
			parse(xmlDOM);//����XML�ĵ�
		}
		
		//����XML�ĵ�
		function parse(xmlDOM){
			var person = xmlDOM.getElementsByTagName("person");
			var page = xmlDOM.getElementsByTagName("page")[0];
			var currpage = page.getElementsByTagName("currpage")[0].firstChild.data;
			var pagecount = page.getElementsByTagName("pagecount")[0].firstChild.data; 
			var prevpagehtml; 
			var nextpagehtml;
			if((currpage-0)<=1){
				prevpagehtml = "<a>��һҳ</a>";
			}else{
				prevpagehtml = "<a onclick='AjaxTest("+(currpage-1)+");' href='javascript:void(0);'>��һҳ</a>";
			}
			if((currpage-0)<(pagecount-0)){
				nextpagehtml = "<a onclick='AjaxTest("+(currpage-0+1)+");' href='javascript:void(0);'>��һҳ</a>";
			}else{
				nextpagehtml = "<a>��һҳ</a>";
			}
  			var html = "<table style='font-size: 12px; color: red'><tr><td width='80'>���</td><td width='100'>����</td><td width='80'>����</td></tr>";
  			
  			for(i=0;i<person.length;i++){
  					html = html+ "<tr><td>"
  							   +person[i].getElementsByTagName("pid")[0].firstChild.data+"</td><td>"
  							   +person[i].getElementsByTagName("pname")[0].firstChild.data+"</td><td>"
  							   +person[i].getElementsByTagName("age")[0].firstChild.data
  							   +"</td></tr>";
  			}
  			html = html + "<tr ><td width='50'>"+prevpagehtml+"</td><td width='100'>��"+pagecount+"ҳ&nbsp;��ǰ��"+currpage+"ҳ</td><td width='80'>"+nextpagehtml+"</td></tr>";
  			html = html+"</table>";
  			document.getElementById("div").innerHTML=html;
		}
		
		//��������,�Ե�ǰҳ��Ϊ����
		function AjaxTest(currpage) {
			js.sendRequest("AjaxServlet?currpage="+currpage,responseFunction,null);
		}
		
  	</script>
  	
  	</head>
  
  <body onload="AjaxTest(1);">
 	
 	<center>
 	
 	 <div id="div"> </div>
 	
 	</center>
 	
  </body>
</html>
