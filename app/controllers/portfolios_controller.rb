class PortfoliosController < ApplicationController
  layout 'portfolio'
  
  def index
      @portfolio_items=Portfolio.all
  end
  
  def new
      @portfolio_item = Portfolio.new
      3.times { @portfolio_item.technologies.build }
  end
  
  def create
    @portfolio_item = Portfolio.new(params.require(portfolio_params)

     respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio Posted.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def edit
     @portfolio_item = Portfolio.find(params[:id])
  end
  
   def update
       @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(portfolio_params)
         format.html { redirect_to @portfolios_path, notice: 'Portfolio updated.' }
      end
        format.html { render :edit }
      end
   end
   
   def show
  @portfolio_item = Portfolio.find(params[:id])
   end
   
    def destroy
    # Perform the lookup
    @portfolio_item = Portfolio.find(params[:id])

    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio removed.' }
    end
    end

def new
  @portfolio_item = Portfolio.new
  3.times { @portfolio_item.technologies.build }
  
  private
  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name]
                                     )
  end
end