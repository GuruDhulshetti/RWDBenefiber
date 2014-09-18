<%@taglib uri="/struts-tags" prefix="s"%>
<div class="row searchable ">
<div class="large-12 columns product-grid-div ">
<ul class="small-block-grid-2 large-block-grid-3 product-grid">
	
	<s:if test="sliderList.size() > 0">
	<s:iterator value="sliderList" status="sliderStatus">
	  
	  <li>
		  <a href="<s:url namespace="/" action="irish-oatmeal"></s:url>">
		    <img src="<s:property value="large_img_path" />" alt="<s:property value="title" />"
		  data-interchange="[<s:property value="small_img_path" />, (default)],[<s:property value="large_img_path" />, (small)]" />
		  </a>
		
		  <div class="product-tag"><s:property value="path" />
		    <span>
		    </span>
		      <p> <s:property value="title" /></p>		    		
		  </div>	  
	  </li>	
	 </s:iterator>
	 </s:if>
</ul>
</div>
</div>