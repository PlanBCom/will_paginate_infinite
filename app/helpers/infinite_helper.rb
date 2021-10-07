module InfiniteHelper
  def infinite_append(containerSelector, render_options)
    collection = render_options
    collection = render_options[:collection] unless render_options.is_a?(ActiveRecord::Relation)

    html = "$('" + containerSelector + "').append('"+ j(render render_options) + "');"

    if collection.next_page
      html += "$('.infinite-pagination').replaceWith('" + j(will_paginate(collection, renderer: WillPaginateInfinite::InfinitePagination)) + "');"
    else
      html += "$(window).off('scroll', infinitePaginationFunction);"
      html += "$('.infinite-pagination').remove();"
    end

    html.html_safe
  end
end
