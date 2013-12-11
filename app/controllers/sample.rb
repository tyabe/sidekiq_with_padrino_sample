SidekiqWithPadrinoSample::App.controllers :sample, map: '/' do

  get :index do
    @count = rand(10)
    logger.info "Adding #{@count} jobs"
    @count.times do |i|
      HardWorker.perform_async("job_#{i}", 1)
    end
  end

  get :delayed_post do
    post  = Post.where(title: 'First post', body: "body").first_or_create
    post.delay.long_method
    'enqueued'
  end

  get :email do
    SidekiqWithPadrinoSample::App.delay_for(10.seconds).deliver(:notifier, :greeting, Time.now)
    'enqueued'
  end

end
