import UIKit

class SignatureListData : NSObject, UITableViewDataSource {
    
    var itemString = ["昵称","账号","性别","地区","我的爱车"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : 5
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "identifierXXX"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: identifier);
        }
        
        if(indexPath.section == 0){
            cell?.textLabel?.text = "头像";
        }else{
            cell?.textLabel?.text = itemString[indexPath.row];
        }
        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator;
        return cell!;
    }
    
}
