module Api
  module V1
    class StatuesApiController < ::ApiController
      def statues
        beacon_id = params["beacon_id"]
        statue = Statue.find_by_beacon_id(beacon_id)
        if statue
          data = Hash.new
          data["beacon_id"] = statue.beacon_id
          data["name"] = statue.name
          data["content"] = statue.content
          data["link"] = statue.link
          return response_data(data, "Success", 200)
        else
          return response_data({}, "Failure", 200)
        end
      end

    end
  end
end