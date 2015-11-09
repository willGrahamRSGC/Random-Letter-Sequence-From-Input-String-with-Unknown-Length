import Cocoa

/*:

Your prior goal was to:

* generate a string, 20 characters long, with letters randomly selected
    * based on probability of each letter occuring in all (or at least most) English writing

However, this is not quite how a Markov Chain works.

A Markov chain makes selections based on an analysis of *only* the input text provided.

So, let's move to the next step.

Consider the text below. Re-execute the playground a few times.

*/

let input = getRandomSequence()
input

/*:

What do you notice about the input text each time you run the playground?

Your next step is to take what you have learned from prior playgrounds, and, write an algorithm in plain English that you think would accomplish this goal:

* determine the probability with which a given letter occurs in the input text
* build an output string that is 30 characters long
    * letters occur in the output string based on the proabability with which they occurred in the input string

*/

// create empty list of probablities (dictionary)
var letterGroups = [Character: Int] ()

//loop over the input string
for number in input.characters {
    
//inspect each character in input
    number
    if letterGroups [number] == nil {
        letterGroups[number] = 1 // first time for the letter.
    } else {
        //we know this is in the dictionary 
        // so just add 1 to current group
       // letter groups adds 1 aka lettergroups = lettergroups + 1
    letterGroups[number]! += 1
   
        
        
    }
    letterGroups

}
//get length of input string
input.characters.count

// create an empty dictionary to store probabilitys
var letterProbabilities = [Character: Float]()

// loop over the list of letter counts
for (letter, count) in letterGroups {
    // add an entry to the probabilities dictionary
    letterProbabilities[letter] = Float(count) / Float(input.characters.count) * 100
}
var total: Float = 0.0
for (letter,probability) in letterProbabilities {
    total = total + probability
}
// create Variable to store output string
var outputString: String = ""
for i in 1...30{

    // generate the random value
    let newRandomValue = arc4random_uniform(1000)
    
    let newRandomValueFloat = Float(newRandomValue) / 10
    newRandomValueFloat
}


/*

Write your algorithm ideas here:

-counts total ammount of letters
-goes from a to z 
-Group same letters together divide amount of letters in group by total amount of letters
- assigns each answer with dictionary with differing variables.
- each letter would be assigned their variable 
- aProb maybe?
- create chains 

Summary
-------

Ideas
-----

Algorithm (point-form, in English)
----------------------------------

Assumptions
-----------

*/
