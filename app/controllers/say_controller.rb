class SayController < ApplicationController
  def Hello
      @time = DateTime.now
      render "speak/Hello"
  end

  def Goodbye
  end

  def Happyday
  end
end
