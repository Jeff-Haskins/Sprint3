<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link href="${pageContext.request.contextPath}/Style/product.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/filter.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

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
<script src="${pageContext.request.contextPath}/Javascript/temp.js"></script>


</head>
<body>

	<%@ include file="/header.jsp"%>
	<div>
		<div id="resetPage">
			<button type="button" class="btn btn-primary">Show All</button>
		</div>
		<div id="price" class=".nav-item dropdown" style="width: 5%">
			<a class="nav-link dropdown-toggle btn btn-success" href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Price </a>

			<div class="dropdown-menu" aria-labelledby="navbarDropdown">
				<a class="dropdown-item" href="#" id="lessThanFive">Less than $5</a>
				<a class="dropdown-item" href="#" id="tenToTwenty">$10-$20</a> <a
					class="dropdown-item" href="#" id="twentyToFifty">$20-$50</a> <a
					class="dropdown-item" href="#" id="fiftyToOneHundred">$50-$100</a>
			</div>

			<div id="filter" class=".nav-item dropdown" style="width: 130%">
				<a class="nav-link dropdown-toggle btn btn-danger" href="#"
					id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Filter </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#" onclick="showAll();">Show All</a>
					<a class="dropdown-item" href="#" onclick="showFood();">Food</a> <a
						class="dropdown-item" href="#" onclick="showToys();">Toys</a> <a
						class="dropdown-item" href="#" onclick="showFurniture();">Beds
						& Furniture</a> <a class="dropdown-item" href="#"
						onclick="showGrooming();">Grooming</a> <a class="dropdown-item"
						href="#" onclick="showApparel();">Apparel</a>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="dog-food row row-cols-1 row-cols-md-3">
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product1">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/nulo.jpg"
								alt="Card image cap"
								style="width: 250px; height: 400px; display: block; margin-left: auto; margin-right: auto;">
							<a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>
						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Nulo FreeStyle Limited+</h4>
								<h4 class="price">$74.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent1">Have a
									dog with food sensitivities? Try our FreeStyle Limited+ Puppy &
									Adult Salmon recipe, which includes patented probiotic
									GanedenBC30. This probiotic improves digestive and immune
									health to keep your canine happy and healthy. This
									single-source protein recipe is made without chicken, chicken
									fat, eggs, peas, pea fiber, white potato or tapioca, which cuts
									out a lot of potential allergens allowing your dog to get back
									to basics when it comes to nutrition.</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent1"
									aria-expanded="false" aria-controls="collapseContent1">Read
									More</a>


							</div>
						</div>
					</div>
					<!-- Card -->
				</div>
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product2">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/blue.jpg"
								alt="Card image cap" style="margin-top: 50px;"> <a
								href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Blue Buffalo</h4>
								<h4 class="price">$3.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent2">Real
									beef, chicken, fish, lamb or turkey dinners made from natural
									ingredients enhanced with vitamins and minerals, they're rich
									in taste and healthy nutrition.</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent2"
									aria-expanded="false" aria-controls="collapseContent2">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
				</div>
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product3">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/dental.jpg"
								alt="Card image cap" style="margin-top: 20px;"> <a
								href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Kirkland Signature Dental Chews,
									72-count</h4>
								<h4 class="price">$19.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent3">Every
									dog deserves clean teeth! Grain-free and gluten-free dental
									chews are safely digestible, with no artificial colors, flavors
									or preservatives. The chews are two-sided, with a groove and
									multiple levels of ridges and nubs to help clean teeth and
									reduce plaque and tartar from a variety of angles: the easy
									"paw-grip" handle is designed to work with your dog's natural,
									instinctive chewing style.</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent3"
									aria-expanded="false" aria-controls="collapseContent3">Read
									More</a>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="content3" class="dog-toy row row-cols-1 row-cols-md-3">
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product4">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/kong.png"
								alt="Card image cap" style="margin-top: 70px;"> <a
								href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">KONG Classic Dog Toy, X-Large</h4>
								<h4 class="price">$9.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"> <input type="submit"
										id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent4">The KONG
									Classic is the gold standard of dog toys and has become the
									staple for dogs around the world for over forty years. Offering
									enrichment by helping satisfy dogs' instinctual needs, the KONG
									Classic's unique all-natural red rubber formula is
									ultra-durable with an erratic bounce that is ideal for dogs
									that like to chew while also fulfilling a dog's need to play.
									Want to extend play time? Be sure to stuff with tempting bits
									of kibble and entice with a dash of peanut butter. Add to the
									funs by adding KONG Snacks and topping with KONG Easy Treat.</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent4"
									aria-expanded="false" aria-controls="collapseContent4">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
					<!-- Card -->
				</div>
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product5">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/starwars.jpg"
								alt="Card image cap"> <a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">STAR WARS Darth Vader Rope Dog Toy,
									Large</h4>
								<h4 class="price">$11.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent5">The Star
									Wars Darth Vader Rope Dog Toy gets your pup excited to chase
									him across the galaxy during spirited games of fetch with a
									loud and exciting squeak. A black and silver braided rope
									provides a satisfying and beneficial texture to chew on.</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent5"
									aria-expanded="false" aria-controls="collapseContent5">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
					<!-- Card -->
				</div>
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product6">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/deadpool.jpg"
								alt="Card image cap"> <a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Marvel Deadpool Rubber Dog Toy,
									Small</h4>
								<h4 class="price">$6.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent6">The
									Marvel Deadpool Rubber Dog Toy is geared up and ready to rally
									your dog's love for tugging and chasing. A satisfying rubber
									texture, the soft plush of the red-suited X-Man trainee and a
									captivating squeaker load up this dog toy for alluring playtime
									fun.</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent6"
									aria-expanded="false" aria-controls="collapseContent6">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
					<!-- Card -->
				</div>
			</div>
			<div id="content4" class="dog-furniture row row-cols-1 row-cols-md-3">
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product7">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/petfurniture.jpg"
								alt="Card image cap"> <a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Elegant Wooden Pet Bed</h4>
								<h4 class="price">$49.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent7">Give
									your pet a pet bed designed with elegance, entirely made of
									durable wood construction with a beautiful dark brown finish.
									The elevated design provides good ventilation for your pet to
									enjoy a comfortable sleep. Easy to assemble. For dogs and cats
									up to 44 lbs..</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent7"
									aria-expanded="false" aria-controls="collapseContent7">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
					<!-- Card -->
				</div>
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product8">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/dogbed.jpg"
								alt="Card image cap"> <a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Orthopedic Dog Bed</h4>
								<h4 class="price">$29.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent8">Orthopedic
									base with layer of cooling memory foam for comfort and support
									100% recycled polyester fibre filled bolsters Upholstery grade
									fabric cover with zippers for easy washing Foam base is
									removable for washing</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent8"
									aria-expanded="false" aria-controls="collapseContent8">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
					<!-- Card -->
				</div>
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product9">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/dogcrate.jpg"
								alt="Card image cap"> <a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Studio Dog Crate</h4>
								<h4 class="price">$89.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent9">Designed
									as a piece of contemporary furniture, it's more than just an
									indoor dog crate. It's the perfect compliment to your home and
									fulfills your dog's natural instinct to have a den that they
									can call their own. It brilliantly solves the issue of where to
									store all of your dog's accessories. The optional closet is a
									versatile addition to your dog crate furniture and an
									incredibly practical solution for storing your dog's coat,
									treats, favorite toy and lead all in one handy place.</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent9"
									aria-expanded="false" aria-controls="collapseContent9">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
					<!-- Card -->
				</div>
			</div>
			<div id="div5" class="dog-grooming row row-cols-1 row-cols-md-3">
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product10">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/nailclipper.jpg"
								alt="Card image cap"> <a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Nail Clipper</h4>
								<h4 class="price">$4.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent10">These
									steel pet nail clippers help you quickly and easily trim your
									dog's nails, keeping them comfy and healthy. Long nails can
									cause your dog discomfort, even pain if they get snagged or
									infected. With heavy duty dog nail clippers, your dog's toes
									will be safe and healthy. The sharp blade ensures a precise,
									quick cut that trims the nail rather than crushes it. A precise
									trim with the dog nail clippers helps you cut just where you
									want without nicking the quick in the nail.</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent10"
									aria-expanded="false" aria-controls="collapseContent10">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
					<!-- Card -->
				</div>
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product11">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/brush.jpg"
								alt="Card image cap"> <a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">FURminator Fur Brush</h4>
								<h4 class="price">$7.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent11">The
									FURminator Undercoat deShedding Tool for dogs reduces loose
									hair from shedding up to 90% with regular use. The stainless
									steel deShedding edge reaches through topcoat to safely and
									easily remove loose hair and undercoat without damaging topcoat
									or cutting skin when used as directed. Use the FURejector
									button to release hair with ease, making deShedding easier than
									ever! The ergonomic handle provides you with comfort, while the
									curved edge conforms to your pet's natural build and shape for
									their comfort.</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent11"
									aria-expanded="false" aria-controls="collapseContent11">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
					<!-- Card -->
				</div>
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product12">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/burtsbee.jpg"
								alt="Card image cap" style="margin-top: 150px;"> <a
								href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Burt's Bee Shampoo</h4>
								<h4 class="price">$4.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent12">Bring
									natureâs best to your pets with Burtâs Bees Natural Pet
									Care. Experience the full line of gentle pet grooming products
									featuring natural ingredients including honey, chamomile, and
									lavender. All products are specially formulated for pets,
									keeping you, your pet and the environment happy.</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent12"
									aria-expanded="false" aria-controls="collapseContent12">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
					<!-- Card -->
				</div>
			</div>
			<div class="row row-cols-1 row-cols-md-3 dog-apparel" id="product13">
				<div class="col mb-4">
					<div class="card h-100 item-card">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/raincoat.jpg"
								alt="Card image cap"> <a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Rain Coat</h4>
								<h4 class="price">$19.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent13">Imagine
									how great your dog will feel wearing a waterproof rain jacket
									that really fits well. Voyagers K9 Apparel stitches quality and
									style together so your dog gets outdoors in a rain coat with
									long-lasting comfort. Easy to put on and keep on, our
									lightweight rain jacket blocks wind and rain so well that you
									and your dog will be a happier pair! For safety's sake, we've
									added reflective piping along the raincoat's lower edge to draw
									attention to your dog in dark or dreary conditions. If your dog
									needs a comfortable rain jacket that fits, order today...your
									pup will thank you!</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent13"
									aria-expanded="false" aria-controls="collapseContent13">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
					<!-- Card -->
				</div>
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product14">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/sweater.jpg"
								alt="Card image cap"> <a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Sweater</h4>
								<h4 class="price">$14.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>

								<!--Text-->
								<p class="card-text collapse" id="collapseContent14">Fall
									will be your pup's favorite season when they get to wear this
									comfortable Combed Cotton Cable Knit Dog Sweater by Doggie
									Design in Oatmeal!</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent14"
									aria-expanded="false" aria-controls="collapseContent14">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
					<!-- Card -->
				</div>
				<div class="col mb-4">
					<div class="card h-100 item-card" id="product15">
						<!--Card image-->
						<div class="view overlay">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/Image/winterjacket.jpg"
								alt="Card image cap"> <a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>

						<!--Card content-->
						<div class="card-body">
							<div class="collapse-content">
								<!--Title-->
								<h4 class="card-title">Winter Jacket</h4>
								<h4 class="price">$21.99</h4>
								<form>
									<label for="qty">Qty</label> <input type="number" id="quantity"
										name="quantity" min="1" max="10" value="1"> <input
										type="submit"
										class="cartBtn btn btn-outline-primary waves-effect"
										value="Add To Cart"><input type="submit" id="wishlist"
										class="wishlistBtn btn btn-outline-primary waves-effect"
										value="+Wish List">
								</form>
								<!--Text-->
								<p class="card-text collapse" id="collapseContent15">Easy to
									put on - very cozy and warm, full coverage, waterproof,
									attractive and appears well made. Adjustable, side snap
									closures that make it easy to tailor its fit. Warm and water
									resistant. The straps that attach to the back legs hold the
									coat in place during walks. Great fit, easy on and off as well
									as the fleece lining. Bring it for your pet in Winter! Let
									her/him feels warm and comfy.</p>
								<a
									class="btn btn-primary red-text p-1 my-1 mr-0 mml-1 collapsed"
									data-toggle="collapse" href="#collapseContent15"
									aria-expanded="false" aria-controls="collapseContent15">Read
									More</a>

							</div>
						</div>
					</div>
					<!-- Card -->
				</div>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/Javascript/home.js"></script>
	<script src="${pageContext.request.contextPath}/Javascript/product.js"></script>


	<%@ include file="/footer.jsp"%>

</body>
</html>