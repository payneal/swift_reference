//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var x = [2, 67, 78, 5, 9]
var count = 0

while count < x.count {
    x[count] += 1
    count += 1
 
}

print(x)


let family = ["chuck", "mike", "tom", "susan"]

for x in family {
    print("hi there " +  x + "!")
}

var array = [Double]()
array = [8, 7, 19, 28]

for (index, numb) in array.enumerated() {
    array[index] = (numb/2)
}
print (array)

