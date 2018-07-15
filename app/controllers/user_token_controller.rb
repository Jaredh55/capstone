class UserTokenController < Knock::AuthTokenController
  def create
    email = request.params["auth"] && request.params["auth"]["email"]
    user = User.find_by(email: email)
    chatmates = user.chatmates
    body = {
      jwt: auth_token.token,
      user: { id: user.id, email: user.email, chatmates: chatmates }
    }

    # bio: user.bio
    render json: body, status: :created
  end
end
