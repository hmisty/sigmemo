import Foundation
import UIKit

class SignatureListView {

    var sigList : UITableView!
    
    init() {
        let screen = UIScreen.main.bounds

        let dataTableW : CGFloat = screen.width
        let dataTableH : CGFloat = screen.height
        let dataTableX : CGFloat = 0
        let dataTableY : CGFloat = 0
        
        sigList = UITableView(frame: CGRect(x: dataTableX,
                                            y: dataTableY,
                                            width: dataTableW,
                                            height: dataTableH),
                              style: UITableViewStyle.grouped)
        
        sigList.delegate = SignatureListDelegate()
        sigList.dataSource = SignatureListData()
    }
    
}
