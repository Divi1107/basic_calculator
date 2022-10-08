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

