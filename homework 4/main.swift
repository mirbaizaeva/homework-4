////№1.  Используя условные операторы, функции и циклы создать следующую программу:
var twoString = ""
for num in 1...100{
    if num % 2 == 0{
        twoString += "\(num),"
    }
}
print(twoString)

var threeString = ""
for num in 1...100 where num % 3 == 0{
    threeString += "\(num),"
}
print(threeString)

var fourString = ""
for num in 1...100{
    if num % 4 == 0{
        fourString += "\(num),"
    }
}
print(fourString)

var fiveString = ""
for num in 1...100 where num % 5 == 0{
    fiveString += "\(num),"
}
print(fiveString)
 
//#2 Используя условные операторы, функции и циклы создать следующую программу: Записать в одну переменную типа String 20 разных слов (с разной длиной) через запятую. После того, как созданная ранее функция примет как аргумент созданную строку - вернет следующее (например) - “Яблоко - 6 символов \n Морковь - 7 символов” и т.д до последнего слова

var num = ["Мука", "Сливочное Масло", "Банан", "Рыба", "Зелень",  "Торт", "Чизкейк", "Мясо", "Хлеб", "Сыр", "Огурцы", "Помидор", "Курица", "Яблоко", "Груша", "Ананас", "Манго", "Сливки", "Рис", "Кукуруз"]
var str = ""
for i in num{
    var hasEscape = false
    var escapeCount = 0
    var symbolCount = 0
    var hasSymbols = false
    for item in i{
        if item == " "{
            hasEscape = true
            escapeCount += 1
        }else if item == "," || item == ":" || item == "."{
            hasSymbols = true
            symbolCount += 1
        }
    }
    str += "\(i) - \(i.count - escapeCount - symbolCount) символов"
    if hasEscape == true{
        str += "и \(escapeCount) пробелов"
    }
    if hasSymbols == true{
        str += " и \(symbolCount) знаков препинания"
    }
    str += "\n"
}

print(str)
