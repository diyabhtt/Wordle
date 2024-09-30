//
//  ViewController.swift
//  Wordle
//
//  Created by Bhattarai, Diya on 3/21/24.
//

import UIKit

class GameVC: UIViewController {
    
    @IBOutlet var help: UIButton!
    @IBOutlet var settings: UIButton!
    @IBOutlet var textField: UITextField!
    var myVc = SettingsVC()
    @IBOutlet var firstGuess: [Tiles]!
    @IBOutlet var secondGuess: [Tiles]!
    @IBOutlet var thirdGuess: [Tiles]!
    @IBOutlet var fourthGuess: [Tiles]!
    @IBOutlet var fifthGuess: [Tiles]!
    @IBOutlet var sixthGuess: [Tiles]!
    var guesses : [[Tiles]]!
    var guess: String = ""
    var chance = 0;
    var guessLetters: [Character] = []
    var wordExists = false;
    var correctLength = false;
    @IBOutlet var warning: UILabel!
    
    let words = Word.loadWordsFromFile()
    var word = Word()
    
    //var userGuess: [String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        guesses = [firstGuess, secondGuess, thirdGuess, fourthGuess, fifthGuess, sixthGuess]
        
    }
    
    func setUp()
    {
        //print(word.word)
        
    }
    
    @IBAction func enterGuess(_ sender: UITextView) 
    {
        
        guess = textField.text!
        let userGuess = Array(guess)
        print(userGuess)
        if(guess.count == 5)
        {
            warning.text = ""
            correctLength = true
            for i in 0..<words.count
            {
                if guess == words[i]
                {
                    wordExists = true;
                    warning.text = ""
                    break;
                }
                else
                {
                    warning.text = "Not a valid word"
                    wordExists = false
                   
                }
            }
        }
        else
        {
            correctLength = false
            warning.text = "Has to be 5 letters"
        }
        //print(words[0])
        
        //guessLetters = Array[Int(guess)]
        if(wordExists)
        {
           
            
            var i = 0
            if(chance <= 5)
            {
                for C in guess
                {
                    let status = word.compare(word.word, userGuess)
                    var count = 0;
                    for i in 0..<status.count
                    {
                        if(status[i] == "green")
                        {
                            count += 1
                        }
                        if(count == 4)
                        {
                            warning.text = "YOU WIN!"
                            print("game win")
                        }
                    }
                    guesses[chance][i].text = String(C)
                    //
                    guesses[chance][i].transition(status[i])
                    i += 1
                    print(i)
                }
                
            }
                
            chance += 1
        }
        
        
        
        
    }
        
        
       
        
       
    }
    

    
    
    

   

