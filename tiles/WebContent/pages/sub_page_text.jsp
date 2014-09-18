<%@taglib uri="/struts-tags" prefix="s" %>
<div class="row searchable ">
        
    <div class="large-12 columns ">
        <div class="large-12 small-12 large-centered columns ">
            <div class="large-12 small-12 small-centered columns product-details ">
                
			  <s:if test="textList.size() > 0">
				<s:iterator value="textList" status="textStatus">
					<s:if test="texttype== 'HDR'">
						<h3 class="text-center"><s:property value="textstr" /><sup>&reg;</sup></h3>
					</s:if>
					<h3>
					<a href="#" data-reveal-id="myShare"><span class="share-icon right"></span></a>
					</h3>
				    <s:if test="texttype== 'TTL'">
				  	<p><s:property value="textstr" /></p>
				   </s:if>
				   <s:if test="texttype== 'DTL'">
				  	<p><s:property value="textstr" /></p>
				   </s:if>
					</s:iterator>
				</s:if>
            </div>
         </div>
     </div>
</div>
            