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
