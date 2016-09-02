class ArticlesController < BaseController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Search article from basic information
  def basic_search
    #@articles = Article.where("volume = ? OR number = ? OR (? <= year AND year <= ?)", params[:article_volume], params[:article_issue], params[:from_year].to_i, params[:to_year].to_i)
    #@articles = Article.where (Article.article_by :title, 0, "practices").or Article.article_by :volume, 4, 77

    tables = ["articles_authors", "authors"]

    author = Object.const_get "Author"
    article = Object.const_get "Article"

    author_c = author.author_by "last_name", 0, "Camargo"
    article_c = article.article_by "volume", 4, 119
    con = author_c.and article_c

    @articles = (article.joins(*tables.map(&:to_sym)).where con).uniq

    #@articles = (Article.joins(ArticlesAuthor.arel_table).joins(Author.arel_table).where (Author.author_by :last_name, 0, "Camargo").and (Article.article_by :volume, 4, 119)).uniq
    @sql = ((Article.joins(:articles_authors).joins(:authors).where (Author.author_by :last_name, 0, "Camargo").and (Article.article_by :volume, 4, 119)).uniq).to_sql
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title)
    end
end
