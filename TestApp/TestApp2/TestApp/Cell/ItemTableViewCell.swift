//
//  ItemTableViewCell.swift
//  TestApp
//
//  Created by 近江伸一 on 2022/10/10.
//

import UIKit
import RealmSwift
class ItemTableViewCell: UITableViewCell {
    let realm = try! Realm()
    let item = TodoItem()


    @IBOutlet weak var checkImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    

}
