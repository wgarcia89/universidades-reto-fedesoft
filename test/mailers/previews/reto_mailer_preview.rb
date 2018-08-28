# Preview all emails at http://localhost:3000/rails/mailers/reto_mailer
class RetoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/reto_mailer/nuevo
  def nuevo
    RetoMailer.nuevo
  end

  # Preview this email at http://localhost:3000/rails/mailers/reto_mailer/respuesta
  def respuesta
    RetoMailer.respuesta
  end

end
