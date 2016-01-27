# app/api/api/v1/meta_data.rb

class API::V1::MetaData < Grape::API

  resource :meta_info do
    ###################################################################
    desc "Return list of meta data"
    ###################################################################


    post do

      # params[:urls]
      #test (need more time to write real tests!)
      urls = ['https://www.pinterest.com/pin/349380883571292829/','https://www.facebook.com/shortcutapp/?fref=ts','http://www.goodreads.com/book/show/3273.Moloka_i','http://www.movietickets.com/movie/mid/163129']

      MetaInfo.get_meta_infos(urls)
      # get meta data
    end

  end
end


#https://www.pinterest.com/pin/349380883571292829/
#



