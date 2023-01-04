# frozen_string_literal: true

Array.new(MAP_SIZE) do |x|
  Array.new(MAP_SIZE) do |y|
    Rails.cache.write("#{x}:#{y}", MAP_COLORS.sample)
  end
end
