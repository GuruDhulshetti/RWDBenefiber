<%@taglib uri="/struts-tags" prefix="s"%>

<div class="row searchable ">
	<div class="large-12  small-12 columns small-centered large-centered infocus-div">
		<s:if test="sliderList.size() > 0">
			<s:iterator value="sliderList" status="sliderStatus">
				<a href="<s:property value="img_link"/>">
					<div class="large-3 small-12 ul-<s:property value="div_id" />-subTitle columns">
				    	<div class=" large-12 small-3 columns img-div">
				      		<div class="ratio ">
				      			<img class="lazy" data-original="<s:property value="large_img_path" />" 
				      			data-interchange="[<s:property value="small_img_path" />, (default)],
				      			[<s:property value="large_img_path" />, (small)]" alt="" />
				       		</div>
				      		<div class="highlights-tag hide-for-small" >
				        		<span></span>
				        		<h4><s:property value="title" /></h4>
				      		</div>
				    	</div>
				    	<div class="small-9 columns  show-for-small" >
				      		<h4 class="tagline"><s:property value="title" /></h4>
				    	</div>
				  	</div>
				</a>
			</s:iterator>
		</s:if>
	</div>
</div>