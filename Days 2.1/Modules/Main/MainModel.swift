import Foundation

struct MainModel {
    static func textFrom(date: Date) -> String {
        let today = Date()
        let calendar = Calendar.current
        let daysCount = calendar.numberOfDaysBetween(date, and: today)
        return daysCount != .zero
        ? Text.Main.daysPast(daysCount).text
        : Text.Main.today.text
    }

    static func navItemButtonsState(for itemsCount: Int) -> MainViewController.VisibleNavItemButtons {
        if itemsCount == .zero {
            return .none
        } else if itemsCount == 1 {
            return .add
        } else {
            return .sortAndAdd
        }
    }
}
