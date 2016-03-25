SLACK ON SINATRA
================

This is intended to be a Slack Bot Construction Kit; a starting point for building Slack Outgoing Webhooks integration (bots) using Sinatra.

[Sinatra](http://www.sinatrarb.com/) is a great, lightweight Ruby DSL and perfec for small projects like building Slack Integration.

In order to use this simply follow these few steps:

  - Grab this project (`git clone https://github.com/parkint/sos.git` is the easiest way)
  - Be sure you have Sinatra installed
  - Make a few changes to customize the project
    - Rename the directory where this was cloned
    - Rename the `sos.rb` file to suit your project (usually the same as the directory)
    - Edit the `require` line in 'config.ru' file to reference the newly renamed class file
    - Edit the `Gemfile` if you wish to add any gems to your project
      - This then requires the `bundle` command
  - Install [your favorite testing framework](http://www.sinatrarb.com/testing.html)
  - Write your tests
  - Write your code <== This is the FUN part
  - You can validate operation (outside of Slack) with a tool like [Postman](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop)
  - Update **this** file to properly represent your project
  - Commit your project to source control
  - Deploy the code (I prefer to use Heroku and that requires the [Heroku Toolbelt](https://toolbelt.heroku.com/))

---

Pull Requests are always welcome and encouraged!

