<%@taglib uri="/struts-tags" prefix="s"%>

<div class="row searchable">

<hr/>

    <s:if test="page_id == 1">  
	    <div class="large-12 columns product-grid-div ">
	        <ul class="small-block-grid-2 large-block-grid-4 product-grid">			
				<s:if test="sliderList.size() > 0">
					<s:iterator value="sliderList" status="sliderStatus">
						<li>
						  <a href="<s:property value="img_link"/>">
						    <div class="ratio loading">
						      <img class="lazy" data-original="<s:property value="large_img_path" />" width="765" height="574" alt="" />
						    </div>
						  </a>
						  <div class="product-tag">
						    <span></span>
						    <a href="<s:property value="img_link"/>">
						      <h4><s:property value="title" /></h4>
						    </a>
						  </div>
						</li>
					</s:iterator>
				</s:if>				
			</ul>
	    </div>
    </s:if>
    
    <s:else>
	    <div class="large-12 columns product-grid-div ">
	        <ul class="small-block-grid-2 large-block-grid-2 product-grid">			
				<s:if test="sliderList.size() > 0">
					<s:iterator value="sliderList" status="sliderStatus">
						<li>
						  <a href="<s:property value="img_link"/>">
						    <div class="ratio loading">
						      <img class="lazy" data-original="<s:property value="large_img_path" />" width="765" height="574" alt="" />
						    </div>
						  </a>
						  <div class="product-tag">
						    <span></span>
						    <a href="<s:property value="img_link"/>">
						      <h4><s:property value="title" /></h4>
						    </a>
						  </div>
						</li>
					</s:iterator>
				</s:if>				
			</ul>
	    </div>
    </s:else>

</div>