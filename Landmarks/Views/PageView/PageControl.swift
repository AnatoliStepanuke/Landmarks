import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    // MARK: - Properties
    var numberOfPages: Int
    @Binding var currentPage: Int

    // MARK: - Helpers
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged)

        return control
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }

    // MARK: - Coordinator
    class Coordinator: NSObject {
        // MARK: - Properties
        var control: PageControl

        // MARK: - Init
        init(_ control: PageControl) {
            self.control = control
        }

        // MARK: - Objc methods
        @objc func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}
