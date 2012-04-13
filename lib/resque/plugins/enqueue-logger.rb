module Resque
  module Plugins
    module EnqueueLogger
      
      def self.logger=(logger)
        @@logger = logger
      end
      
      def self.logger
        @@logger
      end
      
      def after_enqueue_logger(*args)
        @@logger.info "Resque enqueue: #{self} #{args} at #{Time.now}" unless @@logger.nil?
      end
      
    end
  end
end