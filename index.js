$(document).ready(function () {
	// banner owl carousel
	$("#banner-area .owl-carousel").owlCarousel({
		dots: true,
		items: 1,
	});

	// top sale owl carousel
	$("#top-sale .owl-carousel").owlCarousel({
		loop: true,
		nav: true,
		dots: false,
		responsive: {
			0: {
				items: 1,
			},
			600: {
				items: 3,
			},
			1000: {
				items: 5,
			},
		},
	});

	// isotope filter
	var $grid = $(".grid").isotope({
		itemSelector: ".grid-item",
		layoutMode: "fitRows",
	});

	// filter items on button click
	$(".button-group").on(
		"click",
		"button",
		function () {
			var filterValue = $(this).attr(
				"data-filter"
			);
			$grid.isotope({ filter: filterValue });
		}
	);

	// new phones owl carousel
	$("#new-phones .owl-carousel").owlCarousel({
		loop: true,
		nav: false,
		dots: true,
		responsive: {
			0: {
				items: 1,
			},
			600: {
				items: 3,
			},
			1000: {
				items: 5,
			},
		},
	});

	// blogs owl carousel
	$("#blogs .owl-carousel").owlCarousel({
		loop: true,
		nav: false,
		dots: true,
		responsive: {
			0: {
				items: 1,
			},
			600: {
				items: 3,
			},
		},
	});

	// product qty section
	let $qty_up = $(".qty .qty-up");
	let $qty_down = $(".qty .qty-down");
	let $deal_price = $("#deal-price");
	// let $input = $(".qty .qty_input");

	// click on qty up button
	$qty_up.click(function (e) {
		let $input = $(
			`.qty_input[data-id='${$(this).data(
				"id"
			)}']`
		);
		let $price = $(
			`.product_price[data-id='${$(this).data(
				"id"
			)}']`
		);

		// change product price using ajax call
		$.ajax({
			url: "template/ajax.php",
			type: "post",
			data: { itemid: $(this).data("id") },
			success: function (result) {
				let obj = JSON.parse(result);
				let item_price = obj[0]["item_price"];

				if (
					$input.val() >= 1 &&
					$input.val() <= 9
				) {
					$input.val(function (i, oldval) {
						return ++oldval;
					});

					// increase price of the product
					$price.text(
						parseInt(
							item_price * $input.val()
						).toFixed(2)
					);

					// set subtotal price
					let subtotal =
						parseInt($deal_price.text()) +
						parseInt(item_price);
					$deal_price.text(subtotal.toFixed(2));
				}
			},
		}); // closing ajax request
	}); // closing qty up button

	// click on qty down button
	$qty_down.click(function (e) {
		let $input = $(
			`.qty_input[data-id='${$(this).data(
				"id"
			)}']`
		);
		let $price = $(
			`.product_price[data-id='${$(this).data(
				"id"
			)}']`
		);

		// change product price using ajax call
		$.ajax({
			url: "template/ajax.php",
			type: "post",
			data: { itemid: $(this).data("id") },
			success: function (result) {
				let obj = JSON.parse(result);
				let item_price = obj[0]["item_price"];

				if (
					$input.val() > 1 &&
					$input.val() <= 10
				) {
					$input.val(function (i, oldval) {
						return --oldval;
					});

					// increase price of the product
					$price.text(
						parseInt(
							item_price * $input.val()
						).toFixed(2)
					);

					// set subtotal price
					let subtotal =
						parseInt($deal_price.text()) -
						parseInt(item_price);
					$deal_price.text(subtotal.toFixed(2));
				}
			},
		}); // closing ajax request
	}); // closing qty down button
	// 3.Countdown timer

	function makeTimer() {
		var endTime = new Date(
			"March 7, 2019 12:00:00 PDT"
		);
		var endTime = Date.parse(endTime) / 1000;

		var now = new Date();
		var now = Date.parse(now) / 1000;

		var timeLeft = endTime - now;

		var days = Math.floor(timeLeft / 86400);
		var hours = Math.floor(
			(timeLeft - days * 86400) / 3600
		);
		var minutes = Math.floor(
			(timeLeft - days * 86400 - hours * 3600) /
				60
		);
		var seconds = Math.floor(
			timeLeft -
				days * 86400 -
				hours * 3600 -
				minutes * 60
		);

		if (hours < "10") {
			hours = "0" + hours;
		}
		if (minutes < "10") {
			minutes = "0" + minutes;
		}
		if (seconds < "10") {
			seconds = "0" + seconds;
		}

		$("#days").html(
			days + '<span class="camp">Days</span>'
		);
		$("#hours").html(
			hours + '<span class="camp">Hour</span>'
		);
		$("#minutes").html(
			minutes + '<span class="camp">Minute</span>'
		);
		$("#seconds").html(
			seconds + '<span class="camp">Second</span>'
		);
	}

	setInterval(function () {
		makeTimer();
	}, 1000);
});
