# app/api/api/v1/meta_data.rb

class API::V1::MetaData < Grape::API

  resource :meta_data do
    ###################################################################
    desc "Return list of meta data"
    ###################################################################


    post do

      # params[:urls]
      #test
      urls = ['https://www.pinterest.com/pin/349380883571292829/','https://www.facebook.com/shortcutapp/?fref=ts']

      MetaData.get_meta_infos(urls)
      # get meta data
    end

  end
end
