//
//  UserMock.swift
//  TestProject
//
//  Created by speed0 on 08.07.2022.
//

import Foundation

class UserMock: User {
    
    var changeCityCalledCount = 0
    var changeClosedCalledCount = 0
    var changeNameCalledCount = 0
    var changedLastNameCalledCount = 0
    var changeBioCalledCount = 0
    var addFriendCalledCount = 0
    
    var changeCityCalled = false
    var changeClosedCalled = false
    var changeNameCalled = false
    var changedLastNameCalled = false
    var changeBioCalled = false
    var addFriendCalled = false
    
    override func changeCity(_ city: String) {
        changeCityCalledCount += 1
        changeCityCalled = true
        super.changeCity(city)
        //self.city = city
    }
    
    override func changeClosed(_ isClosed: Bool) {
        changeClosedCalledCount += 1
        changeClosedCalled = true
        super.changeClosed(isClosed)
        //self.isClosed = isClosed
    }
    
    override func changeName(_ firstName: String) {
        changeNameCalledCount += 1
        changeNameCalled = true
        super.changeName(firstName)
        //self.firstName = firstName
    }
    
    override func changeLastName(_ lastName: String) {
        changedLastNameCalledCount += 1
        changedLastNameCalled = true
        super.changeLastName(lastName)
        //self.lastName = lastName
    }
    
    override func changeBio(_ bio: String) {
        changeBioCalledCount += 1
        changeBioCalled = true
        super.changeBio(bio)
        //self.bio = bio
    }
    
    override func addFriend(_ friend: User) {
        addFriendCalledCount += 1
        addFriendCalled = true
        super.addFriend(friend)
        //friends.append(friend)
    }
}
