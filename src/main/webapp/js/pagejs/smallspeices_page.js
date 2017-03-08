/*$(function(){
	//向主页发送的显示分类的一个ajax请求
	$.ajax({ 
		url: "showAllSpecies_species.action", 
		dataType:"json",
		success: function(data){
			    var s=windows.location.href ;
			    alert(s);
			    alert(s);
				 $.each(data.speciesList, function(i, item) {
					 $("#first_species").append(
							"<h4>"+
								"个人闲置 : <a href='smallspecies.jsp'>全部  </a><span class='pipe-gt'>&gt;</span>"+
								"<span>手机 平板</span> "+
							"</h4>"
					 
					 )
			     });
		}
	});	
	
});*/