class ArticlesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def new
  end
 
  def create 
  # json_string ={"x":"1"}
  # render plain: params[:article].inspect
  # render json:  json_string,status=>"200 oK"
    @article = Article.new(article_params)
    @article.save


    @as=Array.new(12)
    @as = article_params[:title].split(':')
    @stat =Stat.new()
    @stat.w1=@as[0];@stat.s1=@as[1];@stat.d1=@as[2];@stat.t1=@as[3]
    @stat.w2=@as[4];@stat.s2=@as[5];@stat.d2=@as[6];@stat.t2=@as[7]
    @stat.w3=@as[8];@stat.s3=@as[9];@stat.d3=@as[10];@stat.t3=@as[11]
    

    @stat.save
  #  render plain: params[:stat].inspect
  #  render plain: params[:article].inspect
  #  redirect_to @article
     json = @stat
     render json: json
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
