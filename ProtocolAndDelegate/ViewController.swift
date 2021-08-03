//
//  ViewController.swift
//  ProtocolAndDelegate
//
//  Created by makarand gharat on 28/07/21.
//

import UIKit

class ViewController: UIViewController,DataPass {
    
    

    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblcity: UILabel!
    @IBOutlet weak var lblage: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func btnGoToForm(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        vc.delegate = self
        self.navigationController?.pushViewController( vc, animated: true)
    
    }
    
    func DataPassing(name: String, city: String, age: String) {
        
        lblname.text = "Name: \(name)"
        lblcity.text = "City: \(city)"
        lblage.text  = "Age: \(age)"
        
        }

    
}

