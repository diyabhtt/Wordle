//
//  Tiles.swift
//  Wordle
//
//  Created by Bhattarai, Diya on 4/2/24.
//

import Foundation
import UIKit

class Tiles: UILabel
{
    func transition(_ status: String)
    {
        UIView.transition(from: self, to: self , duration: 1, options:[.transitionFlipFromTop,.showHideTransitionViews])
        print("transition completed")
        color(status)
    }
    
    func color(_ status: String)
    {
//        for i in 0..<status.count
//        {
            if status == "green"
            {
                self.backgroundColor = #colorLiteral(red: 0.3263035417, green: 0.5520327687, blue: 0.3072054386, alpha: 1)
                print("green true")
                
            }
            if status == "yellow"
            {
                print("yellow true")
                self.backgroundColor = #colorLiteral(red: 0.7105181217, green: 0.626281321, blue: 0.2339369655, alpha: 1)
            }
            if status == "gray"
            {
                print("gray true")
                self.backgroundColor = #colorLiteral(red: 0.3701371253, green: 0.382227242, blue: 0.3903038204, alpha: 1)
            }
        //}
        
    }
}
