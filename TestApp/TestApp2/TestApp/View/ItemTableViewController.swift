//
//  ItemTableViewController.swift
//  TestApp
//
//  Created by 近江伸一 on 2022/10/10.
//

import UIKit
import RealmSwift
class ItemTableViewController: UITableViewController {
    let realm = try! Realm()
    let item = TodoItem()
    var itemList: Results<TodoItem>!
    var token: NotificationToken!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ItemTableViewCell", bundle: nil), forCellReuseIdentifier: "checkListCell")
        
        itemList = realm.objects(TodoItem.self).sorted(byKeyPath: "name")
        token = realm.observe{notification,realm in
            self.tableView.reloadData()

        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return itemList?.count ?? 1
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "checkListCell", for: indexPath) as! ItemTableViewCell
        let item = itemList[indexPath.row]
        if item.done == false {
            cell.checkImageView?.image = UIImage(named: "Image")
        }else{
            cell.checkImageView.image = UIImage(named: "check")
        }
        cell.nameLabel.text = item.name


        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        if let item = itemList?[indexPath.row] {

            do {
                try! realm.write {

                    item.done = !item.done

                    }
                }
            }
            tableView.reloadData()
        }}

