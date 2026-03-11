-- 这是一个简单的处理脚本，用于将 OSM 要素映射到图层
function way_function()
  local highway = Find("highway")
  if highway then
    Layer("roads", { highway = highway })
    return
  end
end

function node_function()
  local place = Find("place")
  if place then
    Layer("places", { place = place })
    return
  end
  local amenity = Find("amenity")
  if amenity then
    Layer("places", { amenity = amenity })
    return
  end
end