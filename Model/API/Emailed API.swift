//
//  Emailed API.swift
//  NY NewsApp
//
//  Created by Георгий Кузнецов on 4/17/24.
//

import Foundation


struct Emailed: Decodable {
    let status : String
    let copyright: String
    let num_results: Int
    let results: [Results]
}

struct Results: Decodable {
    let uri: String
    let url: String
    let id:  UInt64
    let assetId: UInt64
    let source: String
    let publishedDate: String
    let updated: String
    let section: String
    let subsection: String
    let nytdsection: String
    let adxKeywords: String
    var column: String?
    let byline: String
    let type: String
    let title: String
    let abstract: String
    let desFacet: [String]?
    let orgFacet: [String]?
    let perFacet: [String]?
    let geoFacet: [String]?
    let media: [Media]
    let etaId: Int
    
    enum CodingKeys: String, CodingKey {
        case uri, url, id, source, updated, section, subsection, nytdsection, column, byline, type, title, abstract, media
        case assetId = "asset_id"
        case publishedDate = "published_date"
        case adxKeywords = "adx_keywords"
        case desFacet = "des_facet"
        case orgFacet = "org_facet"
        case perFacet = "per_facet"
        case geoFacet = "geo_facet"
        case etaId = "eta_id"
        

    }
}

struct Media: Decodable {
    let type: String
    let subtype: String
    let caption: String
    let copyright: String
    let approvedForSyndication: Int
    let mediaMetadata: [MediaMetadata]
    
    enum CodingKeys: String, CodingKey {
        case type, subtype, caption, copyright
        case mediaMetadata = "media-metadata"
        case approvedForSyndication = "approved_for_syndication"
    }
}

struct MediaMetadata: Decodable {
    let url: String
    let format: String
    let height: Int
    let width: Int
}

