class BrandController < ApplicationController
  def home
  	@loQueHacemos = t(:loQueHacemos)
  	@textoloQueHacemos = t(:textoloQueHacemos)
  	@software = t(:software)
  	@diseno = t(:diseno)
  	@equipo = t(:equipo)
  	@nJose = t(:nJose)
  	@fraseJose = t(:fraseJose)
  	@nWalther = t(:nWalther)
  	@fraseWalther = t(:fraseWalther)
    @nSandra = t(:nSandra)
    @fraseSandra = t(:fraseSandra)
    @nMauricio = t(:nMauricio)
    @fraseMauricio = t(:fraseMauricio)
    @nJorge = t(:nJorge)
    @fraseJorge = t(:fraseJorge)
    @espanol = t(:espanol)
    @ingles = t(:ingles)
    @intro = t(:intro)
    @botonIntro = t(:botonIntro)
    @botonQueHacemos = t(:botonQueHacemos)
    @botonNosotros = t(:botonNosotros)
  end
  def software
    @desarrolloSoftware = t(:desarrolloSoftware)
    @tituloClientes = t(:tituloClientes)
    @tituloContenido = t(:tituloContenido)
    @contenidopreferido1 = t(:contenidopreferido1)
    @contenidopreferido2 = t(:contenidopreferido2)
    @tituloSoftware = t(:tituloSoftware)
    @contenidoSoftware = t(:contenidoSoftware)
    @tituloAgilidad = t(:tituloAgilidad)
    @contenidoAgilidad = t(:contenidoAgilidad)
    @tituloCloud = t(:tituloCloud)
    @contenidoCloud = t(:contenidoCloud)
    @tituloExperiencia = t(:tituloExperiencia)
    @contenidoExperiencia = t(:contenidoExperiencia)  
  end
  def web
    @proyecto1 = t(:proyecto1)
    @proyecto2 = t(:proyecto2)
    @proyecto3 = t(:proyecto3)
    @proyecto4 = t(:proyecto4)
    @proyecto5 = t(:proyecto5)
    @proyecto6 = t(:proyecto6)
    @tituloContenido = t(:tituloContenido)
    @contenidopreferido1 = t(:contenidopreferido1)
    @contenidopreferido2 = t(:contenidopreferido2)
    @tituloUx = t(:tituloUx)
    @contenidoUx = t(:contenidoUx)
    @tituloAgilidad = t(:tituloAgilidad)
    @contenidoAgilidad = t(:contenidoAgilidad)
    @tituloCloud = t(:tituloCloud)
    @contenidoCloud = t(:contenidoCloud)
    @tituloExperiencia = t(:tituloExperiencia)
    @contenidoExperiencia = t(:contenidoExperiencia)  
  end
end