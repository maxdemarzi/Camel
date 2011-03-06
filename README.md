Camel
-----------
An e-mail capturing "coming soon" Sinatra application ready for deployment to [Heroku](http://heroku.com) utilizing [Campaign Monitor](http://http://www.campaignmonitor.com/).


Instructions
-------------
Create an account on [Campaign Monitor](http://www.campaignmonitor.com/)
Follow the [Getting Started](http://www.campaignmonitor.com/api/getting-started/) guide to get your API id and Subscriber List ID
Replace the following lines in camel.rb

  set :campaign_monitor_api_key,  "Your Campaign Monitor API Key"
  set :campaign_monitor_list_id,  "Your Campaign Monitor API Subscriber List ID"

Create an account at the [Heroku signup page](http://heroku.com/signup).

    sudo gem install heroku
    git clone git://github.com/maxdemarzi/camel [appname]
    cd appname
    heroku create [optional-app-name] (You can rename your app with heroku rename)
    git push heroku master

To add custom domains to your new app:

    heroku addons:add custom_domains
    heroku domains:add www.yournewdomain.com
    heroku domains:add yournewdomain.com


Credits
----------
This project is based on [heroku-sinatra-coming-soon](https://github.com/norbauer/heroku-sinatra-coming-soon) created by [Jonathan Dance](http://wuputah.com/).

Links
-----
* [Sinatra](http://www.sinatrarb.com)