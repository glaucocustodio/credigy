require_relative './response'

module Credigy
  class LineResponse < Response
    def line
      body[:linha_digitavel]
    end

    def sub_root_key
      :ws_result_linha_digitavel
    end
  end
end
