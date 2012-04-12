
resque-enqueue-logger
===============

Resque plugin that adds simple logging before enqueueing a job.

Installation
---------

To install:

    gem install resque-enqueue-logger
  
Or if you use Bundler, add this to your `Gemfile`

    gem 'resque-enqueue-logger'

Usage
-----

Set your logger, e.g. in an initializer:

    # config/initializers/resque.rb
    require 'resque'
    Resque.redis = 'localhost:6379'
    Resque::Plugins::EnqueueLogger.logger = Rails.logger

Then extend the plugin in your job class:

    class ExampleJob
      extend Resque::Plugins::EnqueueLogger
      @queue = :example_queue

      def self.perform(*args)
        # your job
      end
    end

Contributing to resque-enqueue-logger
----------------------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
--------

Copyright (c) 2012 Brian Ray. See LICENSE.txt for further details.
