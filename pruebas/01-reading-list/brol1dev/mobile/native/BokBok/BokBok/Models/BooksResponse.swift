// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct BooksResponse: Codable {
    let items: [Item]
}

// MARK: - Item
struct Item: Codable, Identifiable {
    let kind, id, etag: String
    let volumeInfo: VolumeInfo
}

// MARK: - VolumeInfo
struct VolumeInfo: Codable {
    let title: String
//    let authors: [String]
//    let publisher, publishedDate, description: String
//    let industryIdentifiers: [IndustryIdentifier]
//    let readingModes: ReadingModes
//    let pageCount: Int
//    let printType: String
//    let categories: [String]
//    let averageRating: Double
//    let ratingsCount: Int
//    let maturityRating: String
//    let allowAnonLogging: Bool
//    let contentVersion: String
//    let panelizationSummary: PanelizationSummary
//    let imageLinks: ImageLinks
//    let language: String
//    let previewLink, infoLink: String
//    let canonicalVolumeLink: String
}

// MARK: - AccessInfo
struct AccessInfo: Codable {
    let country, viewability: String
    let embeddable, publicDomain: Bool
    let textToSpeechPermission: String
    let epub, pdf: Epub
    let webReaderLink: String
    let accessViewStatus: String
    let quoteSharingAllowed: Bool
}

// MARK: - Epub
struct Epub: Codable {
    let isAvailable: Bool
}

// MARK: - SaleInfo
struct SaleInfo: Codable {
    let country, saleability: String
    let isEbook: Bool
}

// MARK: - SearchInfo
struct SearchInfo: Codable {
    let textSnippet: String
}

// MARK: - ImageLinks
struct ImageLinks: Codable {
    let smallThumbnail, thumbnail: String
}

// MARK: - IndustryIdentifier
struct IndustryIdentifier: Codable {
    let type, identifier: String
}

// MARK: - PanelizationSummary
struct PanelizationSummary: Codable {
    let containsEpubBubbles, containsImageBubbles: Bool
}

// MARK: - ReadingModes
struct ReadingModes: Codable {
    let text, image: Bool
}
