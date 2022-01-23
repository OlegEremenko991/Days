import CoreGraphics

struct Layout {
    struct Button {
        struct Navigation {
            static let width = CGFloat(48)
        }
        static let height = CGFloat(48)
    }
    struct Insets {
        static let standard = CGFloat(16)
        static let average  = standard/2
        static let small    = standard/4
    }
}
