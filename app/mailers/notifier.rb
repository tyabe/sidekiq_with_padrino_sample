SidekiqWithPadrinoSample::App.mailer :notifier do

  email :greeting do |now|
    from    "sender@example.com"
    to      "recipient@example.com"
    subject 'Hello!'

    locals now: now, hostname: `hostname`.strip
    render 'notifier/greeting'
  end

end
