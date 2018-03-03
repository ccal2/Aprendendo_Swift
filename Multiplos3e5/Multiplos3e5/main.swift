/*
 Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz”
 instead of the number and for the multiples of five print “Buzz”. For numbers which are
 multiples of both three and five print “FizzBuzz"
*/

for number in 1...100 {
    if !((number % 3 == 0) || (number % 5 == 0)) {
        print(number)
    } else {
        if number % 3 == 0 {
            print("Fizz", terminator:"") // terminator:"" - pra não pular linha
        }
        
        if number % 5 == 0 {
            print("Buzz", terminator:"")
        }
        
        print() // \n
    }
}
