class CommentsController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.build(comment_params)

    if @comment.save
      redirect_to @task, notice: "success"
    else
      redirect_to @task, notice: "failed"
    end
  end


  def comment_params
    params.require(:comment).permit(:name,:email,:body)
  end
end
