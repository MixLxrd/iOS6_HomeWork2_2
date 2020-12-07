//Homework 1.2 Objects OOP
//Task 1
//Придумайте именованные типы Swift, подбирая лучшие абстракции. Объявите свойства и методы в них. Статический анализатор подскажет, если вы забудете кое-что ('Type annotation missing...'). На предупреждения о том, что в enum нельзя объявлять хранимые свойства и на необходимость инициализаторов в class, пока не обращайте внимания.

enum DayOfWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

//jsonplaceholder.typicode.com/users
/*
 {
 "id": 1,
 "name": "Leanne Graham",
 "username": "Bret",
 "email": "Sincere@april.biz",
 "address": {
   "street": "Kulas Light",
   "suite": "Apt. 556",
   "city": "Gwenborough",
   "zipcode": "92998-3874",
   "geo": {
     "lat": "-37.3159",
     "lng": "81.1496"
   }
 },
 "phone": "1-770-736-8031 x56442",
 "website": "hildegard.org",
 "company": {
   "name": "Romaguera-Crona",
   "catchPhrase": "Multi-layered client-server neural-net",
   "bs": "harness real-time e-markets"
 }
 */
struct Users {
    var id: Int
    var name: String
    var username: String
    var email: String
    var address: Address
    var phone: String
    var website: String
    var company: Company
}

struct Address {
    var street: String
    var suite: String
    var city: String
    var zipcode: String
    var geo: GeoPosition
}

struct GeoPosition {
    var lat: String
    var lng: String
}

struct Company {
    var name: String
    var catchPhrase: String
    var bs: String
}

//Абстракция "летчик" содержит свойства и методы, будет учиться и повышать квалификацию (меняться), увеличивать налет = class

class Pilot {
    var age: Int
    var name: String
    var education: String
    
    func fly() {
        print("С вами летит пилот - \(name)")
    }
    
    func study() {
        print("Для повышения квалификации Вам нужно закончить эти курсы")
    }
    
    init(age: Int,name: String,education: String) {
        self.age = 0
        self.name = "Ivan"
        self.education = "Middle"
    }
}


//Task #2
//Напишите по 2 примера композиции и агрегации из реально мира, без использования кода. Каждому примеру дайте объяснения почему это композиция или агрегация.

//Возможно подобный пример не совсем из реального мира и применим для кода, но это пример агрегации


class Laptop {
    var producer: String = ""
    var model: String = ""
}

class LaptopsOnWork {
    var laptops: [Laptop] = []
}

//если мы заполним классы ноутбуков, то они не перестанут существовать сами по себе
//но если мы их добавим в класс, что они все принадлежат классу LaptopsOnWork, что
//какие ноутбуки принадлежат компании

class LaptopsOnHome {
    let laptops = Laptop ()
}

//здесь условие что только при имеющихся классе ноутбуков будет смысл данного класса
