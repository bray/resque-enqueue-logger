module Resque
  module Plugins
    module EnqueueLogger
      def before_enqueue_logger(*args)
        Logger.info "Enqueue logger"
      end
    end
  end
end