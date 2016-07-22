module InfiniteHelper
  def infinite_append(containerSelector, items)
    html = "$('" + containerSelector + "').append('"+ j(render items) + "');"

    if items.next_page
      html += "$('.infinite-pagination').replaceWith('" + j(will_paginate(items, renderer: WillPaginateInfinite::InfinitePagination)) + "');"
    else
      html += "$(window).off('scroll');"
      html += "$('.infinite-pagination').remove();"
    end

    html.html_safe
  end

end
