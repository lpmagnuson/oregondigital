module IngestHelper
  # Renders the ingest form for the given form object
  def ingest_form_for(ingest_form)
    url = ingest_path(ingest_form)
    html_options = {:multipart => true, :class => "form-horizontal form-inline"}

    simple_form_for(ingest_form, {:url => url, :html => html_options}) do |f|
      yield(f)
    end
  end

  # Centralizes remove link logic for the ingest form
  def link_to_remove_ingest_association(f)
    label = I18n.t("ingest_form.#{f.object.group}.remove", :default => "Remove this #{f.object.group}")
    return link_to_remove_association(label, f, :class => "btn btn-danger")
  end

  # Centralizes add link logic for the ingest form
  def link_to_add_ingest_association(f, association)
    group = association.to_s.singularize
    label = I18n.t("ingest_form.#{group}.add", :default => "Add #{group}")
    return link_to_add_association(label, f, association, :class => "btn btn-success" , :partial => "ingest/ingest_fields")
  end

  # Spits out a form button with classes to use bootstrap styling
  def form_submit(form, opts = {})
    opts[:class] ||= "btn btn-primary"
    content_tag(:div, :class => "form-actions") do
      form.submit(opts)
    end
  end

  # Spits out errors partial for showing a bulleted list of form errors
  def form_errors(form)
    render "shared/form_errors", :f => form
  end

  # Uses the same I18n rules as simple_form to return the appropriate error message translation
  # text.  Calls a protected method, so we may have future API issues to deal with, but the only
  # public API option is to hack up how all forms display the error div, which seems like a worse
  # idea than relying on the protected API of a frozen gem.
  def error_notification_for(form)
    return SimpleForm::ErrorNotification.new(form, {}).send(:translate_error_notification)
  end
end