SLACK BUSINESS SPEW GENERATOR
=============================

Continuing the tradition set by [BS.LeveragedSynergies.com](http://bs.leveragedsynergies.com), the BusinessSpew Generator<sup>TM</sup> is now a Slack Bot!

>BusinessSpew(BS) is that seemingly endless flow of acronyms, jargon and buzzwords that sneak into almost ALL business conversations. You see it in memos, reports, email messages and even hear it in telephone "con calls".

---

Setting this up with [Slack](https://slack.com/) is simple.

In "Configure Apps", select "Custom Integrations" ![Custom Integrations](custom_integrations.png?raw=true) and add an **Outgoing WebHooks** entry with these parameters:

  - Channel : Up to your discretion.  It is highly recommended you limit to a specific channel.  If you are not quite sure just choose '#random'.
  - Trigger Word(s) : In this version the only word that will be recognized is 'bs'.  Based on recommendations (Pull Requests) there may be more added later.
  - URL(s) : this **must be** 'https://bs-bot.herokuapp.com/bs'.  This, again, is likely to change in future releases but I expect to maintain backward-compatibility.
  - Token : This should be unchanged and can be ignored
  - Descriptive Label : This is also up to your discretion but I recommend 'BusinessSpew (BS) Generator'
  - Customize Name : 'bs expert'
  - Customize Icon : This is entirely at your discretion

Click "Save Settings" and you are ready to go.

![Integration Settings](integration_settings.png?raw=true)


In [Slack](https://slack.com/) you simply type `bs` and will get a response like this

![Business Spew](bs_response.png?raw=true)


#### Update March 2016

You can now ask BusinessSpew to provide a custom set of paragraphs, each with a custom number of sentences of BS.
Simply call 'bs-bot' like this: `bs sentences 4 paragraphs 2` to specify your preferences.
