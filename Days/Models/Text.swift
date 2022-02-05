import Foundation

enum Text {
    enum Alert {
        static let error = NSLocalizedString("Error", comment: "")
    }

    enum Main {
        case viewTitle
        case emptyList
        case today
        case daysPast(Int)
        case sortBy

        var text: String {
            switch self {
            case .viewTitle:
                return NSLocalizedString("Days have passed", comment: "MainVC title")
            case .emptyList:
                return NSLocalizedString("Items list is empty", comment: "")
            case .today:
                return NSLocalizedString("today", comment: "")
            case .daysPast(let count):
                return .localizedStringWithFormat(
                    NSLocalizedString("daysPast", comment: "days ago"),
                    count
                )
            case .sortBy:
                return NSLocalizedString("Sort by", comment: "")
            }
        }
    }

    enum Item {
        case viewTitle
        case titlePlaceholder

        var text: String {
            switch self {
            case .viewTitle:
                return NSLocalizedString("Remember event", comment: "ItemVC title")
            case .titlePlaceholder:
                return NSLocalizedString("Enter event placeholder", comment: "")
            }
        }
    }

    enum Button {
        case dateAscending
        case dateDescending
        case titleAscending
        case titleDescending
        case cancel
        case save
        case close

        var text: String {
            switch self {
            case .dateAscending:
                return NSLocalizedString("Date ↑", comment: "")
            case .dateDescending:
                return NSLocalizedString("Date ↓", comment: "")
            case .titleAscending:
                return NSLocalizedString("Title ↑", comment: "")
            case .titleDescending:
                return NSLocalizedString("Title ↓", comment: "")
            case .cancel:
                return NSLocalizedString("Cancel", comment: "")
            case .save:
                return NSLocalizedString("Done", comment: "")
            case .close:
                return NSLocalizedString("Close", comment: "")
            }
        }
    }
}