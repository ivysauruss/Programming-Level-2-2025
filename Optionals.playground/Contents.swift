// Introduction to Optionals

// Task 1: Declaring Optionals
// Step 1: Declare an optional String named "favoriteMovie"

var favoriteMovie: String?
// Step 2: Print "favoriteMovie" to see what happens when it has no value

print(favoriteMovie)

// Step 3: Assign a value to "favoriteMovie" and print it again

favoriteMovie = "Hi"
print(favoriteMovie)

// Task 2: Unwrapping Optionals with if let

// Step 1: Using if let to safely unwrap "favoriteMovie" and print it

if let unwrappedMovie = favoriteMovie {
    print(unwrappedMovie)
}
else {
    print("I hate movies")
}
// Step 2: Set "favoriteMovie" to nil and try unwrapping it again

favoriteMovie = nil

if let unwrappedMovie = favoriteMovie {
    print(unwrappedMovie)
}
else {
    print("I hate movies")
}

// Task 3: Using Guard to Unwrap Optionals

// Step 1: Write a function that takes an optional String (name) and prints a welcome message

func greetUser(name: String?) {
    guard let unwrappedName = name else {
        print("Hi, guest")
        return
    }
    print("Hi, \(unwrappedName)")
}

// Test the function with a name

greetUser(name: "Alissa")
// Test the function with nil
greetUser(name: nil)

// Task 4: Optional Chaining

// Step 1: Create a struct called "Book" with a title (String) and author (String?)
struct Book {
    var title: String
    var author: String?
}


// Step 2: Declare an instance of "Book" with a title and an author

let newBook = Book(title: "Best Book", author: "Alissa Xu")
// Step 3: Print the author's name using optional chaining

if let authorName = newBook.author {
    print("Author: \(authorName)")
}
else {
    print("Author information missing.")
}

// Step 4: Declare another instance of "Book" without an author and print author name
let anonymousBook = Book(title: "mystery", author: nil)

if let authorName = anonymousBook.author {
    print("Author: \(authorName)")
}
else {
    print("Author information missing.")
}

// 1. It is necessary to unwrap optionals, as you cannot access the value "nil", and it would be best to find whether a variable has a value before attempting to use them
// 2. Prefer to use if let for simply printing values out, but use guard if for checking conditions of a variable value before performing operations on it
// 3. Because it uses one line instead of many "if let" statements to access more than one variable (less lines of code needed to accomplish the same task)
