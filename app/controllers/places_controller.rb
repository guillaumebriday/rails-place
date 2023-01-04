# frozen_string_literal: true

class PlacesController < ApplicationController
  def index
    @keys =
      Array.new(MAP_SIZE) do |x|
        Array.new(MAP_SIZE) do |y|
          "#{x}:#{y}"
        end
      end.flatten
  end

  def update
    color = params[:color]
    key = params[:key]

    if color.in?(MAP_COLORS)
      Rails.cache.write(key, color)

      Turbo::StreamsChannel.broadcast_update_to('place', target: key, partial: 'places/block', locals: { key: key })
      head :ok
    else
      head :unprocessable_entity
    end
  end
end
