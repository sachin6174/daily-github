//
//  secondScreenController.swift
//  weak_strong_unowned
//
//  Created by sachin kumar on 07/01/26.
//

import UIKit
//https://www.youtube.com/watch?v=Lzl9h_MovJg&list=PLV7VzbWXa60EiWHqcH_pNjuVYxW0JpcET
class SecondScreenController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecondScreenController allocated")
        
        // strong self capture
        DispatchQueue.main.asyncAfter(deadline: .now()  + 5.0){
            self.classMethod()
        }
        
        // to avoid strong ref -> we have weak ref and unowned ref
        // arc does not take weak and unowned ref in account
        // unowned can never be nil
        // Do any additional setup after loading the view.
    }
    
    func classMethod () {
        print("SecondScreenController method called")
    }
    
    deinit {
        print("SecondScreenController deallocated")
    }


    @IBAction func gobacktomain(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
