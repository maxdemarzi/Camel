Camel
-----------
An e-mail capturing "coming soon" Sinatra application ready for deployment to [Heroku](http://heroku.com) utilizing [Campaign Monitor](http://http://www.campaignmonitor.com/).


Instructions
-------------

# Create an account at the [Heroku signup page](http://heroku.com/signup).
# Install the gem: @sudo gem install heroku@
# Clone this repo: @git clone git://github.com/maxdemarzi/camel [appname]@
# @cd appname@
# @heroku create [optional-app-name]@ (You can rename your app with @heroku rename@)
# @git push heroku master@

To add custom domains to your new app:

# @heroku addons:add custom_domains@
# @heroku domains:add www.yournewdomain.com@
# @heroku domains:add yournewdomain.com@


Credits
----------
This project is based on [heroku-sinatra-coming-soon](https://github.com/norbauer/heroku-sinatra-coming-soon) created by [Jonathan Dance](http://wuputah.com/).

Links
-----
* [Sinatra](http://www.sinatrarb.com)