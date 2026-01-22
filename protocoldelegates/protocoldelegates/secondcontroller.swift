//
//  secondcontroller.swift
//  protocoldelegates
//
//  Created by sachin kumar on 22/01/26.
//

import Foundation
import UIKit

protocol sendDataProtocol: AnyObject {
    func sendData(_ str :String)
}

class Secondcontroller: UIViewController {
    
    weak var addressOfFirstScreen :sendDataProtocol?  = nil
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendDataTofirst(_ sender: Any) {
        print(textField.text)
        addressOfFirstScreen?.sendData(textField.text ?? "")
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true , completion: nil)
    }
        
    }

