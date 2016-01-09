class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "studio_secret"
  set :views, Proc.new { File.join(root, "../views/") }
end
