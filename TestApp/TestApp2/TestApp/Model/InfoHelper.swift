//
//  InfoHelper.swift
//  TestApp
//
//  Created by 近江伸一 on 2022/10/21.
//

import Foundation
import RealmSwift
class InfoHelper {
    let item = TodoItem()


    func save(name: String){
        let realm = try! Realm()
        item.name = name
   
        try! realm.write{
            realm.add(item)
        }

    }

    func saves(done: Bool){
        let realm = try! Realm()

        item.done = false
        try! realm.write{
            realm.add(item)
        }

    }

}
