class MarketingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @marketings= Marketing.all
  end

  def new 
    @marketing = Marketing.new
  end

  def create 
    @marketing = Marketing.new(marketing_params)
    @marketing.user_id = current_user.id
    
    if @marketing.save
      redirect_to marketing_path(@marketing),notice: '素晴らしいアイデアです！'
     
      else
        render :new
      end
  end

  def show
    @marketing = Marketing.find(params[:id])
  end

  def edit
    @marketing = Marketing.find(params[:id])
  end

  def update
    @marketing = Marketing.find(params[:id])
    if @marketing.update(marketing_params)
    redirect_to marketing_path(@marketing),notice: '更新しました'
    else
      render :edit
  end
end

def destroy
  marketing = Marketing.find(params[:id])
  marketing.destroy
  redirect_to user_path(marketing.user), notice: "消しやした"
end


  private
def marketing_params
  params.require(:marketing).permit(:company,:consumer,:costomer,:competitor,:community,:object,:st,:pp1,:pp2,:pp3,:kenzai,:senzai,:insight,:what,:how1,:how2,:how3,:explanation)
end

end

