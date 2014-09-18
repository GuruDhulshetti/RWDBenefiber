<%@taglib uri="/struts-tags" prefix="s"%>

<div class="row searchable">
	<s:if test="page_id == 1">
	<div class="large-12 small-12 large-centered  small-centered columns landing-screen ">
		<s:if test="textList.size() > 0">
			<s:iterator value="textList" status="textStatus">
				<s:if test="texttype == 'HDR'">
					<h3 class="text-center"><s:property value="textstr" /></h3>
				</s:if>
				<s:if test="texttype == 'TTL'">
					<p class="text-center">
						<span class="text-highlight">
							<s:property value="textstr" />
						</span>
				</s:if>
				<s:if test="texttype == 'DTL'">
					<br>
					<s:property value="textstr" />
				</s:if>
			</s:iterator>
		</s:if>
	</div>
	</s:if>
	
	<s:if test="page_id == 3">
		<hr/>
		    <div class="large-11  small-11 large-centered small-centered columns ">
		    	<s:if test="textList.size() > 0">
					<s:iterator value="textList" status="textStatus">
				        <div class="large-12 small-12 columns products-brief">
				            <s:if test="texttype == 'HDR'">
				            	<h3><s:property value="textstr" /></h3>
				            </s:if>
				            <s:if test="texttype == 'TTL'">
				            	<s:property value="textstr" />
				            </s:if>
				            <s:if test="texttype == 'DTL'">	
				            	<p><s:property value="textstr" /></p>
							</s:if>				            	
				        </div>
					</s:iterator>
				</s:if>
		    </div>
	</s:if>
	
	<s:if test="page_id == 5">
		<div class="large-12 small-12 large-centered small-centered columns products-info">
		<hr/>
			<s:if test="textList.size() > 0">
				<s:iterator value="textList" status="textStatus">
					<s:if test="texttype == 'HDR'">
						<h3><s:property value="textstr" /></h3>
					</s:if>
					<s:if test="texttype == 'TTL'">
					<p>
				  		<span class="text-highlight">
				    		<s:property value="textstr" />
				    		
				  		</span>
					</p>
					</s:if>
					<s:if test="texttype == 'DTL'">	
					       	<p  class="small-text"><s:property value="textstr" /></p>
					</s:if>
				</s:iterator>
			</s:if>
	    </div>
	</s:if>

	<s:if test="page_id == 6">
		<hr/>
		    <div class="large-11  small-11 large-centered small-centered columns ">
		    	<s:if test="textList.size() > 0">
					<s:iterator value="textList" status="textStatus">
				        <div class="large-12 small-12 columns products-brief">
				            <s:if test="texttype == 'HDR'">
				            	<h3><s:property value="textstr" /></h3>
				            </s:if>
				            <s:if test="texttype == 'TTL'">
				            	<s:property value="textstr" />
				            </s:if>
				            <s:if test="texttype == 'DTL'">	
				            	<p><s:property value="textstr" /></p>
							</s:if>
				            	
				        </div>
					</s:iterator>
				</s:if>
		    </div>
		    <hr/>
	</s:if>
</div>