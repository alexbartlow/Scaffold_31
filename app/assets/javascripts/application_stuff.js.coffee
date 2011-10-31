$ ->
  $.datepicker.setDefaults dateFormat: 'yy-mm-dd'
  $('[data-datetimepicker]').datetimepicker()
  $('[data-timepicker]').timepicker()
  $('[data-datepicker]').datepicker()

  $(':button,input[type="submit"]').each ->
    opts = {}; self = $(this)
    if self.attr('data-icon')
      opts.icons = primary: 'ui-icon-'+self.attr('data-icon')
    else if self.attr('data-icon-only')
      opts.icons = primary: 'ui-icon-'+self.attr('data-icon-only')
      opts.text = false
    self.button(opts)

  $('.buttonset').buttonset()
  $('.accordion').accordion()
  $('.tabs').tabs()

