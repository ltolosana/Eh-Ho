////
////  LatestTopicsResponse.swift
////  Eh-Ho
////
////  Created by Luis Maria Tolosana Simon on 16/07/2019.
////  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
////
//
//
//import Foundation
//
//// MARK: - LatestTopicsResponse
//struct LatestTopicsResponse: Codable {
//
//    let users: [User]
////    let primaryGroups: [Group?]
//    let primaryGroups: [String?]
//    let topicList: TopicList
//
//    enum CodingKeys: String, CodingKey {
//        case users
//        case primaryGroups = "primary_groups"
//        case topicList = "topic_list"
//    }
//}
//
////struct Group: Codable {
////
////}
//
//// MARK: - TopicList
//struct TopicList: Codable {
//
//    let canCreateTopic: Bool
////    let draft: Draft?
//        let draft: String?
//    let draftKey: String
////    let draftSequence: DraftSequence?
//    let draftSequence: String?
//    let perPage: Int
//    let topics: [Topic]
//
//    enum CodingKeys: String, CodingKey {
//        case canCreateTopic = "can_create_topic"
//        case draft
//        case draftKey = "draft_key"
//        case draftSequence = "draft_sequence"
//        case perPage = "per_page"
//        case topics
//    }
//}
//
////struct Draft: Codable {
////
////}
////
////struct DraftSequence: Codable {
////
////}
//
//// MARK: - Topic
//struct Topic: Codable {
//
//    let id: Int
//    let title: String
//    let fancyTitle: String
//    let slug: String
//    let postsCount: Int
//    let replyCount: Int
//    let highestPostNumber: Int
//    let imageURL: String?
//    let createdAt: String
//    let lastPostedAt: String
//    let bumped: Bool
//    let bumpedAt: String
//    let unseen: Bool
////    let lastReadPostNumber: Int?
////    let unread: Int?
////    let newPosts: Int?
//    let pinned: Bool
////    let unpinned: Unpinned?
//        let unpinned: String?
//    let excerpt: String?
//    let visible: Bool
//    let closed: Bool
//    let archived: Bool
////    let notificationLevel: Int?
////    let bookmarked: Bookmarked?
//    let bookmarked: Bool?
////    let liked: Liked?
//        let liked: Bool?
//    let views: Int
//    let likeCount: Int
//    let hasSummary: Bool
//    let archetype: String //***
//    let lastPosterUsername: String
//    let categoryID: Int
//    let pinnedGlobally: Bool
////    let bookmarkedPostNumbers: [Int]?
////    let featuredLink: FeaturedLink?
//        let featuredLink: String?
//    let posters: [Poster]
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case title
//        case fancyTitle = "fancy_title"
//        case slug
//        case postsCount = "posts_count"
//        case replyCount = "reply_count"
//        case highestPostNumber = "highest_post_number"
//        case imageURL = "image_url"
//        case createdAt = "created_at"
//        case lastPostedAt = "last_posted_at"
//        case bumped
//        case bumpedAt = "bumped_at"
//        case unseen
////        case lastReadPostNumber = "last_read_post_number"
////        case unread
////        case newPosts = "new_posts"
//        case pinned
//        case unpinned
//        case excerpt
//        case visible
//        case closed
//        case archived
////        case notificationLevel = "notification_level"
//        case bookmarked
//        case liked
//        case views
//        case likeCount = "like_count"
//        case hasSummary = "has_summary"
//        case archetype
//        case lastPosterUsername = "last_poster_username"
//        case categoryID = "category_id"
//        case pinnedGlobally = "pinned_globally"
////        case bookmarkedPostNumbers = "bookmarked_post_numbers"
//        case featuredLink = "featured_link"
//        case posters
//    }
//}
//
//
////struct Unpinned: Codable {
////
////}
////
////struct Bookmarked: Codable {
////
////}
////
////struct Liked: Codable {
////
////}
////
////struct FeaturedLink: Codable {
////
////}
//
//// MARK: - Poster
//struct Poster: Codable {
//    let extras: String //***
//    let posterDescription: String
//    let userID: Int
////    let primaryGroupId: PrimaryGroupId?
//        let primaryGroupId: Int?
//
//    enum CodingKeys: String, CodingKey {
//        case extras
//        case posterDescription = "description"
//        case userID = "user_id"
//        case primaryGroupId = "primary_group_id"
//    }
//}
//
////struct PrimaryGroupId: Codable {
////
////}
//
//// MARK: - User
//struct User: Codable {
//    let id: Int
//    let username: String
//    let name: String
//    let avatarTemplate: String
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case username
//        case name
//        case avatarTemplate = "avatar_template"
//    }
//}


////////////////////////////////////

//import Foundation
//// MARK: - LatestTopicsResponse
//struct LatestTopicsResponse: Codable {
//    let users: [User]
//    let topicList: TopicList
//
//    enum CodingKeys: String, CodingKey {
//        case users
//        case topicList = "topic_list"
//    }
//}
//// MARK: - TopicList
//struct TopicList: Codable {
//    let canCreateTopic: Bool
//    let draftKey: String
//    let draftSequence: Int
//    let perPage: Int
//    let topics: [Topic]
//
//    enum CodingKeys: String, CodingKey {
//        case canCreateTopic = "can_create_topic"
//        case draftKey = "draft_key"
//        case draftSequence = "draft_sequence"
//        case perPage = "per_page"
//        case topics
//    }
//}
//// MARK: - Topic
//struct Topic: Codable {
//    let id: Int
//    let title: String
//    let fancyTitle: String
//    let slug: String
//    let postsCount: Int
//    let replyCount: Int
//    let highestPostNumber: Int
//    let imageURL: String?
//    let createdAt: String
//    let lastPostedAt: String
//    let bumped: Bool
//    let bumpedAt: String
//    let unseen: Bool
//    let lastReadPostNumber: Int
//    let unread: Int
//    let newPosts: Int
//    let pinned: Bool
//    let unpinned: Bool?
//    let visible: Bool
//    let closed: Bool
//    let archived: Bool
//    let notificationLevel: Int
//    let bookmarked: Bool
//    let liked: Bool
//    let views: Int
//    let likeCount: Int
//    let hasSummary: Bool
//    let archetype: String
//    let lastPosterUsername: String
//    let categoryID: Int
//    let pinnedGlobally: Bool
//    let bookmarkedPostNumbers: [Int]?
//    let posters: [Poster]
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case title
//        case fancyTitle = "fancy_title"
//        case slug
//        case postsCount = "posts_count"
//        case replyCount = "reply_count"
//        case highestPostNumber = "highest_post_number"
//        case imageURL = "image_url"
//        case createdAt = "created_at"
//        case lastPostedAt = "last_posted_at"
//        case bumped
//        case bumpedAt = "bumped_at"
//        case unseen
//        case lastReadPostNumber = "last_read_post_number"
//        case unread
//        case newPosts = "new_posts"
//        case pinned
//        case unpinned
//        case visible
//        case closed
//        case archived
//        case notificationLevel = "notification_level"
//        case bookmarked
//        case liked
//        case views
//        case likeCount = "like_count"
//        case hasSummary = "has_summary"
//        case archetype
//        case lastPosterUsername = "last_poster_username"
//        case categoryID = "category_id"
//        case pinnedGlobally = "pinned_globally"
//        case bookmarkedPostNumbers = "bookmarked_post_numbers"
//        case posters
//    }
//}
//// MARK: - Poster
//struct Poster: Codable {
//    let extras: String
//    let posterDescription: String
//    let userID: Int
//
//    enum CodingKeys: String, CodingKey {
//        case extras
//        case posterDescription = "description"
//        case userID = "user_id"
//    }
//}
//// MARK: - User
//struct User: Codable {
//    let id: Int
//    let username: String
//    let name: String
//    let avatarTemplate: String
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case username
//        case name
//        case avatarTemplate = "avatar_template"
//    }
//}
