//
//  SecondViewController.swift
//  LifeCycleViewController
//
//  Created by Debash on 07.05.2018.
//  Copyright © 2018 swiftbook.ru. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var someProperties: String? {
        didSet {
            print("someProrties")
        }
    }
    
    @IBOutlet weak var closeButton: UIButton! {
        didSet {
            print("closeButton")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // Срабатывает после загрузки View
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hello()
    }
    
    // Срабатывает перед появленем вью на экране
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    // Срабатывает перед тем, как размер вью поменятся под размер экрана
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
    // Тут срабатывает Auto Layout
    
    // Срабатывает после того, как размер вью изменился под размер экрана
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }
    
    override func updateViewConstraints() {
        print("updateViewConstraints")
        super.updateViewConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillTransition(to size: CGSize,
                                     with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition")
    }

    // Срабатывает при нехватке памяти
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Обнуление не используемых объектов
    }
    
    func hello() {
        print("viewDidLoad")
    }
    

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    // Срабатывает перед тем, как вью закроется
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    // Срабатывает после закрытия вью
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    // Выгружает объект из памяти
    deinit {
        print("deinit")
    }

}
