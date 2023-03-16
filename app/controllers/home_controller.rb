class HomeController < ApplicationController
  def top
    @work_times = WorkTime.all
    if current_user.present?
      @user_nil_out_work = WorkTime.find_by(user_id: current_user.id, out_work: nil)
    end
  
    @users=User.all
    
  end

  def work_all
    @work_times = WorkTime.all
  end

  def edit
    
  end

end
