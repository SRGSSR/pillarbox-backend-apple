import Foundation

struct Chapter: Codable {
    let identifier: String?
    let title: String
    let posterUrl: String?
    let startTime: Int
    let endTime: Int
}
