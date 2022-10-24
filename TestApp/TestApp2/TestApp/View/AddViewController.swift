//
//  AddViewController.swift
//  TestApp
//
//  Created by 近江伸一 on 2022/10/10.
//

import UIKit
import RealmSwift
class AddViewController: UIViewController {
    let realm = try! Realm()
   // var item: String = ""
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addButton(_ sender: Any) {
        InfoHelper().save(name: textField.text!)
        
        dismiss(animated: true,completion: nil)

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
          
            self.view.endEditing(true)
        }

}
