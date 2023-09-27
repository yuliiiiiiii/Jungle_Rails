module HttpAdminAuthConcern 
  #in Rails, the file name needs to be the same as module/class!
  extend ActiveSupport::Concern
  
  included do
    before_action :http_authenticate
  end

  def http_authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['USERNAME'] && password == ENV['PASSWORD']
    end
  end
end