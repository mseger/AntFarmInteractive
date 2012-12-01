Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '573616499320153', '5f02aaeedf89451c139e0a2b794a7b9d',
           :scope => 'email,user_birthday,read_stream', :display => 'popup'
end