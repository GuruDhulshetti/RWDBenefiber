<%@taglib uri="/struts-tags" prefix="s"%>
    <div class="row searchable">
        
	   <div class="top-band"></div>
	   <div class="large-12 columns cell-lifter">
	       <div id="slider">
	       	   <s:if test="sliderList.size() > 0">
			   <s:iterator value="sliderList" status="sliderStatus">
	               <img src="<s:property value="large_img_path" />" alt="<s:property value="img_title" />" onclick="OpenLink('',this)" />
	           </s:iterator>
	           </s:if>
	       </div>
	    </div> 

    </div>