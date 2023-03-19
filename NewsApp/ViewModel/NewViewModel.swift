//
//  NewViewModel.swift
//  NewsApp
//
//  Created by Yunus Emre Berdibek on 19.03.2023.
//

import Foundation

//MVVM Oluşturdugun vc kadar viewmodel olsun önerir.

struct NewsTableViewModel {
    let newList : [News]
    
    func numberOfRowsInSection () -> Int {
        return self.newList.count
    }
    
    func cellForRowAt(_ index:Int) -> NewsViewModel {
        let news = self.newList[index] //newsList içindeki news'i al. Onu news'a ata. Diziden tekil'e dönüştür.
        return NewsViewModel(news: news)
    }
}

struct NewsViewModel {
    let news:News
    
    var title :String {
        return self.news.title
    }
    
    var story :String {
        return self.news.story
    }
}

