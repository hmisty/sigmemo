import Foundation
import UIKit

class MeView { //no need to : NSObject for #selector to work
    
    var btnAdd : UIButton!

    static let _instance = MeView()

    private init() {
        NSLog("log: MeView init...")
        
        btnAdd = UIButton()
        
        btnAdd.frame = CGRect(x: 110, y: 70, width: 100, height: 44)
        btnAdd.setTitle("Press Me", for: .normal)
        btnAdd.setTitle("I'm Pressed", for: .highlighted)
        btnAdd.addTarget(self, action: .btnTapped, for: .touchUpInside)
    }
    
    @objc func btnTapped(_ sender: UIButton) {
        print("print: button is tapped")
    }
    
}

private extension Selector {
    static let btnTapped = #selector(MeView.btnTapped)
}
