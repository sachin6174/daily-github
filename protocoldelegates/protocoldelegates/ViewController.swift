//
//  ViewController.swift
//  protocoldelegates
//
//  Created by sachin kumar on 22/01/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToSecondScreen(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Secondcontroller") as? Secondcontroller {
            vc.addressOfFirstScreen = self
            vc.modalPresentationStyle = .fullScreen
            if let nav = self.navigationController {
                nav.pushViewController(vc, animated: true)
            } else {
                present(vc, animated: true)
            }
        }
    }
    

}

extension ViewController : sendDataProtocol {
    func sendData(_ str: String) {
        print(str)
    }
    
    
}
