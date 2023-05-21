class ApplicationJob < ActiveJob::Base
  # Set the Queue as Default
  queue_as :default
end
