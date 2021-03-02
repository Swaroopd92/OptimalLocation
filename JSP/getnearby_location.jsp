<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8"/>
		<title>Nearby Location</title>
		
		<%
		
		String place_coordinates = request.getParameter("textbox3");
		
		String latitude=request.getParameter("lat");
		
		String longitude =request.getParameter("lon");
		
		System.out.println("latitude   :"+latitude);
		
		System.out.println("longitude   :"+longitude);
		
		System.out.println("location  :"+place_coordinates);
		
		
		StringBuffer sb=new StringBuffer();
		%>
		
		
<!-- For Style -->
	<link href="<%=request.getContextPath() %>/HomeCSS/templatemo_style.css" rel="stylesheet" type="text/css" /> 
	
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
		<script src="<%=request.getContextPath()%>/example/js/es5-shim.min.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/example/js/es5-sham.min.js" type="text/javascript"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
		<script src="http://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
		
		<script type="text/javascript">
			$(document).ready(function(){
				$("#wn2").whatsnearby({ 
					zoom:15,
					width:"100%",
					placesRadius: 500,
					placesTypes: ['restaurant']
				});
			});
			
		</script>
		
		
		<script type="text/javascript">

		
		(function($){
			var WhatsNearby = {

				//=====================================================================
				// init : Public Function
				//
				// @params : options
				//		The various parameters (see this.options) passed to WhatsNearby.
				//
				// @params : elem
				//		Element which will be transformed into a WhatsNearby map.
				//
				// This function initialize WhatsNearby.
				//=====================================================================
				init: function(options, elem)
				{
					this.options = $.extend({},this.options,options);

					this.elem = elem;
					this.$elem = $(elem);

					this._build();

					return this;
				},

				options:{
					"address": '<%=place_coordinates%>',
					"lat": <%=latitude%>,
					"lng": <%=longitude%>,
					"width": 500,
					"height": 500,
					"zoom":9,
					"mapType": google.maps.MapTypeId.ROADMAP,
					"placeMainMarker": true,
					"mainMarkerIcon": "",
					"placesTypes": ['hotels'],
					"placesTypesIcon": [],
					"excludePlacesTypes": [],
					"excludeByKeywords": [],
					"placesRadius": 10,
					"disableDefaultUI": false,
					"style": [],
					"scrollwheel":true,
					"backgroundColor": "#000000"
				},

				_markup: "<div class='infowindow-markup'><strong>{{name}}</strong>{{vicinity}}</div>",

				//=====================================================================
				// _build : Private Function
				//
				// This function checks for an address passed as an attribute
				// (data-address) to the element. If no address is found and the address
				// option is not set, it uses the lat and lng options to setup the map.
				// If an address is found, we geocode it to get the LatLng coords.
				//=====================================================================
				_build: function(){
					var o = this.options;
					$(this.elem).width(o.width).height(o.height);

					google.maps.visualRefresh = true;

					if($(this.elem).attr("data-address")) {
						o.address = $(this.elem).attr("data-address");
					}

					if($(this.elem).html() != "") {
						this._markup = $(this.elem).html();
						$(this.elem).html("");
					}

					if(o.address == "") {
						this._setupMap(o.lat,o.lng);
					} else {
						this._geocodeAddress(o.address);
					}

					// Fix for maps all scrambled (@$!$ Google...) when using bootstrap
					$('head').append("<style>#"+$(this.elem).attr('id')+" * { max-width:none; }</style>");
				},

				//=====================================================================
				// _geocodeAddress : Private Function
				//
				// @params : address
				//		String representing a physical address (Eg: 1234 Brown St, Mtl)
				//
				// This function uses Google Geocoder to parse the address and return
				// its LatLng coords.
				//=====================================================================
				_geocodeAddress: function(address){
					var geocoder = new google.maps.Geocoder();
					geocoder.geocode({ "address": address}, this._locationFound.bind(this) );
				},

				//=====================================================================
				// _locationFound : Private Function
				//
				// @params : address
				//		String representing a physical address (Eg: 1234 Brown Street, 
				//		Mtl)
				//
				// This function uses Google Geocoder to parse the address and returns
				// its LatLng coords.
				//=====================================================================
				_locationFound: function(results, status){
					if(status == "OK") {
						this._setupMap(results[0].geometry.location.lat(), results[0].geometry.location.lng());
					} else {
						console.log("An error occured while geocoding the address.");
					}
				},

				//=====================================================================
				// _setupMap : Private Function
				//
				// @params : lat
				//		Number value containing the latitude coordinate of a position
				//
				// @params : lng
				//		Number value containing the longitude coordinate of a position
				//
				// Using Lat and Lng passed as parameters, this function generates a
				// Google Map. It places a marker on the center position (if 
				// placeMainMarker is set in the options) and searches for Places around
				// the center of the map (again only if places types are passed in 
				// options).
				// 
				//=====================================================================
				_setupMap: function(lat, lng){
					var o = this.options;
					var mapOptions = {
						zoom:o.zoom,
						mapTypeId: this.options.mapType,
						center: new google.maps.LatLng(lat, lng),
						
						disableDefaultUI: this.options.disableDefaultUI,
						backgroundColor: this.options.backgroundColor,
						scrollwheel: this.options.scrollwheel
						
						
					}
					this.map = new google.maps.Map(this.elem, mapOptions);

					this.map.set('styles', this.options.style);

					if(o.placeMainMarker) {
						this._placeMainMarker(lat, lng);
					}

					//if(o.placesTypes.length > 0) {
						this._searchPlaces(lat, lng);
					//}
				},

				//=====================================================================
				// _placeMainMarker : Private Function
				//
				// @params : lat
				//		Number value containing the latitude coordinate of a position
				//
				// @params : lng
				//		Number value containing the longitude coordinate of a position
				//
				// Using Lat and Lng passed as parameters, this function places a main
				// marker on the map using the passed position. A custom icon can be set
				// by passing an url to the mainMarkerIcon option.
				// 
				//=====================================================================
				
			
				_placeMainMarker: function(lat, lng){
					var mo = {};
					mo.map = this.map;
					mo.draggable = false;
					mo.animation = google.maps.Animation.DROP;
					mo.position = new google.maps.LatLng(lat, lng);

					if (this.options.mainMarkerIcon != "") {
						mo.icon = this.options.mainMarkerIcon;
					}

					var marker = new google.maps.Marker(mo);
				},

				//=====================================================================
				// _searchPlaces : Private Function
				//
				// @params : lat
				//		Number value containing the latitude coordinate of a position
				//
				// @params : lng
				//		Number value containing the longitude coordinate of a position
				//
				// Using Lat and Lng passed as parameters, this function searches for
				// nearby places (using Google Places API). Types of places can be 
				// filtered 
				// 
				//=====================================================================
				_searchPlaces: function(lat, lng){
					req = {};
					req.location = new google.maps.LatLng(lat, lng);
					req.radius = this.options.placesRadius;
					//req.types = this.options.placesTypes;

					this.infoWindow = new google.maps.InfoWindow();

					var service = new google.maps.places.PlacesService(this.map);
					service.nearbySearch(req, this._placesCallback.bind(this));

					service.nearbySearch(req, this._placesCallback1.bind(this));
				},

				//=====================================================================
				// _placesCallback : Private Function
				//
				// @params : results
				//		A JSON object containing all places found.
				//
				// @params : status
				//		Status of the request (successful or not)
				//
				// This function creates markers on the map using the information
				// contained in the JSON object result.
				// 
				//=====================================================================
				_placesCallback: function(results, status)
				{
					if(status == google.maps.places.PlacesServiceStatus.OK)
					{
						alert("Start============")
						for(var i = 0; i < 5; i++)
						{
							this._createPlaceMarker(results[i]);

							
						}
					}

					
					
				},

				_placesCallback1: function(results, status){

					var array=[];
					
					if(status == google.maps.places.PlacesServiceStatus.OK)
					{
						for(var i = 0; i < 5; i++){
							//this._createPlaceMarker(results[i]);

							var l = results[i].geometry.location

							array[i]=l+"~";
							
							//alert("Nearest Location :"+array[i]);
								
							
						}	
						
					}
					alert("Nearest Location :"+array);
					

					var textbox = document.getElementById("textbox");
		             textbox.value=array;

					
				},

				//=====================================================================
				// _createPlaceMarker : Private Function
				//
				// @params : place
				//		A JSON object containing the information of a place (Places API)
				//
				// This function filters the places excluding those containing types in
				// the excludePlacesTypes option. If the place is not excluded, it 
				// creates a marker and sets the content of the infowindow upon a click.
				// 
				//=====================================================================
				_createPlaceMarker: function(place){
					var excluded = false;

					var mainType = this._getType(place.types);

					for (var i = 0; i < this.options.excludePlacesTypes.length; i++)
					{
						for(var j = 0; j < place.types.length; j++)
						{
							if(this.options.excludePlacesTypes[i] == place.types[j])
							{
								excluded = true;
							}
						}
					};

					for (i = 0; i < this.options.excludeByKeywords.length; i++) {
						if(place.name.toLowerCase().indexOf(this.options.excludeByKeywords[i].toLowerCase()) >= 0){
							excluded = true;
						}
					}
					
					if(!excluded)
					{
						
						var placeLocation = place.geometry.location;
						
						
						 alert("Nearest Latitude and Logitude is :"+placeLocation);
						 
						var mo = {};
						mo.map = this.map;
						mo.position = placeLocation;

						if(this.options.placesTypesIcon.length > 0) {
							mo.icon = this.options.placesTypesIcon[mainType];
						}

						var marker = new google.maps.Marker(mo);
						marker.place = this._parseMarkup(place);

						
						 
						google.maps.event.addListener(marker, 'click', function()
						{
							alert("Full Address of Nearest Location: "+marker.place);
							this.infoWindow.setContent(marker.place);
							this.infoWindow.open(this.map, marker);
						}.bind(this));
					}
				},

				//=====================================================================
				// _parseMarkup : Private Function
				//
				// @params : place
				//		A JSON object containing the information of a place (Places API)
				//
				// This function uses the markup passed in the containing div or the
				// default markup (this._markup) and changes the placeholders to the
				// relevent variables contained within the places object.
				//
				// Any variable can be accessed ex: {{geometry.location.ob}} will return
				// the latitude of the place object.
				// 
				//=====================================================================
				_parseMarkup: function(place){
					return this._markup.replace(/{{([^}]+)}}/g, function(match, placeholder, offset, s){
						var a = placeholder.split(".");
						var iterations = a.length;
						var temp = place;
						for (var i = 0; i < iterations; i++) {
							temp = temp[a[i]];
							if(!temp) break;
						}
						return temp ? temp : "";
					});
				},

				//=====================================================================
				// _getType : Private Function
				//
				// @params : types
				//		An array containing types of places
				//
				// This function return the index of a matched type between the parameter
				// and the placesTypes option.
				// 
				//=====================================================================
				_getType: function(types){
					var type = -1;

					for ( var i = 0; i < types.length; i++ ) {
						if(this.options.placesTypes.indexOf(types[i]) != -1) {
							type = this.options.placesTypes.indexOf(types[i]);
							break;
						}
					}

					return type;
				},

				//=====================================================================
				// resize : Public Function
				//
				// This function asks Google API to resize the map (helps with rendering
				// issues)
				// 
				//=====================================================================
				resize: function(){
					google.maps.event.trigger(this.map, "resize");
				}
			};

			$.fn.whatsnearby = function(options) {
				if(this.length) {
					return this.each(function(){
						var wn = Object.create(WhatsNearby);
						wn.init(options, this);
						$.data(this, 'whatsnearby', wn);
					})
				}
			}
		})(jQuery);

		</script>
		
	</head>
	<body>
		<div class="container">
			<h2>Nearest Location</h2>
			<form action="<%=request.getContextPath()%>/FindFinalLocation" method="post">
			<input type="hidden"  name="lat" value="<%=latitude%>">
			<input type="hidden"  name="longi" value="<%=longitude%>">
			<input type="submit" class="mainBtn"  value="Find Fairness Calculation">
			<input type="hidden" id="textbox" name="nearbylocation">
			</form>
			<div class="well">
				<div id="wn2">
					<div class="infowindow-markup">
						<strong>{{name}}</strong><br/>
						{{Google Map}}
					</div>
				</div>
			</div>
		</div>
		
	</body>
</html>