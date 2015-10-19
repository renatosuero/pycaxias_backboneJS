class TodosController < ApplicationController

  def index
    @todos = Todo.all
    render json: @todos
  end

  def show
  end

  def create
    #@todo = Todo.new(todo_params)
    @todo = Todo.new
    @todo.title = params[:title]
    @todo.done = params[:done]
    @todo.save
    render json: @todo
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.title = params[:title]
    @todo.done = params[:done]
    @todo.save
    #@todo.update(todo_params)
    render json: @todo
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    render json: @todo
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:body, :completed, :title, :done)
    end
end
