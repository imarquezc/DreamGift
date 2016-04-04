class UsersController < ApplicationController
  def show
    @users = User.all
    @output = '['
    @users.each do |t|
      puts(t.name)
      id =t.id
      name=t.name
      email=t.email
      temp = '{"id":%s, "name":%s,"email:%s"},'
      @var = temp % [t.id, t.name, t.email]
      @output << @var
    end
    @output = @output[0...-1]
    @output << ']'
  end
end
