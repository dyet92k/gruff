# frozen_string_literal: true

require 'rmagick'
require 'gruff/version'

# Extra full path added to fix loading errors on some installations.

%w[
  patch/rmagick
  patch/string

  themes
  base
  area
  bar
  bezier
  bullet
  dot
  histogram
  line
  net
  pie
  scatter
  spider
  stacked_area
  stacked_bar
  side_stacked_bar
  side_bar
  accumulator_bar

  scene

  renderer/renderer
  renderer/rectangle
  renderer/circle
  renderer/dash_line
  renderer/line
  renderer/polyline
  renderer/polygon
  renderer/bezier
  renderer/ellipse
  renderer/dot
  renderer/text

  store/store
  store/base_data
  store/custom_data
  store/xy_data

  mini/legend
  mini/bar
  mini/pie
  mini/side_bar
].each do |filename|
  require "gruff/#{filename}"
end
