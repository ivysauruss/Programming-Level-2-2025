/*
Welcome to the Constants and Variables Lab!

In this lab, we’ll explore how to use constants and variables in Swift.

- Constants (created with `let`) are values that don’t change.
- Variables (created with `var`) are values that can change.

Let’s dive in! 🚀
*/

let birthYear: Int
birthYear = 2007

var currentAge: Int
currentAge = 18

currentAge = 19

// Exercise 4: Trying to change a constant
// Uncomment the line below to see what happens when you try to change a constant!
// birthYear += 1
// Q: Why doesn’t this work?

// Because a constant's value cannot be changed
/*
Mini Build: Life Tracker (5 min)

Let’s build a small script that simulates tracking your age over the next few years.
1. Declare a constant for `myBirthYear`.
2. Declare a variable `currentYear` (set it to the current year).
3. Calculate your age by subtracting `myBirthYear` from `currentYear`.
4. Update `currentYear` to simulate each new year, and update your age.

Try adding print statements to track the changes.
*/

let myBirthYear: Int
var currentYear: Int
myBirthYear = 2007
currentYear = 2025

currentAge = currentYear - myBirthYear


print("Birth year is \(birthYear). Age is \(currentAge).")

// Increment the year and age to simulate time passing

currentYear += 1
currentAge = currentYear - myBirthYear

print("Birth year is \(birthYear). Age is \(currentAge).")
