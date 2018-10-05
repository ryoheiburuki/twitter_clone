class MurmursController < ApplicationController
  before_action :set_murmur, only:[:show, :edit, :update, :destroy]
  
  def index
    @murmur = Murmur.all
  end
  
  def new
    @murmur = Murmur.new
  end
  
  def confirm
    @murmur = Murmur.new(murmur_params)
  end
  
  def create
    @murmur = Murmur.new(murmur_params)
    if @murmur.save
      redirect_to murmurs_path, notice:"上手につぶやけました！"
    else
      render'new'
    end
  end
  
  def edit
  end
  
  def show
  end
  
  def update
    if @murmur.update(murmur_params)
      redirect_to murmurs_path, notice:"もっと上手につぶやけました！"
    else
      render'edit'
    end
  end
  
  def destroy
    @murmur.destroy
    redirect_to murmurs_path, notice:"つぶやきを削除しました"
  end
  
  def top
  end
  
  private
  
  def murmur_params
    params.require(:murmur).permit(:content)
  end
  
  def set_murmur
    @murmur = Murmur.find(params[:id])
  end
  
end
