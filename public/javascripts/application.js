$(function($){//on document ready
	//autocomplete
	$('input.autocomplete').each(function(){
		var input = $(this);
		input.autocomplete(input.attr('autocomplete_url'),{
			matchContains:1,//also match inside of strings when caching
			//    mustMatch:1,//allow only values from the list
			//    selectFirst:1,//select the first item on tab/enter
			removeInitialValue:0//when first applying $.autocomplete
		});
	}); 
});


// External links
$(function(){
	// need to figure out how to concat seletors...
	$('a.external').click(function(){
		window.open(this.href);
		return false;
	});
	$('.external').find('a').click(function(){
		window.open(this.href);
		return false;
	});
	$('.external-img').find('a').click(function(){
		window.open(this.href);
		return false;
	});
});

// email obfuscation
$('span.email').nospam();