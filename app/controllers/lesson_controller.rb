class LessonController < ApplicationController
  before_action :set_message, only: :step7
  def step1
    render text: "こんにちは、#{params[:name]}さん"
  end

  def step2
    render text: params[:controller] + "#" + params[:action]
  end

  def step3
    redirect_to action: "step4"
  end

  def step4
    render text: "step4に移動しました。"
  end

  def step5
    flash[:notice] = "step6に移動します。"
    redirect_to action: "step6"
  end

  def step6
    render text: flash[:notice]
  end

  def step7
    render text: @message
  end

  def step8
    @price = (2000 * 1.05).floor
  end

  def step12
    @population = 704414
    @surface = 141.31
  end

  def step13
    @population = 704414
    @surface = 141.31
    @time = Time.now
    render 'step12'

  end

  def step15
    @message = "ご機嫌いかが？\nRailsの勉強頑張りましょう。"
  end

  private
    def set_message
      @message = "こんにちは"
    end

end
