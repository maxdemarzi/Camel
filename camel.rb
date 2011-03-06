require 'rubygems'
require 'createsend'
require 'sinatra/base'
require 'active_model'
require 'models/prelaunch_subscriber'

class Camel < Sinatra::Base
  set :haml, :format => :html5 
  set :app_file, __FILE__

  set :campaign_monitor_api_key,  "Your Campaign Monitor API Key"
  set :campaign_monitor_list_id,  "Your Campaign Monitor API Subscriber List ID"
  set :app_name, "The Name of your Application"

  configure do
    CreateSend.api_key(settings.campaign_monitor_api_key)
  end

  use Rack::Session::Cookie

  get '/' do
    @prelaunch_subscriber = PrelaunchSubscriber.new
    haml :new
  end

  post '/create' do
    @prelaunch_subscriber = PrelaunchSubscriber.new
    @prelaunch_subscriber.email = params[:email]

    if @prelaunch_subscriber.save
      redirect '/thanks'
    else
      haml :new
    end
  end

  get '/thanks' do
    haml :thanks
  end

end