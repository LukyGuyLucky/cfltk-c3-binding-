module fl;

extern fn void gl_start() @extern("Fl_gl_start");
extern fn void gl_finish() @extern("Fl_gl_finish");


struct Fl_Gl_Window{void* _data_;}
extern fn Fl_Gl_Window* gl_window_new(int,int,int,int,ZString) @extern("Fl_Gl_Window_new");

extern fn void* Fl_Gl_Window.parent(&self) @extern("Fl_Gl_Window_parent");
extern fn Fl_Gl_Window* gl_window_new_wh(int,int,ZString) @extern("Fl_Gl_Window_wh");


extern fn void Fl_Gl_Window.begin(&self) @extern("Fl_Gl_Window_begin");

extern fn void Fl_Gl_Window.end(&self) @extern("Fl_Gl_Window_end");



extern fn void Fl_Gl_Window.show(&self) @extern("Fl_Gl_Window_show");
extern fn void Fl_Gl_Window.hide(&self) @extern("Fl_Gl_Window_hide");
extern fn void Fl_Gl_Window.show_with_args(&self,int argc,ZString[] argv) @extern("Fl_Gl_Window_show_with_args");
extern fn Fl_Gl_Window* Fl_Gl_Window.find_by_handle(&self,void*) @extern("Fl_Gl_Window_find_by_handle");
extern fn void Fl_Gl_Window.size_range(&self,int,int,int,int) @extern("Fl_Gl_Window_size_range");
extern fn void Fl_Gl_Window.set_box(&self,int) @extern("Fl_Gl_Window_set_box");
extern fn void Fl_Gl_Window.set_color(&self,int) @extern("Fl_Gl_Window_set_color");
extern fn void Fl_Gl_Window.set_selection_color(&self,uint) @extern("Fl_Gl_Window.set_selection_color");
extern fn void Fl_Gl_Window.set_icon(&self,void*) @extern("Fl_Gl_Window_set_icon");
extern fn int Fl_Gl_Window.width(&self) @extern("Fl_Gl_Window_width");
extern fn int Fl_Gl_Window.height(&self) @extern("Fl_Gl_Window_height");
extern fn void Fl_Gl_Window.set_label(&self,ZString) @extern("Fl_Gl_Window_set_label");
extern fn ZString Fl_Gl_Window.label(&self) @extern("Fl_Gl_Window_label");
extern fn void Fl_Gl_Window.make_current(&self) @extern("Fl_Gl_Window_make_current");
extern fn void Fl_Gl_Window.draw(&self,Custom_draw_callback,void*) @extern("Fl_Gl_Window_draw");

extern fn void Fl_Gl_Window.super_draw(&self,int) @extern("Fl_Gl_Window_super_draw");


extern fn void Fl_Gl_Window.resizable(&self,void*) @extern("Fl_Gl_Window_resizable");
extern fn void Fl_Gl_Window.set_callback(&self,CallbackVoid,void*) @extern("Fl_Gl_Window_set_callback");
extern fn void Fl_Gl_Window.handle(&self,CallbackInt,void*) @extern("Fl_Gl_Window_handle");
extern fn void Fl_Gl_Window.set_visible_focus(&self) @extern("Fl_Gl_Window_set_visible_focus");
extern fn void Fl_Gl_Window.visible_focus(&self,int) @extern("Fl_Gl_Window_visible_focus");
extern fn int Fl_Gl_Window.has_visiable_focus(&self) @extern("Fl_Gl_Window_has_visiable_focus");
extern fn int Fl_Gl_Window.shown(&self) @extern("Fl_Gl_Window_shown");
extern fn int Fl_Gl_Window.visible(&self) @extern("Fl_Gl_Window_visible");
extern fn void Fl_Gl_Window.activate(&self) @extern("Fl_Gl_Window_activate");
extern fn void Fl_Gl_Window.deactivate(&self) @extern("Fl_Gl_Window_deactivate");
extern fn uint Fl_Gl_Window.active(&self) @extern("Fl_Gl_Window_active");
extern fn void* Fl_Gl_Window.user_data(&self) @extern("Fl_Gl_Window_user_data");
extern fn void Fl_Gl_Window.set_user_data(&self,void*) @extern("Fl_Gl_Window_set_user_data");
extern fn void Fl_Gl_Window.redraw(&self) @extern("Fl_Gl_Window_redraw");
extern fn void Fl_Gl_Window.set_tooltip(&self,ZString) @extern("Fl_Gl_Window_set_tooltip");
extern fn void* Fl_Gl_Window.as_window(&self) @extern("Fl_Gl_Window_as_window");
extern fn void Fl_Gl_Window.resize(&self,int,int,int,int) @extern("Fl_Gl_Window_resize");
extern fn int Fl_Gl_Window.x(&self) @extern("Fl_Gl_Window_x");
extern fn int Fl_Gl_Window.y(&self) @extern("Fl_Gl_Window_y");
extern fn void Fl_Gl_Window.set_deletion_callback(&self,CallbackVoid,void*) @extern("Fl_Gl_Window_set_deletion_callback");


extern fn void Fl_Gl_Window.flush(&self) @extern("Fl_Gl_Window_flush");
extern fn char Fl_Gl_Window.valid(&self) @extern("Fl_Gl_Window_valid");
extern fn void Fl_Gl_Window.set_valid(&self,char) @extern("Fl_Gl_Window_set_valid");
extern fn char Fl_Gl_Window.context_valid(&self) @extern("Fl_Gl_Window_context_valid");
extern fn void Fl_Gl_Window.set_context_valid(&self,char) @extern("Fl_Gl_Window_set_context_valid");
extern fn int Fl_Gl_Window.can_do(&self) @extern("Fl_Gl_Window_can_do");
extern fn void* Fl_Gl_Window.context(&self) @extern("Fl_Gl_Window_context");
extern fn void Fl_Gl_Window.set_context(&self,void*,int) @extern("Fl_Gl_Window_set_context");
extern fn void Fl_Gl_Window.swap_buffers(&self) @extern("Fl_Gl_Window_swap_buffers");
extern fn void Fl_Gl_Window.set_swap_interval(&self,int) @extern("Fl_Gl_Window_set_swap_interval");
extern fn int Fl_Gl_Window.swap_interval(&self) @extern("Fl_Gl_Window_swap_interval");
extern fn void Fl_Gl_Window.ortho(&self) @extern("Fl_Gl_Window_ortho");
extern fn int Fl_Gl_Window.can_do_overlay(&self) @extern("Fl_Gl_Window_can_do_overlay");
extern fn void Fl_Gl_Window.redraw_overlay(&self) @extern("Fl_Gl_Window_redraw_overlay");
extern fn void Fl_Gl_Window.hide_overlay(&self) @extern("Fl_Gl_Window_hide_overlay");
extern fn void Fl_Gl_Window.make_overlay_current(&self) @extern("Fl_Gl_Window_make_overlay_current");
extern fn float Fl_Gl_Window.pixels_per_unit(&self) @extern("Fl_Gl_Window_pixels_per_unit");
extern fn int Fl_Gl_Window.pixel_w(&self) @extern("Fl_Gl_Window_pixel_w");
extern fn int Fl_Gl_Window.pixel_h(&self) @extern("Fl_Gl_Window_pixel_h");
extern fn int Fl_Gl_Window.mode(&self) @extern("Fl_Gl_Window_mode");
extern fn void Fl_Gl_Window.set_mode(&self,int) @extern("Fl_Gl_Window_set_mode");
extern fn void* Fl_Gl_Window.get_proc_address(&self,ZString) @extern("Fl_Gl_Window_get_proc_address");

struct Fl_Glut_Window{void* _data_;}
extern fn Fl_Glut_Window* glut_window_new(int,int,int,int,ZString) @extern("Fl_Glut_Window_new");
extern fn void* Fl_Glut_Window.parent(&self) @extern("Fl_Glut_Window_parent");
extern fn Fl_Glut_Window* glut_window_new_wh(int,int,ZString) @extern("Fl_Glut_Window_wh");
extern fn void Fl_Glut_Window.begin(&self) @extern("Fl_Glut_Window_begin");
extern fn void Fl_Glut_Window.end(&self) @extern("Fl_Glut_Window_end");
extern fn void Fl_Glut_Window.show(&self) @extern("Fl_Glut_Window_show");
extern fn void Fl_Glut_Window.hide(&self) @extern("Fl_Glut_Window_hide");
extern fn void Fl_Glut_Window.show_with_args(&self,int argc,ZString[] argv) @extern("Fl_Glut_Window_show_with_args");
extern fn Fl_Glut_Window* Fl_Glut_Window.find_by_handle(&self,void*) @extern("Fl_Glut_Window_find_by_handle");
extern fn void Fl_Glut_Window.size_range(&self,int,int,int,int) @extern("Fl_Glut_Window_size_range");
extern fn void Fl_Glut_Window.set_box(&self,int) @extern("Fl_Glut_Window_set_box");
extern fn void Fl_Glut_Window.set_color(&self,int) @extern("Fl_Glut_Window_set_color");
extern fn void Fl_Glut_Window.set_selection_color(&self,uint) @extern("Fl_Glut_Window.set_selection_color");
extern fn void Fl_Glut_Window.set_icon(&self,void*) @extern("Fl_Glut_Window_set_icon");
extern fn int Fl_Glut_Window.width(&self) @extern("Fl_Glut_Window_width");
extern fn int Fl_Glut_Window.height(&self) @extern("Fl_Glut_Window_height");
extern fn void Fl_Glut_Window.set_label(&self,ZString) @extern("Fl_Glut_Window_set_label");
extern fn ZString Fl_Glut_Window.label(&self) @extern("Fl_Glut_Window_label");
extern fn void Fl_Glut_Window.make_current(&self) @extern("Fl_Glut_Window_make_current");
extern fn void Fl_Glut_Window.draw(&self,Custom_draw_callback,void*) @extern("Fl_Glut_Window_draw");
extern fn void Fl_Glut_Window.super_draw(&self,int) @extern("Fl_Glut_Window_super_draw");
extern fn void Fl_Glut_Window.resizable(&self,void*) @extern("Fl_Glut_Window_resizable");
extern fn void Fl_Glut_Window.set_callback(&self,CallbackVoid,void*) @extern("Fl_Glut_Window_set_callback");
extern fn void Fl_Glut_Window.handle(&self,CallbackInt,void*) @extern("Fl_Glut_Window_handle");
extern fn void Fl_Glut_Window.set_visible_focus(&self) @extern("Fl_Glut_Window_set_visible_focus");
extern fn void Fl_Glut_Window.visible_focus(&self,int) @extern("Fl_Glut_Window_visible_focus");
extern fn int Fl_Glut_Window.has_visiable_focus(&self) @extern("Fl_Glut_Window_has_visiable_focus");
extern fn int Fl_Glut_Window.shown(&self) @extern("Fl_Glut_Window_shown");
extern fn int Fl_Glut_Window.visible(&self) @extern("Fl_Glut_Window_visible");
extern fn void Fl_Glut_Window.activate(&self) @extern("Fl_Glut_Window_activate");
extern fn void Fl_Glut_Window.deactivate(&self) @extern("Fl_Glut_Window_deactivate");
extern fn uint Fl_Glut_Window.active(&self) @extern("Fl_Glut_Window_active");
extern fn void* Fl_Glut_Window.user_data(&self) @extern("Fl_Glut_Window_user_data");
extern fn void Fl_Glut_Window.set_user_data(&self,void*) @extern("Fl_Glut_Window_set_user_data");
extern fn void Fl_Glut_Window.redraw(&self) @extern("Fl_Glut_Window_redraw");
extern fn void Fl_Glut_Window.set_tooltip(&self,ZString) @extern("Fl_Glut_Window_set_tooltip");
extern fn void* Fl_Glut_Window.as_window(&self) @extern("Fl_Glut_Window_as_window");
extern fn void Fl_Glut_Window.resize(&self,int,int,int,int) @extern("Fl_Glut_Window_resize");
extern fn int Fl_Glut_Window.x(&self) @extern("Fl_Glut_Window_x");
extern fn int Fl_Glut_Window.y(&self) @extern("Fl_Glut_Window_y");
extern fn void Fl_Glut_Window.set_deletion_callback(&self,CallbackVoid,void*) @extern("Fl_Glut_Window_set_deletion_callback");


extern fn void Fl_Glut_Window.flush(&self) @extern("Fl_Glut_Window_flush");
extern fn char Fl_Glut_Window.valid(&self) @extern("Fl_Glut_Window_valid");
extern fn void Fl_Glut_Window.set_valid(&self,char) @extern("Fl_Glut_Window_set_valid");
extern fn char Fl_Glut_Window.context_valid(&self) @extern("Fl_Glut_Window_context_valid");
extern fn void Fl_Glut_Window.set_context_valid(&self,char) @extern("Fl_Glut_Window_set_context_valid");
extern fn int Fl_Glut_Window.can_do(&self) @extern("Fl_Glut_Window_can_do");
extern fn void* Fl_Glut_Window.context(&self) @extern("Fl_Glut_Window_context");
extern fn void Fl_Glut_Window.set_context(&self,void*,int) @extern("Fl_Glut_Window_set_context");
extern fn void Fl_Glut_Window.swap_buffers(&self) @extern("Fl_Glut_Window_swap_buffers");
extern fn void Fl_Glut_Window.set_swap_interval(&self,int) @extern("Fl_Glut_Window_set_swap_interval");
extern fn int Fl_Glut_Window.swap_interval(&self) @extern("Fl_Glut_Window_swap_interval");
extern fn void Fl_Glut_Window.ortho(&self) @extern("Fl_Glut_Window_ortho");
extern fn int Fl_Glut_Window.can_do_overlay(&self) @extern("Fl_Glut_Window_can_do_overlay");
extern fn void Fl_Glut_Window.redraw_overlay(&self) @extern("Fl_Glut_Window_redraw_overlay");
extern fn void Fl_Glut_Window.hide_overlay(&self) @extern("Fl_Glut_Window_hide_overlay");
extern fn void Fl_Glut_Window.make_overlay_current(&self) @extern("Fl_Glut_Window_make_overlay_current");
extern fn float Fl_Glut_Window.pixels_per_unit(&self) @extern("Fl_Glut_Window_pixels_per_unit");
extern fn int Fl_Glut_Window.pixel_w(&self) @extern("Fl_Glut_Window_pixel_w");
extern fn int Fl_Glut_Window.pixel_h(&self) @extern("Fl_Glut_Window_pixel_h");
extern fn int Fl_Glut_Window.mode(&self) @extern("Fl_Glut_Window_mode");
extern fn void Fl_Glut_Window.set_mode(&self,int) @extern("Fl_Glut_Window_set_mode");
extern fn void* Fl_Glut_Window.get_proc_address(&self,ZString) @extern("Fl_Glut_Window_get_proc_address");
