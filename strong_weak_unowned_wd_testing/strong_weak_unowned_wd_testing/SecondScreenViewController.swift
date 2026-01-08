//
//  SecondScreenViewController.swift
//  strong_weak_unowned_wd_testing
//
//  Created by sachinkumar on 08/01/26.
//

import UIKit

class SecondScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        print("SecondScreenViewController loded")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // strong
//        DispatchQueue.main.asyncAfter(deadline : .now() + 5.0 ){
//            self.method()// increases retain count
//        }
        
        // unowned and weak increases retain count (unowned can never be nil , weak can be nil)
        DispatchQueue.main.asyncAfter(deadline : .now() + 5.0 ){ [weak self] in
            self?.method()
        }
        
        DispatchQueue.main.asyncAfter(deadline : .now() + 5.0 ){ [unowned self] in
            self.method() // self can not be nil , and also arc not mainating it in memory
            // CRASH will happen after sometime
            // use unowned when you are sure memory is not deallocated
        }
    }
    
    func method() {
        print("SecondScreenViewController method called")
    }

    deinit {
        print("SecondScreenViewController deallocated")
    }

}

