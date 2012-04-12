module Resque
  module Plugins
    module EnqueueLogger
      
      def self.logger=(logger)
        @@logger = logger
      end
      
      def self.logger
        @@logger
      end
      
      def before_enqueue_logger(*args)
        @@logger.info "Resque enqueue: #{self} #{args} at #{Time.now}" unless @@logger.nil?
      ensure
        true # ensure logging doesn't prevent the job from getting enqueued
      end
      
    end
  end
end