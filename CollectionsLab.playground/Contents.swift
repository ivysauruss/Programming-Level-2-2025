
// Task 1: Arrays

// Step 1: Create an array of fruits (Atleast 3 elements)

var fruitArray = ["mango", "watermelon", "grape"]

// Step 2: Print the array

print(fruitArray)

// Step 3: Change the second fruit
fruitArray[1] = "banana"

// Step 4: Add a new fruit

fruitArray.append("strawberry")

// Step 5: Remove the first fruit

fruitArray.remove(at: 0)

print(fruitArray)

// Task 2: Dictionaries

// Step 1: Create a dictionary with names and ages (Atleast 3 elements)

var nameDictionary = ["Alissa": 17, "Bobby": 88, "John": 5]

// Step 2: Print the dictionary

print(nameDictionary)

// Step 3: Add a new friend

nameDictionary["Samantha"] = 22
// Step 4: Update one friend's age

nameDictionary["Alissa"] = 18

// Step 5: Remove a friend

nameDictionary.removeValue(forKey: "Bobby")


// Task 3: Sets

// Step 1: Create a set of numbers

var numberSet: Set = [1, 2, 3, 4, 5]
// Step 2: Print the set

print(numberSet)
// Step 3: Try to add a duplicate number

numberSet.insert(3)
// Step 4: Remove a number

numberSet.remove(1)

print(numberSet)
