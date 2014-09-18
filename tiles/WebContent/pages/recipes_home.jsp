<%@taglib uri="/struts-tags" prefix="s"%>

	<s:action name="imgslider" flush="true" executeResult="true" namespace="/">		
		<s:param name="site_id">1</s:param>
		<s:param name="page_id">6</s:param>	
		<s:param name="image_type">SLD</s:param>
	</s:action>
	<s:action name="text" flush="true" executeResult="true" namespace="/">
			<s:param name="site_id">1</s:param>
			<s:param name="page_id">6</s:param>
			<s:param name="sub_page_id">0</s:param>			
	</s:action>
	<s:action name="recipe_img_box" flush="true" executeResult="true" namespace="/">
		<s:param name="site_id">1</s:param>
		<s:param name="page_id">6</s:param>
		<s:param name="image_type">BOX</s:param>
	</s:action>	
	<s:action name="ibelt" flush="true" executeResult="true" namespace="/">
		<s:param name="site_id">1</s:param>
		<s:param name="page_id">6</s:param>
		<s:param name="image_type">BLT</s:param>
	</s:action>