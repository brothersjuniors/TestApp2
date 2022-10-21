//
//  TodoItem.swift
//  TestApp
//
//  Created by 近江伸一 on 2022/10/21.
//

import Foundation
import RealmSwift
class TodoItem: Object{
    @objc dynamic var done: Bool = false
    @objc dynamic var name: String = ""


}
