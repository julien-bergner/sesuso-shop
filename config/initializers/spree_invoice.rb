require 'wicked_pdf'

WickedPdf.config = {
  :exe_path => SpreeInvoice::WKHTMLToPDF.bin_path
}

SpreeInvoice.setup do |config|
  config.on_confirm_email = false

  config.invoice_template_path = "app/views/spree/invoices/invoice.html.erb"

  config.wkhtmltopdf_margin = {
    :top    => 0,
    :bottom => 0,
    :left   => 0,
    :right  => 0
  }
  
end
