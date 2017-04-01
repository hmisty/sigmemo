import UIKit

class SignatureListDelegate : NSObject, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 80 : 55
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    /*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true);
        
        if(indexPath.row == 0){
            let pushSingleInfo = SignatureListViewController();
            pushSingleInfo.hidesBottomBarWhenPushed = true;
            pushSingleInfo.navigationController?.pushViewController(pushSingleInfo, animated: true);
        }
    }*/

}
