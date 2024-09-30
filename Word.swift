import Foundation
import UIKit

import Foundation

class Word {
    var words: [String] = []
    var word: String = ""
    
    init()
    {
        word = pick()
       // print(word)
    }
    static func loadWordsFromFile() -> [String]
    {
        guard let filePath = Bundle.main.path(forResource: "dictionary", ofType: "txt") else {
            print("File not found.")
            return []
        }

        do {
            let fileContent = try String(contentsOfFile: filePath, encoding: .utf8)
            
            let lines = fileContent.components(separatedBy: .newlines)
            
            var fiveLetter: [String] = []
            for line in lines 
            {
                if line.count == 5
                {
                    fiveLetter.append(line)
                }
            }
                        
            return fiveLetter
            
            
        } catch
        {
            print("Error reading file:", error)
            return []
        }
    }
    
    func pick() -> String
    {
        words = Word.loadWordsFromFile()
        var i = Int.random(in: 0..<words.count)
        
        return words[i]
    }
    
    func compare(_ correct : String, _ guess : [Character]) -> [String]
    {
        var status : [String] = [String]()
        let array = Array(correct)
        print(array)
        for i in 0..<array.count
        {
            if(array.contains(guess[i]))
            {
                
                if(array[i] == guess[i])
                {
                    status.append("green")
                    print(" letter \(i) \(status[i])")
                }
                else
                {
                    status.append("yellow")
                    print(" letter \(i) \(status[i])")
                }
            }
            else
            {
                status.append("gray")
                print(" letter \(i) \(status[i])")
               // status[i] = "gray"
            }
            
            
        }
        return status
    }
    
    
    
    func update()
    {
        
    }
}
    
    
   

