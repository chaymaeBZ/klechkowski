module ConversationsHelper
	def mailbox_section(title, current_box, opts = {})
    opts[:class] = opts.fetch(:class, 'item')
    opts[:class] += ' active' if title.downcase == current_box
    content_tag :li, link_to(opts[:text], conversations_path(box: title.downcase)), opts
  end
end
