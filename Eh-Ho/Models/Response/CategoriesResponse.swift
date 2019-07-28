//
//  CategoriesResponse.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 24/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import Foundation

// MARK: - CategoriesResponse
struct CategoriesResponse: Codable {
    let categoryList: CategoryList
    
    enum CodingKeys: String, CodingKey {
        case categoryList = "category_list"
    }
}

// MARK: - CategoryList
struct CategoryList: Codable {
    let canCreateCategory: Bool
    let canCreateTopic: Bool
    let draft: Bool?
    let draftKey: String
    let draftSequence: Int
    let categories: [Category]
    
    enum CodingKeys: String, CodingKey {
        case canCreateCategory = "can_create_category"
        case canCreateTopic = "can_create_topic"
        case draft
        case draftKey = "draft_key"
        case draftSequence = "draft_sequence"
        case categories
        
    }
}

// MARK: - Category
struct Category: Codable {
    let id: Int
    let name: String
    let color: String
    let textColor: String?
    let slug: String
    let topicCount: Int
    let postCount: Int
    let position: Int
    let description: String
    let descriptionText: String
    let topicUrl: String? // En el primero tiene texto en el segundo no tiene nada
    let logoUrl: String?
    let backgroundUrl: String?
    let readRestricted: Bool
    let permission: Int
    let notificationLevel: Int
    let canEdit: Bool?
    let topicTemplate: String?
    let hasChildren: Bool
    let sortOrder: String?
    let sortAscending: String?
    let showSubcategoryList: Bool
    let numFeaturedTopics: Int
    let defaultView: String?
    let subcategoryListStyle: String
    let defaultTopPeriod: String
    let minimunRequiredTags: Int
    let navigateToFirstPostAfterRead: Bool
    let topicsDay: Int
    let topicsWeek: Int
    let topicsMonth: Int
    let topicsYear: Int
    let topicsAllTime: Int
    let descriptionExcerpt: String
    let isUncategorized: Bool? //no aparece en el primero pero si en el segundo
    let uploadedLogo: String?
    let uploadedBackground: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case color
        case textColor
        case slug
        case topicCount =  "topic_count"
        case postCount =  "post_count"
        case position
        case description
        case descriptionText =  "description_text"
        case topicUrl =  "topic_url"
        case logoUrl =  "logo_url"
        case backgroundUrl =  "background_url"
        case readRestricted =  "read_restricted"
        case permission
        case notificationLevel =  "notification_level"
        case canEdit =  "can_edit"
        case topicTemplate =  "topic_template"
        case hasChildren =  "has_children"
        case sortOrder = "sort_order"
        case sortAscending = "sort_ascending"
        case showSubcategoryList = "show_subcategory_list"
        case numFeaturedTopics = "num_featured_topics"
        case defaultView = "default_view"
        case subcategoryListStyle = "subcategory_list_style"
        case defaultTopPeriod = "default_top_period"
        case minimunRequiredTags = "minimum_required_tags"
        case navigateToFirstPostAfterRead = "navigate_to_first_post_after_read"
        case topicsDay =  "topics_day"
        case topicsWeek =  "topics_week"
        case topicsMonth =  "topics_month"
        case topicsYear =  "topics_year"
        case topicsAllTime =  "topics_all_time"
        case descriptionExcerpt =  "description_excerpt"
        case isUncategorized = "is_uncategorized"
        case uploadedLogo = "uploaded_logo"
        case uploadedBackground = "uploaded_background"
    }
    
}

