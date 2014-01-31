// Detect whether displaying *.swf is possible
// https://stackoverflow.com/questions/998245

var hasFlash = false;
try {
  var fo = new ActiveXObject('ShockwaveFlash.ShockwaveFlash');
  if (fo) {
    hasFlash = true;
  }
} catch (e) {
  if (navigator.mimeTypes
        && navigator.mimeTypes['application/x-shockwave-flash'] != undefined
        && navigator.mimeTypes['application/x-shockwave-flash'].enabledPlugin) {
    hasFlash = true;
  }
}


// Show the proper div

$(document).ready(function(){ 

	if (hasFlash == true) {
		$('.zemusflashembed').show();
	} 
	else {
		$('.zemusnoflash').show();
	}

});