//
//  AppModel.swift
//  PracticeRealm
//
//  Created by sean on 2016/3/31.
//  Copyright © 2016年 oddesign. All rights reserved.
//

import Foundation
import RealmSwift

class AppModel: Object {
  
  dynamic var name: String = ""
  
  convenience init(setName: String) {
    self.init()
    
    name = setName
    
  }
  
  
}
