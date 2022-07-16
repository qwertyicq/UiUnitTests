//
//  TestProjectTests.swift
//  TestProjectTests
//
//  Created by SF on 01.06.2021.
//

import XCTest
@testable import TestProject

class TestProjectTests: XCTestCase {
    let mockUserData = UserMock(firstName: "Ivan", lastName: "Ivanov", bio: "Life is good", city: "Msk", friends: [], isClosed: false)
    
    let mockFriend = UserMock(firstName: "Friend", lastName: "Friendovith", bio: "Bio", city: "Spb", friends: [], isClosed: true)
    
    let mockFirstName = "First Name"
    let mockLastName = "Last Name"
    let mockBio = "Mock Bio"
    let mockCity = "Mock City"
    let mockClosed = true
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testChangeCity() throws {
        mockUserData.changeCity(mockCity)
        XCTAssertTrue(mockUserData.changeCityCalledCount > 0)
        XCTAssertTrue(mockUserData.changeCityCalled)
        XCTAssertTrue(mockUserData.city == mockCity)
    }
    
    func testChangeClosed() throws {
        mockUserData.changeClosed(mockClosed)
        XCTAssertTrue(mockUserData.changeClosedCalled)
        XCTAssertTrue(mockUserData.changeClosedCalledCount > 0)
        XCTAssertTrue(mockUserData.isClosed == mockClosed)
    }
    
    func testChangeName() throws {
        mockUserData.changeName(mockFirstName)
        XCTAssertTrue(mockUserData.changeNameCalled)
        XCTAssertTrue(mockUserData.changeNameCalledCount > 0)
        XCTAssertTrue(mockUserData.firstName == mockFirstName)
    }
    
    func testChangeLastName() throws {
        mockUserData.changeLastName(mockLastName)
        XCTAssertTrue(mockUserData.changedLastNameCalled)
        XCTAssertTrue(mockUserData.changedLastNameCalledCount > 0)
        XCTAssertTrue(mockUserData.lastName == mockLastName)
    }
    
    func testChangeBio() throws {
        mockUserData.changeBio(mockBio)
        XCTAssertTrue(mockUserData.changeBioCalled)
        XCTAssertTrue(mockUserData.changeBioCalledCount > 0)
        XCTAssertTrue(mockUserData.bio == mockBio)
    }
    
    func testAddFriend() throws {
        mockUserData.addFriend(mockFriend)
        XCTAssertTrue(mockUserData.addFriendCalled)
        XCTAssertTrue(mockUserData.addFriendCalledCount > 0)
        XCTAssertTrue(mockUserData.friends.contains(where: { user in
            for friend in mockUserData.friends {
                if (friend.firstName == user.firstName &&
                    friend.lastName == user.lastName &&
                    friend.bio == user.bio &&
                    friend.city == user.city &&
                    friend.isClosed == user.isClosed) {
                    return true
                }
            }
            
            return false
        }))
    }
}
