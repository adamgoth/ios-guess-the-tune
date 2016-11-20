//
//  Whistle.swift
//  guess-the-tune
//
//  Created by Adam Goth on 11/19/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import CloudKit
import UIKit

class Whistle: NSObject {
    var recordID: CKRecordID!
    var genre: String!
    var comments: String!
    var audio: URL!
}
