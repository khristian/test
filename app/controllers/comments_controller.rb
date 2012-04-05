class CommentsController < ApplicationController

   def create
		@comment = Comment.new(params[:article])
		#@article.title = params[:comment][:title]
		#@article.body = params[:comment][:body]
		@comment.save
		redirect_to articles_path(@comment.article)
		#redirect_to ("http://www.google.com") #--- THIS WORKS
   	end


  # def create
        #raise params.inspect
	#	@article = Comment.new(params[:article])
	#	redirect_to article_path(@comment.article)
    #end

    #def show
   	 	#@comment = @article.comments.new
     	#redirect_to article_path(@comment.article)
    #end
    

end
