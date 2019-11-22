//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Bera on 22.11.2019.
//  Copyright © 2019 Bera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Uygulamanın hangi modda kalmasını istiyorsak onu belirtiyoruz.
        overrideUserInterfaceStyle = .light
    }
    //Başka bir uygulamaya gidildiğinde yani telefon ile ilgili ayarlar değiştirilip geri uygulamaya dönülürse değişikliklerin anlık olarak uygulanabilmesi için bu fonkisyon çağırılır.
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        //traitCollection ile kullanıcının telefon özelliklerine ulaşabiliyoruz.
        //Kullanıcının telefonu hangi modda kullanıldığını görmek için userInterfaceStyle değerini çağırıyoruz.
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark{
            changeButton.tintColor = UIColor.white
        }
        else{
            changeButton.tintColor = UIColor.blue
        }
    }
}

