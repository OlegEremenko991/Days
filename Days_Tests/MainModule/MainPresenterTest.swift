import XCTest
@testable import Days

final class MainPresenterTest: XCTestCase {
    var presenter: MainPresenter!
    var viewController: MainViewControllerMock!
    var interactor: MainInteractorMock!
    var router: MainRouterMock!

    override func setUpWithError() throws {
        presenter = MainPresenter(with: MainDataSource())
        viewController = MainViewControllerMock()
        interactor = MainInteractorMock()
        router = MainRouterMock()

        presenter.view = viewController
        presenter.interactor = interactor
        presenter.router = router
    }

    override func tearDownWithError() throws {
        presenter = nil
        viewController = nil
        interactor = nil
        router = nil
    }

    func testTypesOfSortCount() {
        let allSortOptions = SortBy.allCases.count
        let availableSortOptions = presenter.availableSortOptions.count
        XCTAssertNotEqual(allSortOptions, availableSortOptions)
    }

    func testRequestItems() {
        presenter.requestItems()
        XCTAssertNotEqual(.zero, presenter.dataSource.itemsCount)
        XCTAssertEqual(ItemsMock.itemsCount, presenter.dataSource.itemsCount)
    }

    func testRemoveItem() {
        ItemsMock.items.forEach { item in
            presenter.saveItem(
                with: item.title,
                and: item.date
            )
        }
        presenter.removeItem(at: ItemsMock.randomIndex, completion: nil)
        XCTAssertNotEqual(ItemsMock.itemsCount, presenter.dataSource.itemsCount)
        XCTAssertEqual(9, presenter.dataSource.itemsCount)
    }
}
