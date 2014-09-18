var siteRootUrl = "";
var Videolist = new Array();
var prodlist = new Array();
var productInfo = function (Url, ProductName) { this.url = Url; this.productName = ProductName; this.prodview = 'prodview' };
function HPB() {
    //  $(".orbit-progress").remove()
    //  $(".orbit-timer").remove()
}

function OpenLink(url, element) {
    if (url.trim() === "")
        return false;
    if (document.domain !== url.toLocation().hostname) {
        ShareMessage(url, element);
    }
    else {
        if (url.indexOf('http') >= 0) {
            window.location = url;
        }
        else
            if (url.indexOf('http') >= 0) {
                window.location = url;
            }
            else
                window.location = siteRootUrl + url;
    }
}

String.prototype.toLocation = function () {
    var a = document.createElement('a');
    a.href = this;
    return a;
};


function ShareMessage(shareType, element) {
    var returnvalue = shareType;
    $('#myConfirm').foundation('reveal', 'open');
    $("#btnOK").off("click").on("click", function () {
        ShareLink(returnvalue, this);
    });
    $("#btnCancel").off("click").on("click", function () {
        Cancel(returnvalue, this);
    });
}

function Cancel(shareType, element) {
    $('#myConfirm').foundation('reveal', 'close');
}

function ShareLink(shareType, element) {
    var url;
    var linkType;
    var title = (element.getAttribute("title") === "" || element.getAttribute("title") === null) ? document.title
        : element.getAttribute("title");
    switch (shareType) {
        case "T":
            linkType = 'Twitter';

            url = "https://twitter.com/intent/tweet?text=" + encodeURI(title).replace('&', '%26') + "- Use Product as Directed. To report an adverse event, call (800) 452-0051.%0A" + "&url=" + window.location.href;

            break;
        case "F":
            linkType = 'Facebook';
            url = "http://www.facebook.com/sharer.php?t=" + encodeURI(title) + "&u=" + window.location.href;
            break;
        case "G":
            linkType = 'GooglePlus';
            url = "https://plus.google.com/share?url=" + window.location.href;
            break;
        default:
            linkType = '';
            url = shareType;
    }
    if (linkType !== '') {
        sharetag(linkType);
    }

    window.open(url, "_blank");
    Cancel(shareType, element);
}

function sharetag(socialType) {
    var s = s_gi(s_account);
    s.linkTrackVars = 'eVar20,events';
    s.linkTrackEvents = 'event8';
    s.eVar20 = socialType; // This value could be facebook, twitter, etc.
    s.events = 'event8';
    s.tl(this, 'o', 'social shares');
}

function Search(objectId) {
    if ($("#" + objectId).val().trim() != "")
        window.location.replace(siteRootUrl + "/Search?q=" + $("#" + objectId).val());
    //document.location.href = "/Search?q=" + $("#" + objectId).val();
}

function RenderVideo(vcId, vid, img, title) {
    var vidHtml = "";

    vidHtml += "<video  class='checkForNow' controls  id='" + vcId + "'>";
    //vidHtml += "<source src='/Videos/" + vid + ".m4v' />";
    var videoPath = siteRootUrl + "/Videos/";
    if (img.trim() === "") {
        videoPath = "";
    }

    vidHtml += "<source src='" + siteRootUrl + "/Videos/" + vid + ".ogg' type='video/ogg' />";
    vidHtml += "<source src='" + siteRootUrl + "/Videos/" + vid + ".mp4' type='video/mp4' />";
    vidHtml += "<source src='" + siteRootUrl + "/Videos/" + vid + ".webm' type='video/webm' />";
    vidHtml += "<object type='application/x-shockwave-flash' data='movie.SWF'>";
    vidHtml += "<param name='movie' value='__FLASH__.SWF' />";
    vidHtml += "<param name='flashvars' value='controlbar=over&amp;image=/Images/Large/" + img + "&amp;file=" + siteRootUrl + "/Videos/" + vid + ".mp4' />";
    vidHtml += "<img src='" + siteRootUrl + "/images/" + img + "' width='640' height='360' alt='__TITLE__' title='No video playback capabilities, please download the video below' />";
    vidHtml += "</object></video>";
    $("#videoTitle").html(title);
    $("#videoModal").find(".flex-video").html(vidHtml);

    var video = document.getElementById(vcId);
    if (Videolist.indexOf(vcId) < 0) {
        Videolist.push(vcId);
        videotag(vcId, vid);
    }

    $('#videoModal').off('opened').on('opened', function () {
        //alert("It's opened");
        video.play();
    });

    $('#videoModal').unbind('close').bind('close', function () {
        //alert("It fired close");
        video.pause();
    });

    //$('#videoModal').bind('closed', function () {
    //    alert("It's closed");
    //});

    $('#videoModal').foundation('reveal', 'open');

    //if (video.paused) {
    //    alert("Video is paused");
    //    //video.play();
    //}

    if (video.readyState < video.HAVE_FUTURE_DATA || video.readyState) {
        //  alert("Video is paused");
        video.play();
    }
}

function videotag(Id, videoName) {
    var myVideo = document.getElementById(Id);//tag param
    myVideo.addEventListener('play', myHandler, false);
    myVideo.addEventListener('seeked', myHandler, false);
    myVideo.addEventListener('seeking', myHandler, false);
    myVideo.addEventListener('pause', myHandler, false);
    myVideo.addEventListener('ended', myHandler, false);
    function myHandler(e) {
        var video = document.getElementsByTagName('video')[0];
        var mediaName = videoName;//tag param
        var mediaLength = video.duration;
        var mediaPlayerName = "HTML5 Basic Player"//tag param
        /* Define Video offset */
        if (video.curremtTime > 0) {
            mediaOffset = Math.floor(video.currentTime);
        }
        else {
            mediaOffset = 0;
        };
        /* Call on Video start*/
        if (e.type == "play") {
            if (mediaOffset == 0) {
                s.Media.open(mediaName, mediaLength, mediaPlayerName);
                s.Media.play(mediaName, mediaOffset);
            }
            else {
                s.Media.play(mediaName, mediaOffset);
            };
        };
        /* Call on scrub start*/
        if (e.type == "seeking") {
            s.Media.stop(mediaName, mediaOffset);
        };
        /* Call on scrub stop*/
        if (e.type == "seeked") {
            s.Media.play(mediaName, mediaOffset);
        };
        /* Call on pause*/
        if (e.type == "pause") {
            s.Media.stop(mediaName, mediaOffset);
        };
        /* Call on Video Complete*/
        if (e.type == "ended") {
            s.Media.stop(mediaName, mediaLength, mediaPlayerName);
            s.Media.close(mediaName);
            mediaOffset = 0;
        };
        s.tl();
    };
}

function goUrl(siteUrl, url) {
    if (siteUrl === '')
        return true;
    if (url.indexOf('http') >= 0) {
        OpenLink(url, new Object());
        return false;
    }
    else
        window.location = siteUrl + url;
}


var map;
var currentMarker;
var isDataLoaded = false;
var prevZip = "";
var markersArray = [];
function initMode() {
    $("#tableContainer").children().remove();
    prevZip = undefined;
    clearOverlays();
}

function updateCenterMap(point) {
    var circleOptions = {
        center: point,
        radius: 32186//, /* 20 miles */
    }
    var myCircle = new google.maps.Circle(circleOptions);
    map.fitBounds(myCircle.getBounds());
    map.setZoom(12);
}

function initializeMap() {
    var center = new google.maps.LatLng(40.8596, -74.4233);
    var mapOptions = {
        zoom: 12,
        center: center,
        disableDoubleClickZoom: true,
        zoomControlOptions: {
            position: google.maps.ControlPosition.TOP_RIGHT
        },
        panControlOptions: {
            position: google.maps.ControlPosition.TOP_RIGHT
        },
        mapTypeControlOptions: {
            position: google.maps.ControlPosition.TOP_RIGHT
        }
    }
    map = new google.maps.Map(document.getElementById('map'), mapOptions);
}

function clearOverlays() {
    for (var i = 0; i < markersArray.length; i++) {
        markersArray[i].setMap(null);
    }
    markersArray = [];
}

function processResults(stores) {
    var infowindow = new google.maps.InfoWindow();
    var marker, i;
    var results = $('#tableContainer');
    currentMarker = undefined;
    results.children().remove();
    clearOverlays();

    for (i = 0; i < stores.length; i++) {
        var latLong = new google.maps.LatLng(stores[i].latitude, stores[i].longitude);
        var icon = siteRootUrl + "/images/pins/number_" + (i + 1) + ".png";
        marker = new google.maps.Marker({
            position: latLong,
            map: map,
            icon: icon,
            id: i
        });

        marker.html = "<div style='width:auto;'><p>" + "<span class='pharmacy-name'>" + stores[i].name + "</span><br/><span class='pharmacy-add'>" + stores[i].address + "<br/>" + stores[i].city + ", " + stores[i].zip + "<br/><br/>" + "</span><span class='pharmacy-phone'>Phone: <a href='tel:" + stores[i].phone + "'>" + stores[i].phone + "</a></span></p></div>";
        markersArray.push(marker);
        var row = $("<tr id='store_" + i + "'></tr>").attr('class', 'row-result');
        var li = $("<li></li>").attr('class', 'no-space');
        var a = $("<a></a>").attr({
            'href': '#',
            'class': 'thumbnail'
        });
        var img = $("<td></td>").attr('class', 'pin-container large-3 small-3').css('background', 'url(' + icon + ') center center no-repeat');

        a.click(function (e) {
            e.preventDefault();
        });

        var desc = $("<td></td>").attr('class', 'result-desc large-9 small-9').append(
            $("<p style='margin-bottom: 0;'></p>").attr('class', 'text-left').html(
                "<span class='pharmacy-name'>" + stores[i].name + "</span><br/>" + stores[i].address + "<br/>" + stores[i].city + ", " + stores[i].state + " " + stores[i].zip + "<br/><span class='pharmacy-miles'>" + stores[i].distance + " MI</span>"
                )
            );

        row.append(img).append(desc);
        google.maps.event.addListener(marker, 'click', (function (marker, i) {
            return function () {
                infowindow.setContent(marker.html);
                infowindow.open(map, marker);
            }
        })(marker, i));
        results.append(row);
        row.click(function () {
            openMarker(this.id);
        }).data('marker', marker);
    }
}

function openMarker(rowId) {
    selectResult($('.row-result#' + rowId));
    $("#infoContainer").hide();
    $("#mapContainer").show();
    $("#btnView").html("List View");
    currentMarker = rowId;
    google.maps.event.trigger(map, "resize");
    var marker = $("#" + rowId).data('marker');

    if (marker) {
        google.maps.event.trigger(marker, 'click');
        updateCenterMap(marker.position);
    }
}

function successFunction(position) {
    $("#latLong").val("34.676578,-86.539497");
}

function displayError() {
    //alert("error");
}

function searchByLatLong(product) {
    startSearch();
    var latLong = $("#latLong").val().split(',');
    var lat = latLong[0];
    var long = latLong[1];
    search("item=" + product + "&lat=" + lat + "&long=" + long);
    initializeMap();
}

function getLatLong() {
    if (navigator.geolocation) {
        var timeoutVal = 10 * 1000 * 1000;
        navigator.geolocation.getCurrentPosition(
            successFunction,
            displayError, {
                enableHighAccuracy: true,
                timeout: timeoutVal,
                maximumAge: 0
            }
        );
    }
}

function searchStores(product, zip) {
    if (zip !== prevZip) {
        prevZip = zip;
        isDataLoaded = true;
        startSearch();
        search("item=" + product + "&zip=" + zip);
        endSearch();
    }
    var errorContainer = $(".locator-msg");
    var results = $("#tableContainer");
    if (results.children().length > 0) {
        errorContainer.hide();
    }
    else {
        errorContainer.show().html("<p>No results found.</p>");
    }
}
function search(params) {
    $.ajax({
        url: siteRootUrl + '/products/LocatorJSON?' + params,
        dataType: 'json',
        async: false,
        success: function (result) {
            processResults(result.nearbyStores);
            console.log(result);
        }
    });
}
function toggleView(obj) {
    if (isMapView()) {
        $('#locateProducts').submit();
        $('#mapContainer').css('display', 'none');
        $('#infoContainer').css("display", 'block');
        $(obj).html("Map View");
    } else {
        $('#locateProducts').submit();
        if (!currentMarker) {
            currentMarker = "store_0";
        }
        openMarker(currentMarker);
        $('#mapContainer').css('display', 'block');
        $('#infoContainer').css("display", 'none');
        $(obj).html("List View");
    }
    google.maps.event.trigger(map, "resize");
}
function isMapView() {
    return $('#infoContainer').css('display') == 'none';
}

function selectResult(row) {
    $('.row-result').each(function () {
        $(this).removeClass('active');
    });

    $(row).addClass('active');
}

//var clientIP;
//$.getJSON("//smart-ip.net/geoip-json?callback=?", function (data) {
//    clientIP = data.host;
//});

function startSearch() {
    $('#infoContainer').css('display', 'none').addClass('searching');
    $("#btnView").html("Map View");
    $('#mapContainer').css('display', 'none');
}

function endSearch() {
    $('#infoContainer').removeClass('searching');
    $('#infoContainer').css('display', 'block');
}

function isPhoneView() {
    var map = $('#mapContainer');
    if (map.css('display') == 'none') {
        return true;
    } else {
        return false;
    }
}


// Validates the date and returns true if date is valid otherwise false
function isValidDate(year, month, day) {
    var d = new Date(year, month - 1, day);  // month is 0 to 11

    // compare the value back to orginal values then it is a valid date.
    if (d.getFullYear() != year || d.getMonth() != month - 1 || d.getDate() != day)
        return false;
    else
        return true;
}

// Calculate age and check eligibilty of number of years.
function isValidAge(year, month, date, currentDate, reqAge) {
    var birthdayDate = new Date(year, month - 1, date); // Month is like index: January is at 0
    //var dateNow = new Date();
    var dateNow = currentDate;
    var years = dateNow.getFullYear() - birthdayDate.getFullYear();
    var months = dateNow.getMonth() - birthdayDate.getMonth();
    var days = dateNow.getDate() - birthdayDate.getDate();
    if (isNaN(years)) {
        return false;
    }
    else {
        if (months < 0 || (months == 0 && days < 0)) {
            years = parseInt(years) - 1;
        }
    }

    return years >= reqAge;
}

function Resetmenu() {
    if ($(".block-background").hasClass("show-for-small")) {
        $(".block-background").removeClass("show-for-small")
        $(".block-background").addClass("hide-for-small");
    }
}

$(".menu-icon").click(function () {
    if ($(".block-background").hasClass("hide-for-small")) {
        $(".block-background").removeClass("hide-for-small");
        $(".block-background").addClass("show-for-small");
    }
    else {
        $(".block-background").addClass("hide-for-small");
        $(".block-background").removeClass("show-for-small");
    }
});

window.addEventListener('orientationchange', Resetmenu);

var tempArr = ["http://www.novartis.com/", "https://www.benefiber.com/"];

// This line should get removed after dynamic data is loaded for Products List.
prodlist.push(new productInfo('/products/powder'.toLowerCase(), 'Benefiber® Powder'));

function updateLinks() {
    var links = $("a[href]");

    for (var i = 0; i < links.length; i++) {
        var curLink = links[i];
        if (curLink.href.toLowerCase().indexOf("http") == 0 || curLink.href.toLowerCase().indexOf(document.location.origin + siteRootUrl) == 0) {
            if (document.domain !== curLink.href.toLocation().hostname) {
                // alert("External url  " + curLink.href);                     
                if (tempArr.indexOf(curLink.href) < 0) {
                    $(curLink).on("click", function () {
                        OpenLink($(this).attr("href"), curLink);
                        return false;
                    });
                }
            }
            //else {
            //    var prodObj = getProductByUrl($(curLink).attr("href"));
            //    if (prodObj) {
            //        $("a[href='" + $(curLink).attr("href") + "']").off("click").on("click", function () {
            //            productData("prodView", getProductByUrl($(this).attr("href")));
            //        });
            //    }
            //}
        }

    }
}

function getMatchingException(item) {
    for (var i = 0; i < tempArr.length; i++) {
        if (tempArr[i].indexOf(item) >= 0) {
            return tempArr[i];
        }
    }
}
function getProductByUrl(url) {
    var prodObj;
    for (var i = 0; i < prodlist.length; i++) {
        if (prodlist[i].url.toLowerCase() == url.toLowerCase()) {
            prodObj = prodlist[i];
            break;
        }
    }
    return prodObj;
}

function htmlDecode(value) {

    return $('<div/>').html(value).text();
}
function htmlEncode(value) {

    return $('<div/>').text(value).html();
}
function productData(productview, obj) {
    s.events = productview;
    s.products = htmlDecode(obj.productName);//productname;
    /************* DO NOT ALTER ANYTHING BELOW THIS LINE ! **************/
    var s_code = s.t(); if (s_code) document.write(s_code)//-->
}
function floodLightTagging(inplType, type, category) {
    if (inplType == 'iframe')
    { floodLightByIframe(type, category); }
    else
    { floodLightByImage(type, category); }
}
function floodLightByIframe(type, category) {
    var axel = Math.random() + "";
    var a = axel * 10000000000000;
    document.write('<iframe src="http://3576711.fls.doubleclick.net/activityi;src=3576711;' + type + ';cat=' + category + ';ord=' + a + '?" width="1" height="1" frameborder="0" style="display:none"></iframe>');
}
function floodLightByImage(type, category) {
    var axel = Math.random() + "";
    var a = axel * 10000000000000;
    document.write('<img src="http://ad.doubleclick.net/activity;src=3576711;type=' + type + ';cat=' + category + ';ord=' + a + '?" width="1" height="1" frameborder="0" alt=""/>');
}
