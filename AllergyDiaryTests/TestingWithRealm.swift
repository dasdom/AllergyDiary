//
//  TestingWithRealm.swift
//  AllergyDiary
//
//  Created by dasdom on 07.06.15.
//  Copyright (c) 2015 Dominik Hauser. All rights reserved.
//

import Foundation
import UIKit
import XCTest
import RealmSwift
import AllergyDiary

//let TestRealm = "TestRealm.realm"

class TestingWithRealm: XCTestCase {
  
  override func setUp() {
    super.setUp()
    
    let path = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
    
    let testRealmPath = "\(path.first!)/\(TestRealm)"
    print(testRealmPath)
    Realm.defaultPath = testRealmPath
    
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
}
