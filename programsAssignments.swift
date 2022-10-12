//fibonacci series 
var num1 = 0
var num2 = 1
print("\(num1)")
print("\(num2)")
for i in 0 ..< 10 {
    
    let num = num1 + num2 
        num1 = num2
        num2 = num 
        print(num)
    }


// 1st reoccuring character in a string

func first(text: String) -> String?
{
    var previous = Set<Character>()
    for chara in text{
        if previous.contains(chara)
        {return String(chara)}
        else 
            previous.insert(chara)
        } 
        
    }
    return nil
}
print("THe first appeared character is:", (first(text:"taylor swift")))

//structure programs
struct Size {
    var width: Double
    var height: Double
    func area() -> Double {
        
        print("area is \(width * height)")
        return width * height
}
}
let someSize = Size( width: 45 , height: 50.5)
let area = someSize.area()


var string = String.init()
var int = Int.init()
var bool = Bool.init()

//String()
struct A{
    var name : String
    
} 
let some = A(name:"divya")
print(some.name)

//

struct Person{
    var name: String
    func sayHELLO() {
        print("HELLO! My names \(name).")
    }
}
let person = Person(name:"hitohito") 
    //instance = structname(pass value)
person.sayHELLO() //instNCE Created is calling the function
    //intanceMethod called using . op 

// prg
struct Odometer {
    var i: Int = 0
    
}
let odometer = Odometer()
print(odometer.i)


    //prg
struct Temp{
    var cel: Double
    init(cel: Double) {
        self.cel = cel
    }
    init(far: Double) {
        cel = (far-32)/1.8
    }
}
let  currenttemp = Temp(cel:33)
let boiling = Temp(far: 212.0)
print(currenttemp.cel)
print(boiling.cel)
  
//prg
struct temper {
    var celsius: Double
    var faren: Double {
        celsius * 1.8+32
    }
}
let temperat = temper(celsius: 8.0)
print(temperat.faren)


//string, anagram
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

