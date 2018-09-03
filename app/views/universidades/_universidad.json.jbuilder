json.extract! universidad, :id, :nombre, :localidad_id,
:email, :reponsable, :latitude, :longitude, :place
json.url universidad_url(universidad, format: :json)
