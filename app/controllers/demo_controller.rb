class DemoController < ApplicationController
  respond_to :html, :js

  def home
  end

  def show_options
  	@data = demo_params
  end

  def hide_options
  end


  private
  	def demo_params
  		params.require(:data).permit(:id)
  	end
end