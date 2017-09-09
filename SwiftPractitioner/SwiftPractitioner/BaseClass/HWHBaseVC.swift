
import UIKit

class HWHBaseVC: UIViewController {

    let screenW = UIScreen.main.bounds.size.width
    let screenH = UIScreen.main.bounds.size.height
    
    private var pStateBarStyle:UIStatusBarStyle?
    var stateBarStyle:UIStatusBarStyle{
        get{
            return pStateBarStyle!
        }
        set{
            pStateBarStyle = newValue
            UIApplication.shared.statusBarStyle = pStateBarStyle!
        }
    }
    
    private var pTitleColor:UIColor?
    var titleColor:UIColor{
        get{
            return pTitleColor!
        }
        set{
            pTitleColor = newValue
             self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: pTitleColor! ]
        }
    }
    
    
    override func loadView() {
         self.view = buildView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        requestData()
    }

    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = (pStateBarStyle == nil) ? UIStatusBarStyle.default:pStateBarStyle!
    }
    
    /// 创建视图
    func buildView() -> UIView {
        return UIView()
    }

    /// 请求数据 && 处理数据
    func requestData(){
        
    }
    
    /// 处理事件
    func handleActions(name:String){
        
    }

}
