class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale

  protected

  def set_locale
    locale = params[:locale] || 'ru'
    I18n.locale = ['ru', 'en', 'ch'].include?(locale) ? locale : 'en'
  end
end
