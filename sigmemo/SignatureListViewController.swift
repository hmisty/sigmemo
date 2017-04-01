import UIKit

class SignatureListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let sigView = SignatureListView()
        let sigList = sigView.sigList

        self.view.backgroundColor = UIColor.green
        self.view.addSubview(sigList!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

