//
//  DetailViewModel.swift
//  MVVM-full-practice
//
//  Created by Emre Yıldız on 19.04.2023.
//

import Foundation

protocol DetailViewModelInterface {
    var view: DetailScreenInterface? { get set }
    
    func viewDidLoad()
}

final class DetailViewModel {
    weak var view: DetailScreenInterface?
}

extension DetailViewModel: DetailViewModelInterface {
    func viewDidLoad() {
        view?.configureVC()
        view?.configurePosterImageView()
        view?.downloadPosterImage()
        view?.configureTitleLabel()
        view?.configureDateLabel()
        view?.configureOverviewLabel()
    }
}
