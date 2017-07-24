

import UIKit

class HWHBaseNaviC: UINavigationController {

    override func viewDidLoad() {
        self.navigationBar.barTintColor =  UIColor.init(red: 15/255.0, green: 145/255.0, blue: 230/255.0, alpha: 1.0)
        self.navigationBar.isTranslucent = false
        self.view.backgroundColor = UIColor.white
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

}
