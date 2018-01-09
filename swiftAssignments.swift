//fundamental I
var type: String = "Rectangle"
var description: String = "A quadrilateral with four right angles"
var width: Double = 5
var height: Double = 10.5
var area: Double = width * height
height += 1
width += 1
area = width * height
// Note how you can "interpolate" variables into Strings using the following syntax
print("The shape is a \(type) or \(description) with an area of \(area)")


//fundamental II
for i in 1...25 {
	if i%5 == 0 {
		if i%3 == 0 {
			print("FizzBuzz")
		} else {
			print("Buzz")
		}
	} else if i%3==0 {
		print("Fizz")
		
	} else {
		print(i)
	}	
}


// fundamental III
import UIKit
var nums=Array(0...50)
func swapRandom(arr: inout [Int]){
    let index1=Int(arc4random_uniform(UInt32(nums.count)));
    let index2=Int(arc4random_uniform(UInt32(nums.count)));
    let temp=arr[index1]
    arr[index1]=arr[index2]
    arr[index2]=temp
}
for _ in 0...30 {
    swapRandom(arr: &nums)
}
swapRandom(arr: &nums)
print(nums);
for i in 0..<nums.count{
    if nums[i] == 42 {
        nums.remove(at:i)
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(i)")
        break
    }
}


//suits
import UIKit
let suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
let cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
var deckOfCards = [String: [Int]]()
// your code here
for suit in suits {
    deckOfCards[suit]=cards
}
print(deckOfCards)

//heads or tails
import UIKit
func tossCoin()->String{
    let result=arc4random_uniform(2)
    return result==1 ? "Heads" : "Tails"
}
func tossMultipleCoins(num : Int) -> Double {
    var numOfHeads:Int=0
    for _ in 0...num {
        if tossCoin()=="Heads" {
            numOfHeads += 1
        }
    }
    return Double(numOfHeads)/Double(num)
}
tossMultipleCoins(num: 200)