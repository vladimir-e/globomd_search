class HomeController < ApplicationController
  def index
  end

  def search
    data = [
      { text: Procedure.order('RANDOM()').first.title, url: '/example' },
      { text: Provider.order('RANDOM()').first.full_name, url: '/example' }
    ]
    render json: { data: data, query: params[:query] }
  end
end
