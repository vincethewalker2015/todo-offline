class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todo = Todo.new
    @todos = Todo.all
    
  end

  

  def create 
    @todo = Todo.new(todo_params)
    if @todo.save
      flash.now[:success] = "Todo was successfully created"
      redirect_to todos_path
    else
      flash.now[:danger] ="Nope... Try it again"
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update 
    if @todo.update(todo_params)
      flash.now[:success] = "Todo was successfully Updated"
      redirect_to todos_path
    else
      flash.now[:danger] = "That didn't work well! try again..."
      render 'edit'
    end
  end

  def destroy 
    @todo.destroy
    flash.now[:success] = "Todo was deleted"
    redirect_to todos_path
  end

  private 

  def todo_params 
    params.require(:todo).permit(:name, :description)
  end

  def set_todo 
    @todo = Todo.find(params[:id])
  end
end
