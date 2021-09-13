class Users::RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    return root_path
  end
end
