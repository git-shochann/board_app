class SearchController < ApplicationController


  def index
  end

  
  def search
    if postal_code = params[:postal_code] #入力した郵便番号を取得
      params = URI.encode_www_form({zipcode: postal_code})
      uri = URI.parse("http://zipcloud.ibsnet.co.jp/api/search?#{params}")
      response = Net::HTTP.get_response(uri) #レスポンスの作成
      result = JSON.parse(response.body)
      if result["results"]
        @zipcode = result["results"][0]["zipcode"]
        @address1 = result["results"][0]["address1"]
        @address2 = result["results"][0]["address2"]
        @address3 = result["results"][0]["address3"]
        @kana1 = result["results"][0]["kana1"]
        @kana2 = result["results"][0]["kana2"]
        @kana3 = result["results"][0]["kana3"]
      end
    end
  end

end