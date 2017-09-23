import Foundation


class Questions {
    
    
    var questionBank = [Quiz]()
    
    init() {
        
        questionBank.append(Quiz(text: "Brooklyn is the largest borough in terms of total land area.", answer: false))
        
        questionBank.append(Quiz(text: "There are more pigeons in NYC than humans.", answer: false))
        
        questionBank.append(Quiz(text: "Manhattan was settled in 1624.", answer: true))
        
        questionBank.append(Quiz(text: "There are over 200 languages spoken in NYC.", answer: true))
        
        questionBank.append(Quiz(text: "There are over 500 subway stations throughout the city.", answer: false))
        
        questionBank.append(Quiz(text: "NYC was once the capital of the United States.", answer: true))
        
        questionBank.append(Quiz(text: "The Empire State Building is visiable from space.", answer: false))
        
        questionBank.append(Quiz(text: "In Queens, there is a museum devoted to elevators..", answer: true))
        
        questionBank.append(Quiz(text: "President Theodore Roosevelt was born in NYC.", answer: true))
        
        questionBank.append(Quiz(text: "In 2017, the world's largest recorded food truck festival was held in Brooklyn.", answer: false))
        
    }
    
}
