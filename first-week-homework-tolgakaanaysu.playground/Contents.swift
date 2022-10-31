import UIKit

//MARK: - Question 1
func isPalindrome(str: String) -> Bool {
    var strArray = Array(str)
    var count = strArray.count
    for i in 0..<(count / 2) {
        if strArray[i] != strArray[count - 1 - i]{
            print("\(str) palindrom değildir.")
            return false
        }
    }
    print("\(str) palindromdur.")
    return true
}

isPalindrome(str: "Tolga")
isPalindrome(str: "123321")
isPalindrome(str: "Patika")
isPalindrome(str: "12321")
isPalindrome(str: "TolgaagloT")

print("\n")
//MARK: - Question 3
func pyramidFunction(numberOfFloors: Int) {
    var counter = 1
    while(counter <= numberOfFloors) {
        print(String(repeating: "*", count: counter))
        counter += 1
    }
}

pyramidFunction(numberOfFloors: 4)
print("\n")
pyramidFunction(numberOfFloors: 6)
print("\n")
pyramidFunction(numberOfFloors: 5)
print("\n")

//MARK: - Question 4
func pyramidFunctionInCenter(numberOfFloors n: Int) {
    var counter = 1
    while(counter <= n) {
        
        print( String(repeating: " ", count: n - counter) + String(repeating: "* ", count: counter))
        counter += 1
    }
}

pyramidFunctionInCenter(numberOfFloors: 6)
print("\n")
pyramidFunctionInCenter(numberOfFloors: 10)
print("\n")
pyramidFunctionInCenter(numberOfFloors: 9)
print("\n")

//MARK: - Question 5
// 5-1
/* If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
    Find the sum of all the multiples of 3 or 5 below 1000. */

func multiplesOfThreeOrFive(){
    let bound = 1000
    var sum = 0
    for i in 1..<bound {
        if i % 5 == 0 || i % 3 == 0 {
            sum += i
        }
    }
    print(sum)
}
multiplesOfThreeOrFive()
