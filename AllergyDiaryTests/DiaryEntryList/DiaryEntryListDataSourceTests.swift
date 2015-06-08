//
//  DiaryListDataSourceTests.swift
//  AllergyDiary
//
//  Created by dasdom on 07.06.15.
//  Copyright (c) 2015 Dominik Hauser. All rights reserved.
//

import UIKit
import XCTest
import AllergyDiary
import RealmSwift

let TestRealm = "TestRealm.realm"

class DiaryEntryListDataSourceTests: XCTestCase {
  
  var dataSource: DiaryEntryListDataSource!
  var realmTestPath: String!
  
  override func setUp() {
    super.setUp()

    dataSource = DiaryEntryListDataSource()
    
    let path = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
    realmTestPath = "\(path.first!)/\(TestRealm)"
    
    deleteRealmFilesAtPath(realmTestPath)
    Realm.defaultPath = realmTestPath
  }
  
  override func tearDown() {
    deleteRealmFilesAtPath(realmTestPath)
    super.tearDown()
  }
  
//  func testNumberOfRowsIsEqualToNumberOfEntriesInRealm() {
//    let entryOne = DayEntry()
//    let entryTwo = DayEntry()
//    
//    let realm = Realm()
//    realm.write {
//      realm.add(entryOne)
//      realm.add(entryTwo)
//    }
//    
//    dataSource.fetchLast()
//    
//  }
  
}

extension DiaryEntryListDataSourceTests {
  func deleteRealmFilesAtPath(path: String) {
    let fileManager = NSFileManager.defaultManager()
    fileManager.removeItemAtPath(path, error: nil)
    let lockPath = path + ".lock"
    fileManager.removeItemAtPath(lockPath, error: nil)
  }
}
