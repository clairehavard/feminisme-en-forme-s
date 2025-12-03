window.addEventListener("DOMContentLoaded", function () {
	// Ouverture menu burger
	const menuBurger = document.querySelector("#menu-burger");
	const mainMenu = document.querySelector(".menu");
	const pictoBurger = document.querySelector(".picto.burger");
	const pictoCross = document.querySelector(".picto.cross");

	menuBurger.addEventListener("click", () => {
		const isOpen = mainMenu.classList.toggle("visible");

		pictoBurger.classList.toggle("actived", !isOpen);
		pictoCross.classList.toggle("actived", isOpen);

		// Fermer le sous-menu en même temps
		if (!isOpen) {
			subMenu.classList.remove("visible");
			icone.classList.remove("opened");
		}
	});


	// Ouverture sous-menu Slogan
	const slogans = document.querySelectorAll(".manifester");
	const subMenu = document.querySelector(".sub-menu");
	const icone = document.querySelector("#manifester .icone");

	// Pour que le menu s'ouvre en mobile
	slogans.forEach(slogan => {
		slogan.addEventListener("click", () => {

			// Pour le mobile
			if (window.innerWidth < 768 && !mainMenu.classList.contains("visible")) {
				mainMenu.classList.add("visible");
			}

			subMenu.classList.toggle("visible");
			icone.classList.toggle("opened");
		});
	});
});
