<%@ taglib uri="/struts-tags" prefix="s"%>

<div class="row searchable">               
    <div class="small-12 large-12 columns ">
        <div class="large-12 small-12 columns other-likes ">
        	<h4>You may also be interested in:</h4>
        	
           	<s:if test="sub_menu_lst.size() > 0">           		
			<s:iterator value="sub_menu_lst" status="subMenuStatus">										      
	            <ul class="side-nav likings">
	                <li><b><a href="/recipes/irish-oatmeal"><s:property value="sub_page_txt" /></a></b></li>
	            </ul>	            
	         </s:iterator>
	         </s:if>
        </div>
    </div>
</div>
