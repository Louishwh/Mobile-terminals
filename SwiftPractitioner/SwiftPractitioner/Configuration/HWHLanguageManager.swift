//
//  HWHLanguageManager.swift
//  iOSPractitioner
//
//  Created by Louis.hwh on 2017/7/21.
//  Copyright © 2017年 Louishwh. All rights reserved.
//

import UIKit

class HWHLanguageManager: NSObject {
    
    let userLanguage = "UserLanguage"
    
    let appleLanguages = "AppleLanguages"
    
    static let shareInstance = HWHLanguageManager()
        
    let def = UserDefaults.standard
        
    var bundle : Bundle?
        
    class func getString(key:String) -> String{
            
            let bundle = HWHLanguageManager.shareInstance.bundle
            
            let str = bundle?.localizedString(forKey: key, value: nil, table: nil)
            
            return str!
            
    }
        
        func initUserLanguage() {
            
            var string:String = def.value(forKey: userLanguage) as! String? ?? ""
            
            if string == "" {
                
                let languages = def.object(forKey: appleLanguages) as? NSArray
                
                if languages?.count != 0 {
                    
                    let current = languages?.object(at: 0) as? String
                    
                    if current != nil {
                        
                        string = current!
                        
                        def.set(current, forKey: userLanguage)
                        
                        def.synchronize()
                        
                    }
                    
                }
                
            }
            
            string = string.replacingOccurrences(of: "-CN", with: "")
            
            string = string.replacingOccurrences(of: "-US", with: "")
            
            var path = Bundle.main.path(forResource:string , ofType: "lproj")
            
            if path == nil {
                
                path = Bundle.main.path(forResource:"en" , ofType: "lproj")
                
            }
            
            bundle = Bundle(path: path!)
            
        }
        
        func setLanguage(langeuage:String) {
            
            let path = Bundle.main.path(forResource:langeuage , ofType: "lproj")
            
            bundle = Bundle(path: path!)
            
            def.set(langeuage, forKey: userLanguage)
            
            def.synchronize()
            
        }

}
