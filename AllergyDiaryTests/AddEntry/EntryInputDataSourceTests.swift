//
//  EntryInputDataSourceTests.swift
//  AllergyDiary
//
//  Created by dasdom on 07.06.15.
//  Copyright (c) 2015 Dominik Hauser. All rights reserved.
//

import UIKit
import XCTest
import AllergyDiary
import RealmSwift

class EntryInputDataSourceTests: XCTestCase {
  
  var dataSource: EntryInputDataSource!
  
  override func setUp() {
    super.setUp()

    dataSource = EntryInputDataSource()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testEntryHasCurrentDateAsDefault() {
    let date = dataSource.entry.date
    
    XCTAssertTrue(abs(date.timeIntervalSinceNow) < 1, "Date is not current date")
  }
  
  func testNumberOfSectionsIsSix() {
    XCTAssertEqual(dataSource.numberOfSectionsInTableView(UITableView()), 6, "Number of sections is wrong")
  }
  
  func testNumberOfRowsInFirstThreeSectionsAreAsExpected() {
    XCTAssertEqual(dataSource.tableView(UITableView(), numberOfRowsInSection: 0), 1, "Wrong number of rows")
    XCTAssertEqual(dataSource.tableView(UITableView(), numberOfRowsInSection: 1), 5, "Wrong number of rows")
    XCTAssertEqual(dataSource.tableView(UITableView(), numberOfRowsInSection: 2), 2, "Wrong number of rows")
  }
  
}
