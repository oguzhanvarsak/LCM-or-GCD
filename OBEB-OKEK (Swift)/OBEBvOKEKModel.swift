//
//  OBEBvOKEKModel.swift
//  OBEB-OKEK (Swift)
//
//  Created by Oğuzhan Varsak on 22.06.2018.
//  Copyright © 2018 Oğuzhan Varsak. All rights reserved.
//

import UIKit

class OBEBvOKEKModel: NSObject {
    var sayi1:Int;
    var sayi2:Int;
    var sonuc:String;
    
    override init() {
        self.sayi1 = 0;
        self.sayi2 = 0;
        self.sonuc = "";
    }
    
    func obebHesapla() {
        var kucukSayi:Int = self.sayi1
        
        if (self.sayi2 < kucukSayi) {
            kucukSayi = self.sayi2
        }
        
        for i:Int in (1...kucukSayi).reversed() {
            if (self.sayi1 % i == 0 && self.sayi2 % i == 0){
                self.sonuc = String(i);
                return;
            }
            self.sonuc = "1"
        }
    }
    
    func okekHesapla() {
        var buyukSayi:Int = self.sayi1
        var kucukSayi:Int = self.sayi2
        
        if (self.sayi2 > buyukSayi){
            buyukSayi = self.sayi2
            kucukSayi = self.sayi1
        }
        
        if (buyukSayi % kucukSayi == 0){
            self.sonuc = String(buyukSayi);
            return;
        }
        
        var i:Int = buyukSayi * 2;
        
        while (true) {
            if (i % kucukSayi == 0 && i % buyukSayi == 0){
                self.sonuc = String(i);
                break;
            }
            i = i + buyukSayi;
        }
    }
}
