class HomeController < ApplicationController
  def index
  end

  def search
    procedures = Procedure.search(params[:query])
    rows = procedures.map { |procedure| { text: procedure.title, url: '/example' } }

    providers = Provider.search(params[:query])
    rows.push *providers.map{ |provider| { text: provider.full_name, url: '/example' } }

    render json: { data: rows, query: params[:query] }
  end

end
