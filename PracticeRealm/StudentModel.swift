//
//  StudentModel.swift
//  PracticeRealm
//
//  Created by sean on 2016/3/31.
//  Copyright © 2016年 oddesign. All rights reserved.
//

import Foundation
import RealmSwift

class StudentModel: Object {
  
  dynamic var name: String = ""
  dynamic var app: String = ""
  
  
  convenience init(setName: String, setAppName: String) {
    self.init()
    
    name = setName
    app  = setAppName
    
  }
  
}
