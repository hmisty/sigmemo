import UIKit

class RootViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.createSubViewControllers()
    }
    
    func createSubViewControllers() {
        let sig = SignatureListViewController()
        let sigItem : UITabBarItem = UITabBarItem(title: "Signature",
                                                  image: UIImage(named: "tabbar_sig"),
                                                  selectedImage: UIImage(named: "tabbar_sig_selected")) //FIXME
        sig.tabBarItem = sigItem

        let me = MeViewController()
        let meItem : UITabBarItem = UITabBarItem(title: "Me",
                                                  image: UIImage(named: "tabbar_me"),
                                                  selectedImage: UIImage(named: "tabbar_me_selected")) //FIXME
        me.tabBarItem = meItem

        let demo = DemoViewController()
        let demoItem : UITabBarItem = UITabBarItem(title: "Demo",
                                                 image: UIImage(named: "tabbar_demo"),
                                                 selectedImage: UIImage(named: "tabbar_demo_selected")) //FIXME
        demo.tabBarItem = demoItem

        self.viewControllers = [sig, me, demo]
        self.selectedIndex = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

