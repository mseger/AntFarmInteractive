# if Rails.env.production?

#   # olinexpo.com
#   Rails.application.config.middleware.use OmniAuth::Builder do
#     provider :facebook, '573616499320153', '5f02aaeedf89451c139e0a2b794a7b9d',
#              :scope => 'email,user_birthday,read_stream,publish_stream', :display => 'popup'
#   end
# else

#   # localhost:3000
#   Rails.application.config.middleware.use OmniAuth::Builder do
#     provider :facebook, '236983706410158', '7300404da8c3c1fbfb4d9c5cbbe7f3cf',
#              :scope => 'email,user_birthday,read_stream,publish_stream', :display => 'popup'
#   end
# end



Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '573616499320153', '5f02aaeedf89451c139e0a2b794a7b9d',
             :scope => 'email,user_birthday,read_stream,publish_stream,user_actions.music', :display => 'popup'
end


