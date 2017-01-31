//: Playground - noun: a place where people can play

import UIKit

//다음 for문을 고차함수로 바꾸시오

//문제1
var someDoubles = [0.1, 0.2, 0.3, 2.4, 1.5]
var lessThanOne = [Double]()
for item in someDoubles{
    if item < 1{
        lessThanOne.append(item)
    }
}

//풀이1
lessThanOne = someDoubles.filter({
    (item:Double) -> Bool in
    return item < 1
})
print(lessThanOne)




//문제2 x
var someInts = [1,2,3,4,5,6,7,8,9,10]
var orderedInts = someInts
for j in 0..<orderedInts.count{
    for i in 0..<orderedInts.count-1{
        if orderedInts[i]<orderedInts[i+1]{
            var temp = orderedInts[i]
            orderedInts[i] = orderedInts[i+1]
            orderedInts[i+1] = temp
        }
    }
}

//풀이2
orderedInts.sorted(by: {
    (left: Int, right: Int) -> Bool in
    return left > right
})

print(orderedInts)

//문제3
var fivemulti = [1,5,17,24,50,81,60,64,65,20]

for item in fivemulti {
    if item % 5 == 0 {
        print("\(item)")
    }
}

//풀이 3
var stringed:String = fivemulti.reduce(""){
    (sum: String, item:Int) -> String in
    if (item % 5 == 0){
    return sum+"\(item)\n"
    }
    else{
        return sum
    }
}
print(stringed)



//문제4
let quest1 = [123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133]
var answer1 = [Int]()
for item in quest1 {
    if item % 3 == 0 {
        answer1.append(item)
    }
}
print("\(answer1)")

//풀이4
answer1 = quest1.filter({
    (item: Int) -> Bool in
    return item % 3 == 0
})
print("\(answer1)")



//문제5
let quest2 = [12, 14, 15, 19, 25, 26, 27, 31, 33, 35, 37, 39, 41, 42, 43, 45, 46, 48, 49, 51, 58, 59, 69, 70, 71]
var answer2 = 0;
for item in quest2 {
   if item % 7 == 0 {
    answer2 += item
    }
}

//풀이 5
answer2 = quest2.reduce(0){
    (sum: Int, next: Int) -> Int in
    if (next % 7 == 0){
        return sum + next
    }
    else{
        return sum
    }
}
print("\(answer2)")

