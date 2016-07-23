get '/subjects' do

  @subjects = Subject.all #define instance variable for view

  erb :'subjects/index' #show all subjects view (index)

end
