get '/' do
  @sign_text = params[:sign_text]
  # Look in app/views/index.erb
  erb :index
end

post '/cheers' do
  "Implement the /cheers route yourself.<br>Params: <code>#{params.inspect}</code>"
end
