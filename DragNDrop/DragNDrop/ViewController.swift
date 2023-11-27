//
//  ViewController.swift
//  DragNDrop
//
//  Created by Pedro Sousa on 27/11/23.
//

import UIKit

class ViewController: UIViewController {

    let square: UIView = {
        let view = UIView(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let dropArea: UIView = {
        let view = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.addSubview(dropArea)
        self.view.addSubview(square)
        square.center = view.center
        setupGesture()
    }

    func setupGesture() {
        let gesture = UIPanGestureRecognizer()
        gesture.addTarget(self, action: #selector(didPan))
        square.addGestureRecognizer(gesture)
    }

    @objc func didPan(_ sender: UIPanGestureRecognizer) {
        square.center = sender.location(in: view)
        print(dropArea.point(inside: sender.location(in: view), with: nil))
    }
}

#Preview {
    ViewController()
}

