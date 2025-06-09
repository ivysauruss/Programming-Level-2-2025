// Step 1: Define the Book struct
// Add properties here (title, author, publicationYear)

struct Book {
    var title: String
    var author: String
    var publicationYear: Int
    func describe() {
        print("The book \(self.title) by \(self.author) was published in \(self.publicationYear)")
    }
}

// Step 2: Create an instance of Book
// Set values for title, author, and publication year

var bookOne = Book(title: "Swift Programming", author: "Apple", publicationYear: 2020)

// Step 3: Add a function to the Book struct
// This method should describe the book

// Step 4: Call the describe() function

bookOne.describe()

// Mini Build Challenge: Define the Movie struct and movieInfo function
// Define the Movie struct
// Add properties for title, director, and release year
// Add the movieInfo() function

struct Movie{
    var title: String
    var director: String
    var releaseYear: Int
    func movieInfo(){
        print("The movie \(self.title) by \(self.director) was released in \(self.releaseYear)")
    }
}

var movieOne = Movie(title: "Alissa Movie", director: "Alissa Xu", releaseYear: 2025)
movieOne.movieInfo()
