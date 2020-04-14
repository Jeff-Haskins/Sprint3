$(document).ready(function(){
	//store user input to local storage
	$("#searchButton").on("click", function(e){
		localStorage.setItem("searchInput", $("#searchProductInput").val());
		searchProduct();
		//clears out the search
		localStorage.setItem("searchInput", "");
		//refresh page on search button
		$("#searchButton").click(function(){
			location.reload();
			
		})
	});
	
	//Called on page load
	searchProduct();
	//checks to see if user input in search matches anything in local storage
	function searchProduct(){
		var getInput = localStorage.getItem("searchInput");
		//if user input isnt null or empty it will iterate through the cards div array
		if(getInput != null || getInput != ""){
			var cardDivs = $(".card-title");
			for(var i=0; i<cardDivs.length; i++){
				//if the innertext doesnt have same input of user input it will hide all cards that doesn't contain the user input
				if(!cardDivs[i].innerText.toLowerCase().includes(getInput.toLowerCase())){
					var card=$(cardDivs[i]).parentsUntil(".col");
					console.log(card)
					$(card[2]).hide();
				}	
			}
		}e.preventDefault();
	}
});