class HomeController < ApplicationController
  #action이라고 칭함
  def lotto
    @lotto = (1..45).to_a.sample(6)
  end

  def index
  end

  def welcome
    @name = params[:name]
  end

  def google
  end

  def game
    #크롤링
  end

  def gameresult
    #크롤링 로직
    require 'httparty'
    require 'nokogiri'
    url='https://pubg.op.gg/user/'+params[:username]
    doc=HTTParty.get(url)
    html = Nokogiri::HTML(doc.body)
    @result=html.css('#matchDetailWrap > div.user-content-layer__matches-content > div:nth-child(1) > div > div > div.user-content-layer__matches-list > ul > li:nth-child(1) > div.matches-item__summary > div.matches-item__column.matches-item__column--status > div.matches-item__reload-time')
    @result=@result.attr('data-ago-date').value
  end
  def random
  end
  def randomresult
    @name = params[:name]

    arr=[1,2,3,4]
    num= arr.sample
    @num=num.to_s+".jpeg"
  end


end
