//
//  PollenContamination.swift
//  AllergyDiary
//
//  Created by dasdom on 07.06.15.
//  Copyright (c) 2015 Dominik Hauser. All rights reserved.
//

import Foundation
import RealmSwift

class PollenContamination : Object {
  dynamic var name = ""
  dynamic var value: Int8 = 0
  dynamic var source = ""
}