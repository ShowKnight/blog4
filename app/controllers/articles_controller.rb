class ArticlesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def new
  end
 
  def create 
    render plain: params[:article].inspect
    json_string = "{'x':'1'}"
#    render :json => json_string,status=>"200 oK"
    @article = Article.new(article_params)
    @article.save
    # redirect_to @article
  end
  
  def index
    @articles = Article.all
  end
   
  def show
    @article = Article.find(params[:id]) 
  end

  def edit
   end
   def destroy
   end


  private
    def article_params 
      params.require(:article).permit(:title)
    end
end
