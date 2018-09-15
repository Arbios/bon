// MARK: - Data - Categories
let restaurants = Category(name: "Рестораны", image: nil)
let carwashes = Category(name: "Автомойки", image: nil)

// MARK: - Data - Categories - Restaurants
var injir = Restaurant(name: "Чайхана", price: 80, location: "Гранд-Парк", image: nil, category: carwashes)
var cofetun = Restaurant(name: "Кофетун", price: 50, location: "г. Грозный, ул. Маяковского 11", image: nil, category: restaurants)
var americanSteakHouse = Restaurant(name: "American Steak House", price: 90, location: "ул. Первомайская 29", image: nil, category: restaurants)
var tochka = Restaurant(name: "Точка", price: 40, location: "г. Грозный, пр-т Победы 20", image: nil, category: restaurants)


var shellOil = CarWashes(name: "Шелл", price: 10, location: "Заводской район", image: nil, category: carwashes)
var tashkala = CarWashes(name: "Автомойка Ташкала", price: 10, location: "Грозный, пос. Ташкала", image: nil, category: carwashes)


// MARK: - Data - Arrays

let categories = [restaurants, carwashes]
let restaurantItems = [injir, cofetun, americanSteakHouse, tochka]
let carwashItems = [shellOil, tashkala]






