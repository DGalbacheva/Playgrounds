import Foundation

class Cat {
    
    var age: Int
    var weight: Double
    var name: String
    
    func makeSound() {
        print("Мяу")
    }
    
    func sayHello() {
        print("Привет! Меня зовут \(name) и мне \(age) лет")
    }
    
    // Объявляем инициализатор с параметрами
    
    init(
        // Перечисляем параметры инициализатора
        age: Int,
        weight: Double,
        name: String
    ) {
        // В теле инициализатора присваиваем свойствам класса
        // значения, переданные в параметрах
        self.age = age
        self.weight = weight
        self.name = name
    }
    
    // Создаём экземпляр класса, используя инициализатор с параметрами
}
    var schredingerCat = Cat(
        age: 12,
        weight: 7.5,
        name: "Кот Шрёдингера"
    )
    
    var barsik = Cat(
        age: 5,
        weight: 5.6,
        name: "Барсик"
    )

    schredingerCat.sayHello()
    // Привет! Меня зовут Кот Шрёдингера и мне 12 лет
    
    barsik.sayHello()
    // Привет! Меня зовут Барсик и мне 5 лет

