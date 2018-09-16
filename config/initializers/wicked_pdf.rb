if Rails.env.production?
  wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-linux-amd64"
  WickedPdf.config = { exe_path: wkhtmltopdf_path, wkhtmltopdf: wkhtmltopdf_path }
end
