protocol RestaurantProtocol {
    var name: String { get }
    var rating: Double { get }
    var deliveryTime: Int { get }
}

class Restaurant: RestaurantProtocol {
    let name: String
    let rating: Double
    let deliveryTime: Int
    let location: String
    let isOpen24: Bool
    
    init(name: String, rating: Double, deliveryTime: Int, location: String, isOpen24: Bool) {
        self.name = name
        self.rating = rating
        self.deliveryTime = deliveryTime
        self.location = location
        self.isOpen24 = isOpen24
    }
}

class TyndexEda {
    private var restaurants: [RestaurantProtocol]
    
    init(restaurants: [RestaurantProtocol]) {
        self.restaurants = restaurants
    }
    
    func sortRestaurants(using comparator: (RestaurantProtocol, RestaurantProtocol) -> Bool){
        restaurants.sort(by: comparator)
    }
}


let restaurants = [
    Restaurant(
        name: "Burger King",
        rating: 4.2,
        deliveryTime: 35,
        location: "Saratov",
        isOpen24: true
    ),
    Restaurant(
        name: "Tasty – and that's it",
        rating: 4.0,
        deliveryTime: 25,
        location: "Saratov",
        isOpen24: true
    ),
    Restaurant(
        name: "Rostic's",
        rating: 4.5,
        deliveryTime: 30,
        location: "Saratov",
        isOpen24: false
    )
]

let tyndexEda = TyndexEda(restaurants: restaurants)
tyndexEda.sortRestaurants {$0.name < $1.name}
tyndexEda.sortRestaurants {$0.rating > $1.rating}
tyndexEda.sortRestaurants {$0.deliveryTime < $1.deliveryTime}
