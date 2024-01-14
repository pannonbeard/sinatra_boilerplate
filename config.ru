require File.expand_path(File.join('config', 'application'))

def filename_to_class(file)
  split_filename = file.split('/')[-1].gsub('.rb', '').split('_')
  klass = split_filename.map{ |part| part.capitalize }.join("").constantize
  route = "/#{split_filename[0]}"

  return [route, klass]
end

Dir[File.join('app', 'controllers', '**/*_controller.rb')].each do |file|
  route, klass = filename_to_class(file)

  map(route) { run klass }
end

map('/') { run HomeController }