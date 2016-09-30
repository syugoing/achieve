class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @blog = @comment.blog
    respond_to do |format|
      if @comment.save
        format.html { redirect_to blog_path(@blog), notice: 'コメントを投稿しました。' }
        format.json { render :show, status: :created, location: @comment }
        format.js { render :index }
        else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @blog = @comment.blog
    @comment.destroy
    respond_to do |format|
      format.html {redirect_to blog_path(@blog), notice: "ブログを削除しました！"}
      format.json { render :show, status: :created, location: @comment }
      format.js { render :index }
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:blog_id, :content)
    end
end