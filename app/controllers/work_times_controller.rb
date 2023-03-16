class WorkTimesController < ApplicationController
    def create
        work_time = WorkTime.new
        work_time.user_id = current_user.id
        work_time.in_work = Time.now
        work_time.save
        redirect_to root_path
      end

      def update
        user_nil_out_work = WorkTime.find(params[:id])
        user_nil_out_work.update(out_work: Time.now)

        redirect_to root_path
      end
end
