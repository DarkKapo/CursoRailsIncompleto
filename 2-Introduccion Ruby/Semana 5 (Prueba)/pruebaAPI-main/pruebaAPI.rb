require "uri"
require "net/http"
require 'json'

def request (url, key)
    url = URI(url + key)

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)

    response = https.request(request)
    JSON.parse(response.read_body)
end

#Método que devuelve los nombres de las cámaras y cantidad de fotos
def photos_count (hashPB)
    #hash que guarda la info que necesitamos
    hashReturn = {}

    hashReturn["total_photos"] = hashPB["photo_manifest"]["photos"][4]["total_photos"]
    hashReturn["cameras"] = hashPB["photo_manifest"]["photos"][4]["cameras"]

    return hashReturn
end

#Método que construye una página web, PB = Pregunta Bonus
def build_web_page (hashRequest, hashPB)
    
    #hashBackUp se usa para guardar los datos de la respuesta a la pregunta bonus
    hashBackUp = photos_count hashPB

    #Extraemos los links y los guarda en un array
    arrayPhotos = hashRequest["photos"].map! { |url| url['img_src'] }
    
    #Variable que guarda el código de la página web
    html = ""

    html += "<!DOCTYPE html>\n<html lang='es'>\n<head>\n"
    html += "\t<meta name='author' content='Rodrigo Quezada Candia'>\n"
    html += "\t<meta charset='UTF-8'>\n\t<meta http-equiv='X-UA-Compatible' content='IE=edge'>\n\t<meta name='viewport' content='width=device-width, initial-scale=1.0'>\n\t<title>Nasa</title>\n"
    html += "\t<STYLE type='text/css'>\n\t\tDIV.centrar {text-align: center}\n\t</STYLE>\n"
    html += "</head>\n"

    html += "\t<body background='background.jpg'>\n\t\t<DIV class='centrar'>\n"
    html += "\t\t\t<img src='nasa-logo.png' width = '200px' alt='Icon'>\n"
    html += "\t\t\t<h1 style='color:white; font-family:courier'>Mars Rover Photos</h1>\n"
    html += "\t\t\t<ul>\n"

    #Agrega a la página los links de las fotos
    arrayPhotos.each do |photo|
        html += "\t\t\t\t<li><img src=\'#{photo}' width = '600px'></li>\n"
    end

    html += "\t\t\t\t<p style='color:white; font-family:courier'>Total Fotos = #{hashBackUp['total_photos']}</p>\n"
    html += "\t\t\t\t<p style='color:white; font-family:courier'>Nombres cámaras = #{hashBackUp['cameras']}</p>\n"
    html += "\t\t\t</ul>\n\t\t</DIV>\n"
    html += "\t</body>\n"
    html += "</html>"

    #Crea la página y guarda lo que está en html
    File.write('index.html', html)
end

#Llama al método build
#Primer parámetro es el request a la página de la nasa para luego obtener las fotos
#Segundo parámetro es el request al manifiesto para obtener la cantidad de fotos y los nombres de las cámaras
build_web_page request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10&api_key=", "XAn1uJQm09fu21mqL3AWubb7c5J7McFuH0DPYLhM"), request("https://api.nasa.gov/mars-photos/api/v1/manifests/Curiosity/?api_key=", "XAn1uJQm09fu21mqL3AWubb7c5J7McFuH0DPYLhM")