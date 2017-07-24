

import UIKit

class HWHBaseTabBarC: UITabBarController {

    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.white
    }
    
}


extension HWHBaseTabBarC{


    
    func addChildVC(vc:UIViewController,name:String,tabBarSystemItem:UITabBarSystemItem) -> Void {
        vc.tabBarItem = UITabBarItem(tabBarSystemItem:tabBarSystemItem, tag: 0)
        vc.title = name;
        let naviC = HWHBaseNaviC.init(rootViewController: vc)
        addChildViewController(naviC)
        
    }
    
    func addChildVC(vc:UIViewController,name:String,imageName:String) -> Void {
        
        vc.title = name;
        vc.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate)
        vc.tabBarItem.selectedImage = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
//vc.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
//        vc.tabBarItem.selectedImage = UIImage(named: imageName + "_hlight")?.withRenderingMode(.alwaysOriginal)
        let naviC = HWHBaseNaviC.init(rootViewController: vc)
        addChildViewController(naviC)
        
    }
    
}

    
