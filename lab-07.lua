lgi = require 'lgi'

gtk = lgi.Gtk
gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab-07.glade')

ui = bld.objects

function ui.canvas:on_draw(cr)
  cr:set_source_rgb(1, 1, 1)
  cr:paint()
  
  for x = 1, 10 do
    for y = 1, 10 do
      cr:set_source_rgb(x / 10, y / 10, 0.75)
      cr:rectangle(x *15, y * 15, 10,10)
      cr:fill()
    end
  end
  
  return true
end

function ui.wnd:on_destroy(...)
  gtk.main_quit()
  end

ui.wnd.title = 'lab-07'
ui.wnd:show_all()

gtk.main()
  