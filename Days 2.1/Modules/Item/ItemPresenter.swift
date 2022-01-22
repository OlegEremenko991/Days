import Foundation

protocol ItemPresenterProtocol: AnyObject {
    var router: ItemRouterProtocol? { get set }
    func viewDidLoad()
    func title() -> String
    func saveButtonClicked()
    func checkNameForLettersIn(text: String?)
    func setSaveButton(enabled: Bool)
    func backButtonTapped()
}

final class ItemPresenter {
    weak var view: ItemViewControllerProtocol?
    var interactor: ItemInteractorProtocol?
    var router: ItemRouterProtocol?
}

extension ItemPresenter: ItemPresenterProtocol {
    func viewDidLoad() {
        view?.setSaveButton(enabled: false)
    }

    func title() -> String {
        Text.Item.viewTitle.text
    }

    func saveButtonClicked() {
        router?.dismissViewController()
    }

    func checkNameForLettersIn(text: String?) {
        interactor?.checkNameForLettersIn(string: text)
    }

    func setSaveButton(enabled: Bool) {
        view?.setSaveButton(enabled: enabled)
    }

    func backButtonTapped() {
        router?.dismissViewController()
    }
}
