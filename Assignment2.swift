// given a string, change its value using classes and check for anagram 
class alpha
{ var name: String = "aaabbccdfgg" }
  let home = alpha()
  print(home.name)

class Alpha : alpha { 
func anagram (oneStr: String , twoStr: String) -> Bool 
{ print(oneStr.sorted())
print(twoStr.sorted())
return oneStr.lowercased().sorted() == twoStr.lowercased().sorted()
}
}
 let Home = Alpha()
 Home.name = "a3b2c2d1f1g2"
 print(Home.name)
 Home.anagram(oneStr:"aaabbccdfgg", twoStr:"a3b2c2d1f1g2")
 Home.anagram()


///practice prg -> class

//class

class Person {
    let name: String
    init(name: String){
        self.name = name
    }
    func sayHello() {
        print("Helloo")
    }
}

let person = Person(name: "Betty")
print(person.name)
person.sayHello()


class vehicle {
    var currentspeed = 0.0
    var des: String {
        "travelling at \(currentspeed) miles/hr"
    }
    func noise(){  }
}
let somevehicle = vehicle()
print("vehicle \(somevehicle.des)")

class cycle : vehicle
{ var basket = false}
let bicycle = cycle()
bicycle.basket = true 
bicycle.currentspeed = 11.00
print(bicycle.des)

class tenden: cycle
{var ppl = 0.0 
}
let tendem = tenden()
tendem.basket = true
tendem.currentspeed = 22.0
tendem.ppl = 4
print("Tanden:\(tenden.des)")
class train: vehicle {
    override func noise()
    {print("choo chooô")}
}
let trainn = train()
train.noise()
