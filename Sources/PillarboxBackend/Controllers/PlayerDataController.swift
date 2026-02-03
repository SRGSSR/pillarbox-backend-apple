import Foundation

struct PlayerDataController {
    static func appleBasic16_9() -> PlayerData<Empty> {
        PlayerData(
            identifier: "pillarbox:apple-basic-16-9",
            title: "Apple Basic 16:9",
            subtitle: "16x9 aspect ratio, H.264 @ 30Hz",
            description: nil,
            posterUrl: URL(string: "https://www.apple.com/newsroom/images/default/apple-logo-og.jpg?202312141200")!,
            seasonNumber: nil,
            episodeNumber: nil,
            source: Source(
                url: URL(string:"https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_16x9/bipbop_16x9_variant.m3u8")!,
                type: .onDemand,
                mimeType: nil,
                videoFragments: nil,
                audioFragments: nil
            ),
            subtitles: nil,
            chapters: nil,
            timeRanges: nil,
            customData: Optional<Empty>.none
        )
    }
}
