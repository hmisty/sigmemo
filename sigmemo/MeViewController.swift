import UIKit

class MeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let meView = MeView._instance
        let btnAdd = meView.btnAdd

        self.view.backgroundColor = UIColor.blue
        self.view.addSubview(btnAdd!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

