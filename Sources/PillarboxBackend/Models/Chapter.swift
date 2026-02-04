import Foundation

struct Chapter: Codable {
    let identifier: String?
    let title: String
    let posterUrl: URL?
    let startTime: Int
    let endTime: Int
}
