//
//  OBEBvOKEKViewController.swift
//  OBEB-OKEK (Swift)
//
//  Created by Oğuzhan Varsak on 22.06.2018.
//  Copyright © 2018 Oğuzhan Varsak. All rights reserved.
//

import UIKit


class OBEBvOKEKViewController: UIViewController {
    @IBOutlet weak var sayi1text: UITextField!
    @IBOutlet weak var sayi2text: UITextField!
    @IBOutlet weak var sonuctext: UILabel!
    
    var model:OBEBvOKEKModel = OBEBvOKEKModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func obebBul(_ sender: Any) {
        model.sayi1 = Int(sayi1text.text!)!
        model.sayi2 = Int(sayi2text.text!)!
        
        model.obebHesapla()
        sonuctext.text = model.sonuc
        self.view.endEditing(true)
    }
    
    @IBAction func okekBul(_ sender: Any) {
        model.sayi1 = Int(sayi1text.text!)!
        model.sayi2 = Int(sayi2text.text!)!
        
        model.okekHesapla()
        sonuctext.text = model.sonuc
        self.view.endEditing(true)
    }
}
