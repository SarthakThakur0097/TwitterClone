//
//  Constants.swift
//  TwitterClone
//
//  Created by Naresh on 4/16/20.
//  Copyright © 2020 Sarthak Thakur. All rights reserved.
//

import Firebase

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_images")

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")

