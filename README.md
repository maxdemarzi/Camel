Camel
-----------
An e-mail capturing "coming soon" Sinatra application ready for deployment to [Heroku](http://heroku.com) utilizing [Campaign Monitor](http://www.campaignmonitor.com/).


Instructions
-------------
Create an account on [Campaign Monitor](http://www.campaignmonitor.com/)
Follow the [Getting Started](http://www.campaignmonitor.com/api/getting-started/) guide to get your API Key and Subscriber List ID

Create an account at the [Heroku signup page](http://heroku.com/signup).

    sudo gem install heroku
    git clone git://github.com/maxdemarzi/Camel [appname]
    cd appname

Replace the following lines in camel.rb

    set :campaign_monitor_api_key,  "Your Campaign Monitor API Key"
    set :campaign_monitor_list_id,  "Your Campaign Monitor API Subscriber List ID"
    set :app_name, "The Name of your Application"

    git add .
    git commit -m "Using my own Campaign Monitor Key and List ID"

    heroku create [optional-app-name] (You can rename your app with heroku rename)
    git push heroku master

To add custom domains to your new app:

    heroku addons:add custom_domains
    heroku domains:add www.yournewdomain.com
    heroku domains:add yournewdomain.com


Credits
----------
This project is based on [heroku-sinatra-coming-soon](https://github.com/norbauer/heroku-sinatra-coming-soon) created by [Jonathan Dance](http://wuputah.com/) and [t-minus](https://github.com/johngrimes/t-minus) created by [John Grimes](http://www.smallspark.com.au).

Links
-----
* [Sinatra](http://www.sinatrarb.com)
* [Heroku](http://heroku.com)
* [Campaign Monitor](http://www.campaignmonitor.com)