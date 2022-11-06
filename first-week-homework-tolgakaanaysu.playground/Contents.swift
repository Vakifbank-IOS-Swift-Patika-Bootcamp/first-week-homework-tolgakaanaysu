import UIKit

//MARK: - Question 1

extension String {
    func replace(string:String, replacement:String) -> String {
        return self.replacingOccurrences(of: string, with: replacement,
                                         options: NSString.CompareOptions.literal, range: nil)
    }
    
    func removeChar(to char: String) -> String {
        return self.replace(string: char, replacement: "")
    }
    
    func removeAllChar() -> String {
        let charArray = [" ",".",",","!","?","-","_","+","*","/"]
        var changedString = self
        for char in charArray {
            changedString = changedString.removeChar(to: char)
        }
        return changedString
    }
}

func isPalindrome(_ str : String) -> Bool {
    var strArray = Array(str.removeAllChar().lowercased())
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
print("Question 1 -----------------")
isPalindrome("Tolga")
isPalindrome("123321")
isPalindrome("Patika")
isPalindrome("12321")
isPalindrome("Tolgaaglot")
isPalindrome("taco cat taco cat")
isPalindrome("t ac -o ca ,t? t -,aco cat.")


print("\n")

//MARK: - Question 2
// https://developer.apple.com/documentation/foundation/nscountedset

func numberOfElements(array: [Any]) {
    let countedSet = NSCountedSet(array: array)
    for item in countedSet {
        print("\(item) elemanı", countedSet.count(for: item), "kere kullanılmıştır" )
    }
}
print("Question 2 -----------------")
numberOfElements(array: ["A", 12.23, 2,23, "Tolga", 53, "Tolga", 12.23, "A", 2])

//MARK: - Question 3
func pyramidFunction(numberOfFloors n: Int) {
    print("n: \(n)")
    var counter = 1
    while(counter <= n) {
        print(String(repeating: "*", count: counter))
        counter += 1
    }
}
print("\n")
print("Question 3 -----------------")
pyramidFunction(numberOfFloors: 4)
print("\n")
pyramidFunction(numberOfFloors: 6)
print("\n")
pyramidFunction(numberOfFloors: 5)
print("\n")

//MARK: - Question 4
func pyramidFunctionInCenter(numberOfFloors n: Int) {
    print("n: \(n)")
    var counter = 1
    while(counter <= n) {
        
        print( String(repeating: " ", count: n - counter) + String(repeating: "* ", count: counter))
        counter += 1
    }
}

print("Question 4 -----------------")
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

func multiplesOfThreeOrFive(bound: Int){
    var sum = 0
    for i in 1..<bound {
        if i % 5 == 0 || i % 3 == 0 {
            sum += i
        }
    }
    print(sum)
}
print("Question 5-1 -----------------")
multiplesOfThreeOrFive(bound: 5000)
multiplesOfThreeOrFive(bound: 4542)


//MARK: -  5-2
/*
 Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
 By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.*/
func sumEvenFibonacciNumbers(to number: Int){
    var sum = 0
    var left = 0
    var right = 1
    
    while true {
        let temp = right
        right += left
        left = temp
        
        if right % 2 == 0 {
            sum += right
        }
        if right > number {
            break
        }
    }
    print("Fibonacci dizisinde \(number) sayısına kadar olan çift sayıların toplamı : \(sum) ")
}

print("\n")
print("Question 5-2 -----------------")
sumEvenFibonacciNumbers(to: 4000000)
sumEvenFibonacciNumbers(to: 56344)
sumEvenFibonacciNumbers(to: 759824)

//MARK: -  5-3
//The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?

func largestPrimeFactor(_ number: Int ) -> Int {
    var n = number
    var d = 2
    var max = -1
    while n > 1 {
        while n % d == 0 {
            if d > max {
                max = d
            }
            n /= d
        }
        d += 1
    }
    print("\(number) sayısının en büyük asal böleni \(max)")
    return max
}

print("\n")
print("Question 5-3 -----------------")
largestPrimeFactor(58)
largestPrimeFactor(60)
largestPrimeFactor(35)
largestPrimeFactor(600851475143)
