module UsersHelper

  def age(id)
    @now = Date.today
    @user = User.find(id)
     if @user.birthday.month < @now.month
       @user_age = @now.year - @user.birthday.year
         #print @user_age
     elsif @user.birthday.month == @now.month
       if @user.birthday.day <= @now.day
         @user_age = @now.year - @user.birthday.year
         #print @user_age
       end
     else
         @user_age = @now.year - @user.birthday.year - 1
         #print @user_age
     end

    #puts "here!"
  end
end
