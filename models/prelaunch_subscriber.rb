class PrelaunchSubscriber 
  include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks

  attr_accessor :email 

  validates_presence_of :email, :message => 'Please enter your email address first.'
  validates_format_of :email,
    :with => /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/i,
    :message => 'That email address doesn\'t look right.'

  after_validation :add_to_campaign_monitor, :if => :campaign_monitor_configured?

  private

  def add_to_campaign_monitor
    list_id = settings.campaign_monitor_list_id
    CreateSend::Subscriber.add(list_id, email, "", [], true)
  end

  def campaign_monitor_configured?
    Camel.settings.campaign_monitor_api_key != "Your Campaign Monitor API Key" && 
    Camel.settings.campaign_monitor_list_id != "Your Campaign Monitor API Subscriber List ID"
  end
end