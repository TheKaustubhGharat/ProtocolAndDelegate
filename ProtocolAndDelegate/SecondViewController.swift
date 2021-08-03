//
//  SecondViewController.swift
//  ProtocolAndDelegate
//
//  Created by makarand gharat on 28/07/21.
//

import UIKit

protocol DataPass{
    
    func DataPassing(name:String,city:String,age:String)
    
}

class SecondViewController: UIViewController {
    
    


    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtcity: UITextField!
    @IBOutlet weak var txtage: UITextField!
    var delegate:DataPass!
    
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



    @IBAction func btnsave(_ sender: Any) {
        if txtname.text == "" {
            Alert()
        }else if  txtcity.text == "" {
            Alert()
        }else if txtage.text == "" {
            Alert()
        }else{
        delegate.DataPassing(name: txtname.text!, city: txtcity.text!, age: txtage.text!)
        }
        
    }
    
    func Alert () {
        let alert = UIAlertController(title:"Stop", message: "Please Check The RequiredField To Continue", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
        }))
        present(alert, animated: true)
        
        
        
        
    }
    


}
