<%@taglib uri="/struts-tags" prefix="s"%>

	<!-- Products Home Starts -->
	<s:if test="page_id == 3">
		<s:action name="imgslider" flush="true" executeResult="true" namespace="/">		
		<s:param name="site_id">1</s:param>
		<s:param name="page_id">1</s:param>	
		<s:param name="image_type">SLD</s:param>
	</s:action>
	<s:action name="text" flush="true" executeResult="true" namespace="/">
		<s:param name="site_id">1</s:param>
		<s:param name="page_id">3</s:param>
		<s:param name="sub_page_id">0</s:param>			
	</s:action>
	<s:action name="ibelt" flush="true" executeResult="true" namespace="/">
		<s:param name="site_id">1</s:param>
		<s:param name="page_id">3</s:param>
		<s:param name="image_type">BLT</s:param>
	</s:action>
	</s:if>
	
	<!-- Fiber Your Health Home Starts -->
	<s:if test="page_id == 5.1F">
		<s:action name="imgslider" flush="true" executeResult="true" namespace="/">		
		<s:param name="site_id">1</s:param>
		<s:param name="page_id">1</s:param>	
		<s:param name="image_type">SLD</s:param>
	</s:action>
	<s:action name="text" flush="true" executeResult="true" namespace="/">
		<s:param name="site_id">1</s:param>
		<s:param name="page_id">5</s:param>
		<s:param name="sub_page_id">0</s:param>			
	</s:action>
	<s:action name="ibelt" flush="true" executeResult="true" namespace="/">
		<s:param name="site_id">1</s:param>
		<s:param name="page_id">5</s:param>
		<s:param name="image_type">BLT</s:param>
	</s:action>
	</s:if>
	<s:if test="page_id == 5.2F">
		<s:action name="recipe_slider" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">5</s:param>	
			<s:param name="image_type">FBRSLD1</s:param>
		</s:action>
		<s:action name="sub_page_text" flush="true" executeResult="true" namespace="/">
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">5</s:param>	
			<s:param name="sub_page_id">1</s:param>
			<s:param name="image_type">HDR</s:param>
		</s:action>
		<s:action name="recipe_text" flush="true" executeResult="true" namespace="/">
		</s:action>
		<s:action name="steps" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">5</s:param>					
		</s:action>	
	</s:if>	
	<s:if test="page_id == 5.3F">
		<s:action name="recipe_slider" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">5</s:param>	
			<s:param name="image_type">FBRSLD2</s:param>
		</s:action>
		<s:action name="sub_page_text" flush="true" executeResult="true" namespace="/">
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">5</s:param>	
			<s:param name="sub_page_id">2</s:param>
			<s:param name="image_type">HDR</s:param>					
		</s:action>
		<s:action name="steps" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">5</s:param>					
		</s:action>	
	</s:if>
	<!-- Fiber Your Health Home Ends -->
	
	<!-- Recipes Starts -->
	<s:if test="page_id == 6.1F"> <!-- Irish Oatmeal with Strawberries & Vanilla -->
		 <s:action name="recipe_slider" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>	
			<s:param name="image_type">RCPSLD1</s:param>
		</s:action>		
		<s:action name="recipe_tab" flush="true" executeResult="true" namespace="/">
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>		
			<s:param name="sub_page_id">1</s:param>
			<s:param name="txt_type">TAB%</s:param>
		</s:action>
		<s:action name="text" flush="true" executeResult="true" namespace="/">
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>
			<s:param name="sub_page_id">0</s:param>			
		</s:action>
		<s:action name="steps" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>					
		</s:action>		
	</s:if>
	
	<s:if test="page_id == 6.2F"> <!-- Blueberry Muffin -->
		<s:action name="recipe_slider" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>	
			<s:param name="image_type">RCPSLD2</s:param>
		</s:action>
		<s:action name="text" flush="true" executeResult="true" namespace="/">
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>
			<s:param name="sub_page_id">0</s:param>			
		</s:action>
		<s:action name="steps" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>					
		</s:action>	
	</s:if>	
	<s:if test="page_id == 6.3F"> <!-- Buttermilk Buckwheat Pancakes -->
		<s:action name="recipe_slider" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>	
			<s:param name="image_type">RCPSLD3</s:param>
		</s:action>
		<s:action name="recipe_text" flush="true" executeResult="true" namespace="/">
			
		</s:action>
		<s:action name="steps" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>					
		</s:action>	
	</s:if>	
	<s:if test="page_id == 6.4F"> <!-- Strawberry, Almond Yogurt Smoothie -->
		<s:action name="recipe_slider" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>	
			<s:param name="image_type">RCPSLD4</s:param>
		</s:action>
		<s:action name="recipe_text" flush="true" executeResult="true" namespace="/">
		</s:action>
		<s:action name="steps" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>					
		</s:action>	
	</s:if> 
	<s:if test="page_id == 6.5F"> <!-- Whole Wheat English Muffin with Peanut Butter & Banana -->
		<s:action name="recipe_slider" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>	
			<s:param name="image_type">RCPSLD5</s:param>
		</s:action>
		<s:action name="recipe_text" flush="true" executeResult="true" namespace="/">
		</s:action>
		<s:action name="steps" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>					
		</s:action>	
	</s:if>	
	<s:if test="page_id == 6.6F"> <!-- Celery Stick with Salty Almond Butter -->
		<s:action name="recipe_slider" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>	
			<s:param name="image_type">RCPSLD6</s:param>
		</s:action>
		<s:action name="recipe_text" flush="true" executeResult="true" namespace="/">
			</s:action>
		<s:action name="steps" flush="true" executeResult="true" namespace="/">		
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>					
		</s:action>	
	</s:if>
	<!-- Recipes Ends -->