module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?
    #
    # messages = resource.errors.full_message.map { |msg| content_tag(:li, msg) }.join
    # sentence = I18n.t('errors.messages.not_saved',
    #                   count: resource.errors.count,
    #                   resource: resource.class.model_nmae.human.downcase)
    # html = <<-HTML
    # <div class="alert alert-danger alert-dismissible fade show" role="alert">
    #   <button type="button" class="close" data-dismiss="alert">&times;</button>
    #   <h6><b>#{sentence}</b></h6>
    #   #{messages}
    # </div>
    # HTML
    # html.html_safe
  end
end
