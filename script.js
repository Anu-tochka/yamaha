/* 
слайдер
*/
const sliderImgs = document.querySelectorAll('.slider__img') 
let controls = document.querySelectorAll('.slider__button');

controls.forEach(function(contr) {
	contr.addEventListener('click', event => {
		let slideChecked = document.querySelector(`#img-${event.target.dataset.slide}`);
		sliderImgs.forEach(function(sI) {
			sI.classList.remove('topslide');
		})
		slideChecked.classList.add('topslide');
	})
});

/* 
филиалы
*/

const storesPlace = document.getElementById('stores'); // получаем div для вывода филиалов
let stores = []; // массив филиалов

function loadJson() {
	return fetch('bd/index.php')
	.then(response => response.json())
  };

function loadStores(objctes) {
	return new Promise(function(resolve, reject) {
		for (let key in objctes) {
			stores.push(objctes[key]);
		}
		stores.map(store => showContacts(store));
		let storesName = document.querySelectorAll('.stores__name');
		storesName.forEach( function(item) {
			item.addEventListener('click', event => {
				let showStore = document.querySelector(`#store-${event.target.dataset.id}`);
				showStore.style.display = 'block';
			})
		})
	})
}

loadJson()
    .then(result => loadStores(result)); 
	
function showContacts(store) {
	let {id, name, adress, subway, phones, worktime, information} = store;
	storesPlace.insertAdjacentHTML("beforeend", `<div class="stores__box">
				<a data-id="${id}" class="stores__name">${name}</a>
				<div class="stores__item" id="store-${id}">
					<p>Метро: ${subway}</p>
					<p>Адрес: ${adress}</p>  
					<p>Тел.: <a href="tel:${phones}">${phones}</a></p>
					<p>Часы работы:  ${worktime}</p>
					<p>${information}</p>
				</div></div>`);
};

ymaps.ready(init);       
function init() {
	var myMap = new ymaps.Map("map", {
		center: [59.985927, 30.335311],
		zoom: 10
	}, {
		searchControlProvider: 'yandex#search'
	});
	
	stores.map(store => {
	  let {id, name, adress, subway, phones, worktime, information, latitude, longitude} = store;
		var myPlacemark = new ymaps.Placemark([latitude, longitude], {
			balloonContentHeader: name,
			balloonContentBody: `${adress}, тел. ${phones}`,
			balloonContentFooter: worktime
		},{
			iconLayout: 'default#image'
		});
		myMap.geoObjects.add(myPlacemark);
	});
}

/*
кликабельные картинки
*/

let imgs = document.querySelectorAll('.img');
imgs.forEach(function(img) {
	img.addEventListener('click', event => {
		event.target.classList.toggle("img-click");
	});
});
