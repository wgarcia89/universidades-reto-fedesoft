require 'test_helper'

class RetoMailerTest < ActionMailer::TestCase
  test "nuevo" do
    mail = RetoMailer.nuevo
    assert_equal "Nuevo", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "respuesta" do
    mail = RetoMailer.respuesta
    assert_equal "Respuesta", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
