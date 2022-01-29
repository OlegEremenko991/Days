import XCTest
@testable import Days_2_1

final class MainRouterTest: XCTestCase {
    var presenter: MainPresenterMock!
    var viewController: MainViewControllerMock!
    var interactor: MainInteractorMock!
    var router: MainRouter!

    override func setUpWithError() throws {
        presenter = MainPresenterMock()
        viewController = MainViewControllerMock()
        interactor = MainInteractorMock()
        router = MainRouter()

        router.viewController = viewController
    }

    override func tearDownWithError() throws {
        presenter = nil
        viewController = nil
        interactor = nil
        router = nil
    }

    func testOpenItemViewController() {
        router.openItemViewController()
        XCTAssertTrue(viewController.isItemsViewPresented)
    }
}
