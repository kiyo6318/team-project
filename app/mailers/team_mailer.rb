class TeamMailer < ApplicationMailer
  def owner_change_mail(team)
    @team = team
    @owner = User.find_by(id:team.owner_id)
    mail to:@owner.email,subject:"チームリーダーに任命されました"
  end
end
