import Foundation
import Vapor

struct PlayerData<CustomData: Content>: Content {
    let identifier: String?
    let title: String?
    let subtitle: String?
    let description: String?
    let posterUrl: String?
    let seasonNumber: Int?
    let episodeNumber: Int?
    let source: Source
    let subtitles: [Subtitle]?
    let chapters: [Chapter]?
    let timeRanges: [TimeRange]?
    let customData: CustomData?
}
