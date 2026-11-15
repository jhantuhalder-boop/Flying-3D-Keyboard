
import UIKit

class KeyboardViewController: UIInputViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 6
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)

        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 6),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -6),
            stack.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
            stack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8)
        ])

        for letters in ["QWERTYUIOP", "ASDFGHJKL", "ZXCVBNM"] {
            let row = UIStackView()
            row.distribution = .fillEqually
            row.spacing = 4
            for char in letters {
                let button = UIButton(type: .system)
                button.setTitle(String(char), for: .normal)
                button.backgroundColor = .systemBlue
                button.setTitleColor(.white, for: .normal)
                button.layer.cornerRadius = 8
                button.addTarget(self, action: #selector(keyPressed(_:)), for: .touchUpInside)
                row.addArrangedSubview(button)
            }
            stack.addArrangedSubview(row)
        }
    }

    @objc func keyPressed(_ sender: UIButton) {
        guard let text = sender.currentTitle else { return }
        textDocumentProxy.insertText(text.lowercased())
    }
}
