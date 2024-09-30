//
//  SettingsVC.swift
//  Wordle
//
//  Created by Bhattarai, Diya on 3/25/24.
//

import UIKit

class SettingsVC: UIViewController {

    @IBOutlet var hardSwitch: UISwitch!
    @IBOutlet var darkSwitch: UISwitch!
   // var myVc = GameVC()
//    var darkOn = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //myVc = viewControllers?[1] as! GameVC
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func pressDark(_ sender: UISwitch)
    {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let interfaceStyle = window?.overrideUserInterfaceStyle == .unspecified ?  UIScreen.main.traitCollection.userInterfaceStyle : window?.overrideUserInterfaceStyle
        
        if interfaceStyle != .dark {
            window?.overrideUserInterfaceStyle = .dark
        } else {
            window?.overrideUserInterfaceStyle = .light
        }

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
