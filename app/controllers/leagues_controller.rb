class LeaguesController < ApplicationController
  def new
    @league = League.new
  end

  def create
    @league = League.new(league_params)

    if @league.save
      redirect_to authenticated_root_path, notice: "League successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def league_params
    params.require(:league).permit(:name, :start_date, :end_date, :user_id, :size)
  end
end
