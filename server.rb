require 'sinatra'
require_relative 'lamp'

$lamps = [
    Lamp.new('Desk', 25.00),
    Lamp.new('Table', 15.00),
    Lamp.new('Floor', 30.00),
    Lamp.new('Magic', 99999999999.99),
    Lamp.new('Mario', 42.00)
]

def all_lamps
    $lamps
end

get '/' do
    @lamps = all_lamps
    erb :index, :layout => :common_layout
end

get '/lamps/:id' do
    id = params[:id].to_i
    @lamp = all_lamps[id]

    erb :lamp_details, :layout => :common_layout
end
