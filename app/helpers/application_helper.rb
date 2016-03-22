module ApplicationHelper
  # A helper to get locales on page load
  def current_translations
    I18n.backend.send(:init_translations) unless I18n.backend.initialized? # initialize backend on first page load
    @translations ||= I18n.backend.send(:translations) # load translations
    @translations[I18n.locale].with_indifferent_access # scope to current locale translations
  end
end
