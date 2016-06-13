### Sinatra Notes

```ruby
get '/' do
    p params # => {"name"=>"Jen"}

    name = params[:name]

    if name
        "Hello #{name}"
    else
        "Hello you"
end
```
`gem install shotgun`
`shotgun app.rb`

`localhost:9393/?name=Jen&age=35`


#### simpler arguments

```ruby
get '/about/:person' do
    person = params[:person]
    "#{person}"
```

`localhost:9393/about/arg`

```ruby
get "/about/:person_1/some_dir/:person_2" do
    person = params[:person]
    "#{person_1}: #{person_2}"
end
```
```ruby
db = SQLite3::Database.new("students.db")
db.results_as_hash = true

get "/students" do
    students = db.execute("select * fom students")
    students.to_s
end
```

#### Passing arguments to db.execute

```ruby
get "/students/:id" do
```
notes