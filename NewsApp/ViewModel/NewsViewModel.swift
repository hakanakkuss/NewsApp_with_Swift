import Foundation

struct NewsTableViewModel {
    
    let newsArray : [News]
}

struct NewsViewModel {
    let news : News
}



extension NewsTableViewModel {
    func numberOfSection () -> Int {
        return self.newsArray.count
    }
    
    func cellForRowAt (_ index : Int) -> NewsViewModel {
        let news = self.newsArray[index]
        return NewsViewModel.init(news: news)
    }
}

extension NewsViewModel {
    var title :String {
        return self.news.title!
    }
    
    var story : String {
        return self.news.story!
    }
}
