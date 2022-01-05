import UIKit

protocol ItemPresenterProtocol: AnyObject {
    var router: ItemRouterProtocol? { get set }
    func viewDidLoad()
    func title() -> String
    func saveButtonClicked()
    func checkNameForLetters(textField: UITextField)
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
        NSLocalizedString("Remember event", comment: "ItemVC title")
    }

    func saveButtonClicked() {
        router?.closeCurrentViewController()
    }

    func checkNameForLetters(textField: UITextField) {
        interactor?.checkNameForLetters(textField: textField)
    }

    func setSaveButton(enabled: Bool) {
        view?.setSaveButton(enabled: enabled)
    }

    func backButtonTapped() {
        router?.closeCurrentViewController()
    }
}
