### Templating with sinatra


```ruby
#show students
get '/' do 
    students = db.execute("select * from students")
    erb :home
end  

get 'students/new' do
```

new folder `views`
 * `home.erb`
    * boiler plate goes in here
    * to run ruby: `<%= %>` the ice cream cones the equal is to print
    * to run ruby with no printing:

```
<% @students.each do |student| %>
```

* this is at 11:17 9.5 templating in sinatra
* **forms** 14:14 


#### Default/Optional parameters

```ruby
# Default route paramaters
get '/great_job/?:name?' do
  if name = params[:name]
    "Good job, #{name}!"
  else
    "Good job!"
  end
end  

```


```ruby
# Default query paramaters
get '/great_job/?:name?' do
  if name = params['name']
    "Good job, #{name}!"
  else
    "Good job!"
  end
end  
```
notes
