class AgendaDestroyMailer < ApplicationMailer
  def agenda_destroy_mail(agenda)
    @agenda = agenda
    mail to:@agenda.team.members.map{|member| member.email},subject:"アジェンダが削除されました"
  end
end
