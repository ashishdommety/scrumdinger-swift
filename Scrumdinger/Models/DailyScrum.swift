import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    init (id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Ashu", "Yamu", "Nimal", "Divya"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "Mobile Dev", attendees: ["Ashu", "Yamu"], lengthInMinutes: 15, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Ashu", "Gow", "Pranee"], lengthInMinutes: 5, theme: .poppy)
    ]
    
}
