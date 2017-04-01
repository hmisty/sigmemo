import UIKit

class DemoViewController : UIViewController {
    
    override func viewDidLoad() {
        let view = DemoView._instance
        let btn = view.btn;
        self.view.addSubview(btn!)
    }
    
    @objc func btnTapped(_ sender: UIButton) {
        print("print: surprise!")
    }

}

class DemoView {
    var btn : UIButton!

    static let _instance = DemoView()
    
    private init() {
        btn = UIButton()
        btn.frame = CGRect(x: 110, y: 70, width: 100, height: 44)
        btn.backgroundColor = UIColor.blue
        btn.setTitle("Press me", for: .normal)
        btn.setTitle("I'm Pressed", for: .highlighted)
        btn.addTarget(self, action: .btnTapped, for: .touchUpInside)
    }
    
    @objc func btnTapped(_ sender: UIButton) {
        print("print: demo button is tapped")
    }
    
}

private extension Selector {
    static let btnTapped = #selector(DemoView.btnTapped)
}
