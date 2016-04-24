// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require turbolinks
//= require_tree .

$(document).ready(function(){
	//change SVG icons to CSS-editable stuff. 
	//Taken from http://stackoverflow.com/questions/11978995/how-to-change-color-of-svg-image-using-css-jquery-svg-image-replacement
	$('img.svg').each(function(){
		var $img = jQuery(this);
		var imgID = $img.attr('id');
		var imgClass = $img.attr('class');
		var imgURL = $img.attr('src');

		jQuery.get(imgURL, function(data) {
		    // Get the SVG tag, ignore the rest
		    var $svg = jQuery(data).find('svg');

		    // Add replaced image's ID to the new SVG
		    if(typeof imgID !== 'undefined') {
		        $svg = $svg.attr('id', imgID);
		    }
		    // Add replaced image's classes to the new SVG
		    if(typeof imgClass !== 'undefined') {
		        $svg = $svg.attr('class', imgClass+' replaced-svg');
		    }

		    // Remove any invalid XML tags as per http://validator.w3.org
		    $svg = $svg.removeAttr('xmlns:a');

		    // Replace image with new SVG
		    $img.replaceWith($svg);

		}, 'xml');
	});
	 $('.modal-trigger').leanModal();
	 $('select').material_select();
});

// DYNAMIC REMOVAL 


//DYNAMIC ADDING FOR DAILY LITTER
var counter = 4;
var limit = 20;
function addInput(divName){
     if (counter == limit)  {
          alert("You have reached the limit of adding " + counter + " inputs");
     }
     else {
         
          var dynamicdiv= document.createElement('div');
          dynamicdiv.setAttribute("class", "col s3");
          var div1 = document.createElement('div')
          div1.setAttribute("class", "row");
          div1.setAttribute("style", "margin-bottom:0px; margin-left:35px;");
          div1.innerHTML = "<h6 class='grey-text'>Piglet" + (counter+1) +" </h6>";
          var div2 = document.createElement('div');
          div2.setAttribute("class", "col s4 input-field");
          div2.innerHTML = "<input id='last_name' type='text' class='validate'>  <label for='last_name'>Sex</label>";
          var div3 = document.createElement('div');
		  div3.setAttribute("class", "col s4 input-field");
          div3.innerHTML = "<input id='last_name' type='text' class='validate'>  <label for='last_name'>Weight</label>";
          dynamicdiv.appendChild(div1);
          dynamicdiv.appendChild(div2);
          dynamicdiv.appendChild(div3);
          document.getElementById(divName).appendChild(dynamicdiv);
          counter++;
     }
}
 // div class='row'>
 //            <br>
 //              <div class='col s8'>
 //                <div class="row" style="margin-bottom:0px; margin-left:10px;">
 //                  <h6 style=>Piglet 1:</h6>
 //                </div>
 //                <div class='col s4 input-field'>
 //                  <input id='last_name' type='text' class='validate'>  
 //                  <label for='last_name'>Sex</label>
 //                </div>
 //                <div class='col s4 input-field'>
 //                  <input id='last_name' type='text' class='validate'>  
 //                  <label for='last_name'>Weight</label>
 //                </div>
 //              </div>
              
 //            </div>
 //       var mainDiv = document.getElementById('parent');

    // var newDiv = document.createElement('div');
    // newDiv.setAttribute('class','row-fluid'); 


    // var album_img=document.createElement('img');
    // album_img.setAttribute('class','img-responsive'); 


    // var aTag = document.createElement('a');
    // aTag.setAttribute('class','thumbnail t_clicked');

    // var img_div_3 = document.createElement('div');
    // img_div_3.setAttribute('class','col-lg-4 col-md-4 col-xs-6 thumb');

    // var img_div_2 = document.createElement('div');
    // img_div_2.setAttribute('class','span4');

    // mainDiv.appendChild(newDiv);
    // newDiv.appendChild(img_div_2); 
    // img_div_2.appendChild(img_div_3);
    // img_div_3.appendChild(aTag);
    // aTag.appendChild(album_img);
