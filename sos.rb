require 'sinatra'
require 'json'


# Slack Outgoing Webhooks respond to an HTTP POST request, returning a set of parameters about the initial user request from Slack.  Your code should be encapsulated within this 'post' (below) and is expected to return a JSON payload.
# An example of the expected response has been provided for you.
# More examples, for illustration, can be found at Slakidasical.com
# Current details are available on [the Slack API page](https://api.slack.com/)

  post '/' do
  #return if params[:token] != ENV['SLACK_TOKEN']

=begin
    response 'params' include
    - token
    - team_id
    - team_domain
    - service_id
    - channel_id
    - channel_name
    - timestamp
    - user_id
    - user_name
    - text
    - trigger_word
=end

    # the 'trigger_word' is defined in the configuation with Slack.  It is also included as part of the 'text' parameter passed with the request
    trigger_word = params[:trigger_word].strip
    keywords = params[:text].gsub(trigger_word, '').strip

    # There are two types of response: 'in-channel' and 'ephemeral'.  The former will be visible in the channel to all and the latter is only visible to the user who generated the request
    content_type :json
    { :username => 'slack-bot-user', :response_type => "in-channel", :text => "I AM ALIVE!!!" }.to_json

end
