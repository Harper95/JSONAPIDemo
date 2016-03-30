
class User {
    var name:String
	var website:String
	var email:String
	var phone:String
    
	init(name:String, website:String, email:String, phone:String) {
        self.name = name
		self.website = website
		self.email = email
		self.phone = phone
    }
}



let userResponse = JSON(data: RawData.getUsersData())


var users = [User]()

for obj in userResponse.arrayValue {
    print(obj)
	users.append(User(name: obj["name"].stringValue, website: obj["website"].stringValue, email: obj["email"].stringValue, phone: obj["phone"].stringValue))
}

users

