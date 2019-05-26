import UIKit

// WHAT
protocol ArticleStrategy {
    func display(_ content: String)
}
//WHO
struct Article {
    let stragety: ArticleStrategy!
    func display(_ content: String) {
        self.stragety.display(content)
    }
}

//HOW
struct HtmlStragety: ArticleStrategy{
    func display(_ content: String) {
        print("Use htmlControl to display \(content)")
    }
}

struct TextStragety: ArticleStrategy {
    func display(_ content: String) {
        print("Use text to display \(content)")
    }
}

struct MarkdownStragety: ArticleStrategy {
    func display(_ content: String) {
        print("Use markdown to display \(content)")
    }
}



var htmlArticle  = Article(stragety: HtmlStragety())
htmlArticle.display("my strategy")
var textArticle  = Article(stragety: TextStragety())
textArticle.display("my strategy")
var markdown  = Article(stragety: MarkdownStragety())
markdown.display("my strategy")


