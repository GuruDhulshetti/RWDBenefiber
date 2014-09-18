<%@taglib uri="/struts-tags" prefix="s"%>

<div class="row searchable">        
	<div id="topBand"  class="top-band"></div>
	  <div class="large-12 columns cell-lifter">
	      <div class="slideshow-wrapper">
	          <div class="preloader"></div>
				<ul data-orbit id="homePageSlider">
					<s:if test="sliderList.size() > 0">
					<s:iterator value="sliderList" status="sliderStatus">
				<li>
					<img id="<s:property value="imgid" />" src="<s:property value="large_img_path" />"
				  	data-interchange="[<s:property value="small_img_path" />, (default)],[<s:property value="large_img_path" />, (small)]" alt="Slider-Image" onclick="OpenLink('/products/powder',this)" />
				</li>
				<!-- 
				<li>
				  <div class="video-img-container">
				    <div class="">
				      <div id="C1" class="video-overlay" onclick="RenderVideo('v1', 'hsm', 'video.jpg','Clear, taste-free fiber supplement');">
				        <div  class="video-play"></div>
				      </div>
				      <img class="lazy" src="foundation/Images/Large/video.jpg" data-original="foundation/Images/Large/video.jpg" alt="video" />
				    </div>
				  </div>
				</li>
				<li>
				  <img id="C2" src="foundation/Images/Large/fbslide.jpg"
				  data-interchange="[foundation/Images/Small/fbslide.jpg, (default)],[foundation/Images/Large/fbslide.jpg, (small)]" alt="FB slide" onclick="OpenLink('https://www.facebook.com/Benefiber',this)" />
				</li>
				 -->    
				 </s:iterator>
				</s:if>        
				</ul>
	     </div>
	</div>
</div>