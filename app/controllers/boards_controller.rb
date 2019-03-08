class BoardsController < ApplicationController

  before_action :find_board, only: [:show, :edit, :update, :destroy]


  def index
    @boards = Board.all
  end

  def show
  end

  def new
    @board = Board.new(board_params)
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @board.update(board_params)
      redirect_to boards_index_path
    else 
      render :edit
    end
  end

  def destroy
    @person.destroy
    redirect_to boards_index_path
  end

  private

  def board_params
    params.require(:board).perit(:title, :user_id)
  end
  
  def find_board
    @board = Board.find(params[:id])
  end
end
