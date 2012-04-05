class ArticlesController < ApplicationController

	def index
		@articles = Article.all #Article Model
	end

	def new
		@article = Article.new
			
	end

	def create
		#raise params.inspect
		@article = Article.new(params[:article])
		#@article.title = params[:article][:title]
		#@article.body = params[:article][:body]
		@article.save
		flash[:message] = "Article '#{@article.title}' Created!"
		redirect_to article_path(@article)
	end
	
	def show
		@article = Article.find(params[:id])
        @comment = @article.comments.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		@article.update_attributes(params[:article])
		flash[:message] = "Article '#{@article.title}' Updated!"
		redirect_to article_path(@article)
	end

	def destroy
		#raise params.inspect
		@article = Article.delete(params[:id])
		redirect_to :action => "index"
		
	end


end
