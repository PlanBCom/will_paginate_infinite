# require 'will_paginate'
#
# module WillPaginateInfinite
#   module Willpaginate
#     class Engine < ::Rails::Engine
#     end
#   end
# end
require "will_paginate/view_helpers/action_view"
require "will_paginate_infinite/infinite_renderer"

module WillPaginateInfinite
  class InfinitePagination < WillPaginate::ActionView::LinkRenderer
    include WillPaginateInfinite::InfiniteRenderer
  end

  class Engine < ::Rails::Engine
  end
end
