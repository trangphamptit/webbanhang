/**
 * 
 */
function renderMenuCon(menuCon) {
	console.log(menuCon);
	var a = document.getElementById("2");
	var div;
	for (let i = 0; i < menuCon.length; i++) {
		if (i % 3 == 0) {
			div = document.createElement("div");
			div.className = "col-md-4";
		}
		
		var menuConElement = document.createElement('a');
		menuConElement.className = "dropdown-item";
		menuConElement.href = menuCon[i].link;
		menuConElement.innerText = menuCon[i].tenMenu;
		div.appendChild(menuConElement);
		if (i % 3 == 1){
			a.appendChild(div);
		}
	}
}