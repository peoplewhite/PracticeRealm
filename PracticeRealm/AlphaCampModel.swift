//
//  AlphaCampModel.swift
//  PracticeRealm
//
//  Created by sean on 2016/3/31.
//  Copyright © 2016年 oddesign. All rights reserved.
//

import Foundation
import RealmSwift

class AlphaCampModel: Object {
  
  dynamic var campNumber: Int = 0
  var student = [StudentModel]()
  
  
  
}
