//
//  User.swift
//  LoginApp
//
//  Created by Alina Sokolova on 22.12.21.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getInformationAboutUser() -> User {
        User(login: "Alina", password: "Fox", person: Person.getInformationAboutPerson())
    }
}


struct Person {
    let name: String
    let surname: String
    let dateOfBirth: String
    let age: String
    let citizenship: String
    let image: String
    let someWordsAboutMe: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getInformationAboutPerson() -> Person {
        Person(name: "Алина",
               surname: "Саковская",
               dateOfBirth: "31.01.2000",
               age: "21",
               citizenship: "РБ",
               image: "aboutMe",
               someWordsAboutMe: """
Я обычная девушка с несгибаемой верой в себя и в свои возможности. На данный момент прохожу обучение по направлению IOS-разработки в школе Swiftbook.ru. Первые шаги в обучении сделаны, и от этого я чувствую колоссальный прилив эмоций и драйва! А все благодаря замечательному преподавателю 🤗, без нее у меня ничего бы не вышло! Огромное спасибо! Я знаю точно: я не ошиблась с выбором направления, не ошиблась со школой обучения, не хочу останавливаться, хочу идти дальше! Только вперед😌
""")
    }
}
