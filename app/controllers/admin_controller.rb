class AdminController  < BaseController
  def article_view
   # @ArticleList = Article.all
    
    @ArticleList = Article.where(is_active: true)
  end
end
