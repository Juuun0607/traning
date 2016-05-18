require 'active_resource'

class Rakuten < ActiveResource::Base
  self.site     = "https://app.rakuten.co.jp/services/api/IchibaItem/Ranking/20120927?format=json&applicationId=1002849688028137212" #リソースのURL
  self.format   = :json #リソースのフォーマット
  AFFILIATE_ID  = "14dc851c.e6510207.14dc851d.521f1dd5"
  DEVELOPER_ID  = "1002849688028137212"
  VERSION       = "2009-04-15"
  FROM          = "/rws/2.0/rest"

  def self.item_search(keyword, genre_id=0, page=1)
    self.find(
      :one,
      :from => FROM,
      :params => {
        :developerId  =>  DEVELOPER_ID,
        :affiliateId  =>  AFFILIATE_ID,
        :version      =>  VERSION,
        :operation    =>  "ItemSearch",
        :genreId      =>  genre_id,
        :page         =>  page,
        :keyword      =>  keyword
      }
    )
  end
end