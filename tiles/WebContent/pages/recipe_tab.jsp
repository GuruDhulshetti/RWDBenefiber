<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="row searchable">
	 <div class="section-container tabs product-tabs" data-section="tabs">

	    <s:iterator value="textList" status="textStatus">					
		      <s:if test="texthdr == 'Ingredients'">
   				<section class="active">
   					<s:if test="texttype == 'TAB_HDR'">
				  <p class="title" data-section-title="">
				    <a href=""><s:property value="texthdr" /></a>
				  </p>
				 </s:if>
				 	
				  <div class="content" data-section-content="">
				    <div class="panel"><p><s:property value="textstr" /></p></div>
				  </div>
			 	</section>
			 </s:if>
			 <s:elseif test="texthdr != 'Ingredients'">
			 	<section>
			 	<s:if test="texttype == 'TAB_HDR'">
				  <p class="title" data-section-title="">
				    <a href=""><s:property value="texthdr" /></a>
				  </p>
				 </s:if>				 	
				  <div class="content" data-section-content="">
				    <div class="panel"><p><s:property value="textstr" /></p></div>
				  </div>
			 </section>			
			</s:elseif>
		</s:iterator>
		
	</div>
</div>   