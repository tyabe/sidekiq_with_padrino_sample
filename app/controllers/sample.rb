SidekiqWithPadrinoSample::App.controllers :sample, map: '/' do

  get :index do
    @count = rand(10)
    logger.info "Adding #{@count} jobs"
    @count.times do |i|
      HardWorker.perform_async("job_#{i}", 1)
    end
  end

end
