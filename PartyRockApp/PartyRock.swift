//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by Денис Трясунов on 11/3/16.
//  Copyright © 2016 Денис Трясунов. All rights reserved.
//

import Foundation

class PartyRock {
    
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
    
    class func createPartyRock(id: String, title: String) -> PartyRock {
        let embedHtml = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/\(id)\" frameborder=\"0\" allowfullscreen></iframe>"
        let imageUrl = "http://img.youtube.com/vi/\(id)/0.jpg"
        
        return PartyRock(imageURL: imageUrl, videoURL: embedHtml, videoTitle: title)
    }
    
}
