require File.expand_path(File.join('config', 'application'))
Dir[File.join('app', 'controllers', '**/*_controller.rb')].each { |file| require File.expand_path(file) }

class Router
  def self.run
    Rack::Builder.new do |env|
      use HomeController
    end
  end
end

