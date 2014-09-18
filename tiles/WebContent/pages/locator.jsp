
 <div class="row searchable">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyA6nnm6_HtCGDExHk192aKBzSaGIAHBnhk&sensor=false" type="text/javascript"></script>
    <div class="top-band">
        <div class="large-12 small-12 columns faqbg ">
            <h3>Find Benefiber<sup>&reg;</sup> Near You.</h3>
        </div>
    </div>
    <div class="large-12 small-12 large-centered small-centered columns product-locator">
        <form class="custom" id="locateProducts" data-abide>
            <ul class="small-block-grid-1 large-block-grid-2  ">
                <li>
                    <select id="ddProduct" class="pl-dropdown">
                        <option value="">Choose a product</option>
                        <option value="BENEFIBERGR1">Benefiber<sup>&reg;</sup> Fiber Supplement Powder</option>
                    </select>
                    <small class="error">Please select a valid product.<br />
                    </small>
                </li>

                <li>
                    <div class="large-12 small-12 columns">
                        <div class="large-8 small-8 columns left-input">
                            <div class="large-9 small-9 columns ">
                                <input id="Zipcode" type="text" data-pattern="(^\d{5}$)|(^\d{5}-\d{4}$)" placeholder="Zip Code">
                                <small class="error">Please enter a valid zip code.</small>
                            </div>
                            <div class="large-3 small-3 columns">
                                <input type="hidden" name="latLong" id="latLong" />
                                <button id="btnSearch" class="button postfix">
                                    <img src="foundation/Images/fbny-search.png" /></button>
                            </div>
                        </div>
                        <div class="large-4 small-4 columns right right-input">
                            <button type="button" class="button map-view" id="btnView" onclick="toggleView(this);">Map View</button>
                        </div>
                    </div>
                </li>
                <li class="locator-msg">
                    <p>
                        Please select a product and a zip code to search stores.
                    </p>
                </li>
            </ul>
        </form>
    </div>
    <div class="large-12 small-12 columns">
        <div id="infoContainer">
            <table id="tableContainer" >
            </table>
        </div>
        <div class="large-12 small-12 columns" id="mapContainer" style="display: none;">
            <div class="flex-video" id="map">
            </div>
        </div>
    </div>

    </div>

    




    <div id="myConfirm" class="reveal-modal large">
        <div class="row">

            <ul class="disclaimer">
                <li>
                    <p>
                     Clicking on this link means that you have chosen to leave our website. While we believe that the website which you have selected to visit may be of interest to you, it is an independent website which is not under our control. As a result, we do not endorse its content and we have no responsibility for its content or privacy practices. If you do not wish to leave this site, click Cancel. Or, click OK to continue.
                    </p>

                    <div class="action">
                        <input type="submit" id="btnCancel" value="Cancel" class="secondary button disclaimerbutton disclaimerbutton-light" />
                        <input type="submit" id="btnOK" value="Ok" class="secondary button disclaimerbutton " />
                    </div>
                </li>
            </ul>

        </div>
        <a class="close-reveal-modal">&#215;</a>
    </div>