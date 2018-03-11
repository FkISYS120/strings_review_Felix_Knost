import UIKit
import Foundation

// Storing some questions for Siri to respond to
let siriQuestions = [
    "What is the TiMe?",
    "WHAT time is it?",
    "Tell me the time.",
    "What is the temperature?",
    "Is the temperature high?",
    "What is the temperature rignt now?",
    "Will it rain today?",
    "Will it rain tomorrow?"
]

// For testing, you can change the question by changing the index. Currently the index is 0,
// that corresponds to the first question "What is the TiMe?". If you change the index to 1,
// then the currrentSiriQuestion would be "WHAT time is it?".
let currentSiriQuestion = siriQuestions[7]


// Outputting the question you are testing
print( "Question: \(currentSiriQuestion)" )

// Assign Siri's response String value to this constant: sirisResponse
var sirisResponse:String




/**************/
/* --- [1-5] WRITE YOUR CONDITIONS TO CHOOSE SIRI'S RESPONSE BELOW HERE --- */
let siriConditions = currentSiriQuestion.lowercased()
sirisResponse = ""
if currentSiriQuestion.last == "?"
    {
if siriConditions.hasPrefix("what") && siriConditions.contains("is the time") || siriConditions.contains("time is it")
{
    let formatter = DateFormatter()
    formatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
    let myString = formatter.string(from: Date())
    let myDate = formatter.date(from: myString)
    formatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
    let dateString = formatter.string(from: myDate!)
    sirisResponse = "The current day and time is " + dateString
}

else if siriConditions.hasPrefix("what") && siriConditions.contains("temperature")
{
    let tempFifty: Int = 50
    let addThis : Int = siriConditions.count
    let tempFinal : Int = tempFifty + addThis
    let tempString = String(tempFinal)
    sirisResponse = "The tempurature is " + tempString + " degrees"
}
else if siriConditions == "will it rain today?"
{
    
        sirisResponse = "Yes it will 🌧"
}
    
else if !siriConditions.hasPrefix("what")
{
    sirisResponse = "Good question, but I don't know how to answer that."
}
}

else
{
   sirisResponse = "Sorry, I don't know what to say!"
}


/* --- END YOUR CONDITIONS ABOVE HERE --- */
/**************/





// Outputting Siri's response
print("Siri: \(sirisResponse)")
