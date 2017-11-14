# Application Controller
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_show
    @resource = apply_scopes(controller_name.singularize.classify.constantize.find(params[:id]))
  end

  def set_index
    @resources = apply_scopes(
      controller_name.singularize.classify.constantize.paginate(page: params[:page])
    )
  end
end
