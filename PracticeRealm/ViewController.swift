//
//  ViewController.swift
//  PracticeRealm
//
//  Created by sean on 2016/3/31.
//  Copyright © 2016年 oddesign. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  
  override func viewWillAppear(animated: Bool) {
    
//    makeModel()
    readModel()
    
  }
  
  func makeModel() {
    
    let arrStudent = [
      ["name": "sean", "app": "A"],
      ["name": "eric", "app": "B"],
      ["name": "evan", "app": "C"],
      ["name": "tank", "app": "D"],
      ]
  
    let arrStudentModelList = List<StudentModel>()
  
    
    for student: [String: String] in arrStudent {
      
      let appModel: AppModel = AppModel(setName: student["app"]!)
      let studentModel: StudentModel = StudentModel(setName: student["name"]!, setAppModel: appModel)
      
      arrStudentModelList.append(studentModel)
      
    }
    
    let alphacamp5Model: AlphaCampModel = AlphaCampModel(setCampNumber: 5, setStudentList: arrStudentModelList)
    
    
    try! Realm().write {
      
     try! Realm().add(alphacamp5Model)
      
      print("OK")
      
    }
    
  }
  
  func readModel() {
    
    let alphacampModel: Results<AlphaCampModel> = try! Realm().objects(AlphaCampModel)
    
    print("how many students = \(alphacampModel[0].students.count)")
    
    for alphacampStudentModel: StudentModel  in alphacampModel[0].students {
      
      print(" = \(alphacampStudentModel.name) have app name: \((alphacampStudentModel.own?.name)!)")
      
      
    }
    
    
  }
  

}

