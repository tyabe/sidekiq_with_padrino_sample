class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    raise name if name == 'crash'
    logger.info "Doing hard work: #{name}"
    sleep count
  end

end
