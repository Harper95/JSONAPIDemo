//
//  User.swift
//  JSONTest
//
//  Created by hollarab on 2/21/16.
//  Copyright © 2016 a. brooks hollar. All rights reserved.
//

import Foundation

public class User {
    public var name:String
	public var website:String
	public var email:String
	public var phone:String
    
	init(name:String, website:String, email:String, phone: String) {
        self.name = name
		self.website = website
		self.email = email
		self.phone = phone
    }
}