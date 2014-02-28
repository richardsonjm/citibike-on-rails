class CitiJsonWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  include Sidetiq::Schedulable

  recurrence { hourly.minute_of_hour(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55) }

  def perform
    CitiJSONParser.parse
  end
end
