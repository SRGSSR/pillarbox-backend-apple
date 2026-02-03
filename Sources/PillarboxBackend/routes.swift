import Vapor

func routes(_ app: Application) throws {
    app.get { req async -> String in
        """
        🎬 Pillarbox Backend
            • Available endpoints:
                - /identifiers
                - /media/:identifier
        """
    }

    app.get("identifiers") { req async throws -> [String] in
        PlayerDataController.contents()
    }

    app.get("media", ":identifier") { req async throws -> PlayerData<CustomData> in
        guard let identifier = req.parameters.get("identifier"), let content = PlayerDataController.content(with: identifier) else {
            throw Abort(.notFound)
        }
        return content
    }
}
