//
//  EntryInputDataSource.swift
//  AllergyDiary
//
//  Created by dasdom on 07.06.15.
//  Copyright (c) 2015 Dominik Hauser. All rights reserved.
//

import UIKit

public class EntryInputDataSource: NSObject {
  
  public let entry: DayEntry
  
  public init(entry: DayEntry = DayEntry()) {
    self.entry = entry
  }
  
  public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return EntryInputSectionTypes.NumberOfSections.rawValue
  }
  
  public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    var numberOfRows = 0
    
    let sectionType = EntryInputSectionTypes(rawValue: section)!
    switch sectionType {
    case .Date:
      numberOfRows = 1
    case .Afflictions:
      numberOfRows = 5
    case .Times:
      numberOfRows = 2
    default:
      break
    }
    return numberOfRows
  }
  
}

enum EntryInputSectionTypes: Int {
  case Date = 0
  case Afflictions
  case Times
  case Medicine
  case Provision
  case PollenContamination
  case NumberOfSections
}
