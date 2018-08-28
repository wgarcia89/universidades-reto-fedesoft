class RetoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reto_mailer.nuevo.subject
  #
  def nuevo
    @greeting = "Hi"
    @reto = params[:reto]
    @universidad = params[:universidad]

    mail to: @universidad.email, subject: "Hay un nuevo reto disponible #{@reto.id}"

  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reto_mailer.respuesta.subject
  #
  def respuesta
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
