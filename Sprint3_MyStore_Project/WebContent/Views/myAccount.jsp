<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Pawsco Wholesale</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link href="../Style/myAccount.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../scripts/myAccount.js"></script>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="../scripts/wListToCart.js"></script>
<script src="../Javascript/temp.js"></script>
<script src="../Javascript/wishlist.js"></script>

</head>
<body>
	<%@ include file="/Views/header.jsp"%>

	<div class="container padding-bottom-3x mb-2">
		<div class="row">
			<div class="col-lg-4">
				<p id="profilehead">Profile Info</p>
				<p id="profile">
					<script>
						getFormData();
					</script>
				</p>
				<nav class="list-group">

					<a class="list-group-item with-badge" href="#"></a> <a
						class="list-group-item with-badge active" href="#"
						onclick="showHideWishList()"><i class="fa fa-heart"></i>Wishlist</a>

					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-info panel-shadow">
								<div class="panel-body">
									<div class="table-responsive" id="wishlistDiv"></div>
								</div>
							</div>
						</div>
					</div>

					<!-- 					<div class="wishList col-lg-8" style="display: none;"> -->
					<!-- 						<div class="padding-top-2x mt-2 hidden-lg-up"></div> -->
					<!-- 						Wishlist Table -->
					<!-- 						<div class="container"> -->
					<!-- 						<tbody> -->

					<!-- 							<tr> -->
					<!-- 								<td> -->


					<!-- 					Card image -->
					<!-- 									<div class="view overlay"> -->
					<!-- 										<img class="card-img-top" src="../Image/nulo.jpg" -->
					<!-- 											alt="Card image cap" -->
					<!-- 											style="width: 250px; height: 400px; display: block; margin-left: auto; margin-right: auto;"> -->
					<!-- 										<a href="#!"> -->
					<!-- 											<div class="mask rgba-white-slight"></div> -->
					<!-- 										</a> -->

					<!-- 									 Card content -->
					<!-- 									<div class="card-body"> -->
					<!-- 										<div class="collapse-content"> -->
					<!-- 											Title -->
					<!-- 											<h4 class="card-title">Nulo FreeStyle Limited+</h4> -->
					<!-- 											<h4 class="price">$74.99</h4> -->
					<!-- 											<form> -->
					<!-- 												<label for="qty">Qty</label> <input type="number" -->
					<!-- 													id="quantity" name="quantity" min="1" max="10" value="1"> -->
					<!-- 												<input type="submit" -->
					<!-- 													class="btn btn-outline-primary waves-effect" -->
					<!-- 													value="Add To Cart"> -->
					<!-- 											</form> -->
					<!-- 											Text -->
					<!-- 											<p class="card-text collapse" id="collapseContent1">Have -->
					<!-- 												a dog with food sensitivities? Try our FreeStyle Limited+ -->
					<!-- 												Puppy & Adult Salmon recipe, which includes patented -->
					<!-- 												probiotic GanedenBC30. This probiotic improves digestive and -->
					<!-- 												immune health to keep your canine happy and healthy. This -->
					<!-- 												single-source protein recipe is made without chicken, -->
					<!-- 												chicken fat, eggs, peas, pea fiber, white potato or tapioca, -->
					<!-- 												which cuts out a lot of potential allergens allowing your -->
					<!-- 												dog to get back to basics when it comes to nutrition.</p> -->
					<!-- 											<a -->
					<!-- 												class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed" -->
					<!-- 												data-toggle="collapse" href="#collapseContent1" -->
					<!-- 												aria-expanded="false" aria-controls="collapseContent1">Read -->
					<!-- 												More</a> -->


					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 									</div> -->
					<!-- 								</td> -->
					<!-- 								<td class="text-center"><a class="remove-from-cart" -->
					<!-- 									href="#" data-toggle="tooltip" title="" -->
					<!-- 									data-original-title="Remove item"><i class="icon-cross"></i></a></td> -->
					<!-- 							</tr> -->
					<!-- 							<tr> -->
					<!-- 								<td> -->
					<!-- 									<div class="view overlay"> -->
					<!-- 										<img class="card-img-top" src="../Image/kong.png" -->
					<!-- 											alt="Card image cap" style="margin-top: 70px;"> <a -->
					<!-- 											href="#!"> -->
					<!-- 											<div class="mask rgba-white-slight"></div> -->
					<!-- 										</a> -->
					<!-- 									 Card content -->
					<!-- 									<div class="card-body"> -->
					<!-- 										<div class="collapse-content"> -->
					<!-- 											Title -->
					<!-- 											<h4 class="card-title">KONG Classic Dog Toy, X-Large</h4> -->
					<!-- 											<h4 class="price">$9.99</h4> -->
					<!-- 											<form> -->
					<!-- 												<label for="qty">Qty</label> <input type="number" -->
					<!-- 													id="quantity" name="quantity" min="1" max="10" value="1"> -->
					<!-- 												<input type="submit" -->
					<!-- 													class="btn btn-outline-primary waves-effect" -->
					<!-- 													value="Add To Cart"> -->
					<!-- 											</form> -->
					<!-- 											Text -->
					<!-- 											<p class="card-text collapse" id="collapseContent4">The -->
					<!-- 												KONG Classic is the gold standard of dog toys and has become -->
					<!-- 												the staple for dogs around the world for over forty years. -->
					<!-- 												Offering enrichment by helping satisfy dogs' instinctual -->
					<!-- 												needs, the KONG Classic's unique all-natural red rubber -->
					<!-- 												formula is ultra-durable with an erratic bounce that is -->
					<!-- 												ideal for dogs that like to chew while also fulfilling a -->
					<!-- 												dog's need to play. Want to extend play time? Be sure to -->
					<!-- 												stuff with tempting bits of kibble and entice with a dash of -->
					<!-- 												peanut butter. Add to the funs by adding KONG Snacks and -->
					<!-- 												topping with KONG Easy Treat.</p> -->
					<!-- 											<a -->
					<!-- 												class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed" -->
					<!-- 												data-toggle="collapse" href="#collapseContent4" -->
					<!-- 												aria-expanded="false" aria-controls="collapseContent4">Read -->
					<!-- 												More</a> -->

					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 									</div> -->
					<!-- 								</td> -->
					<!-- 								<td class="text-center"><a class="remove-from-cart" -->
					<!-- 									href="#" data-toggle="tooltip" title="" -->
					<!-- 									data-original-title="Remove item"><i class="icon-cross"></i></a></td> -->
					<!-- 							</tr> -->
					<!-- 							<tr> -->
					<!-- 								<td> -->
					<!-- 									<div class="view overlay"> -->
					<!-- 										<img class="card-img-top" src="../Image/petfurniture.jpg" -->
					<!-- 											alt="Card image cap"> <a href="#!"> -->
					<!-- 											<div class="mask rgba-white-slight"></div> -->
					<!-- 										</a> -->
					<!-- 									 Card content -->
					<!-- 									<div class="card-body"> -->
					<!-- 										<div class="collapse-content"> -->
					<!-- 											Title -->
					<!-- 											<h4 class="card-title">Elegant Wooden Pet Bed</h4> -->
					<!-- 											<h4 class="price">$49.99</h4> -->
					<!-- 											<form> -->
					<!-- 												<label for="qty">Qty</label> <input type="number" -->
					<!-- 													id="quantity" name="quantity" min="1" max="10" value="1"> -->
					<!-- 												<input type="submit" -->
					<!-- 													class="btn btn-outline-primary waves-effect" -->
					<!-- 													value="Add To Cart"> -->
					<!-- 											</form> -->
					<!-- 											Text -->
					<!-- 											<p class="card-text collapse" id="collapseContent7">Give -->
					<!-- 												your pet a pet bed designed with elegance, entirely made of -->
					<!-- 												durable wood construction with a beautiful dark brown -->
					<!-- 												finish. The elevated design provides good ventilation for -->
					<!-- 												your pet to enjoy a comfortable sleep. Easy to assemble. For -->
					<!-- 												dogs and cats up to 44 lbs..</p> -->
					<!-- 											<a -->
					<!-- 												class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed" -->
					<!-- 												data-toggle="collapse" href="#collapseContent7" -->
					<!-- 												aria-expanded="false" aria-controls="collapseContent7">Read -->
					<!-- 												More</a> -->

					<!-- 										</div> -->

					<!-- 									</div> -->
					<!-- 									</div> -->
					<!-- 								</td> -->
					<!-- 								<td class="text-center"><a class="remove-from-cart" -->
					<!-- 									href="#" data-toggle="tooltip" title="" -->
					<!-- 									data-original-title="Remove item"><i class="icon-cross"></i></a></td> -->
					<!-- 							</tr> -->

					<!-- 						</tbody> -->
					<!-- 						</div> -->
					<!-- 						<hr class="mb-4"> -->
					<!-- 					</div> -->
				</nav>
			</div>

		</div>
	</div>
	
	<%@ include file="/Views/footer.jsp"%>
</body>
</html>