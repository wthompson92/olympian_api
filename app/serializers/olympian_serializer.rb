class OlympianSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name,:sex,:age,:weight,:team
end
