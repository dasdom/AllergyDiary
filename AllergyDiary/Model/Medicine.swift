//
//  Medicine.swift
//  AllergyDiary
//
//  Created by dasdom on 07.06.15.
//  Copyright (c) 2015 Dominik Hauser. All rights reserved.
//

import Foundation
import RealmSwift

class Medicine : Object {
  dynamic var date = NSDate()
  dynamic var name = ""
  dynamic var dose = ""
}