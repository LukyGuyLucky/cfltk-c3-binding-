module fl;

struct Fl_Surface_Device{void* _data_;}

extern fn void Fl_Surface_Device.set_current(&self) @extern("Fl_Surface_Device_set_current");
extern fn int Fl_Surface_Device.is_current(&self) @extern("Fl_Surface_Device_is_current");
extern fn Fl_Surface_Device* Fl_Surface_Device.surface(&self) @extern("Fl_Surface_Device_surface");
extern fn void surface_device_push_current(Fl_Surface_Device*) @extern("Fl_Surface_Device_push_current");
extern fn Fl_Surface_Device* surface_device_pop_current() @extern("Fl_Surface_Device_pop_current");


struct Fl_Image_Surface{void* _data_;}

extern fn Fl_Image_Surface* image_surface_new(int,int,int) @extern("Fl_Image_Surface_new");
extern fn void Fl_Image_Surface.delete(&self) @extern("Fl_Image_Surface_delete");
extern fn void Fl_Image_Surface.set_current(&self) @extern("Fl_Image_Surface_set_current");
extern fn int Fl_Image_Surface.is_current(&self) @extern("Fl_Image_Surface_is_current");
extern fn void* Fl_Image_Surface.image(&self) @extern("Fl_Image_Surface_image");
extern fn void* Fl_Image_Surface.highres_image(&self) @extern("Fl_Image_Surface_highres_image");
extern fn void Fl_Image_Surface.origin(&self,int*,int*) @extern("Fl_Image_Surface_origin");
extern fn void Fl_Image_Surface.set_origin(&self,int,int) @extern("Fl_Image_Surface_set_origin");
extern fn void Fl_Image_Surface.rescale(&self) @extern("Fl_Image_Surface_rescale");
extern fn void Fl_Image_Surface.draw(&self,void*,int,int) @extern("Fl_Image_Surface_draw");
extern fn void Fl_Image_Surface.draw_decorated_window(&self,void*,int,int) @extern("Fl_Image_Surface_draw_decorated_window");




struct Fl_SVG_File_Surface{void* _data_;}

extern fn Fl_SVG_File_Surface* svg_file_surface_new(int,int,ZString) @extern("Fl_SVG_File_Surface_new");
extern fn void Fl_SVG_File_Surface.delete(&self) @extern("Fl_SVG_File_Surface_delete");
extern fn void Fl_SVG_File_Surface.origin(&self,int,int) @extern("Fl_SVG_File_Surface_origin");
extern fn int Fl_SVG_File_Surface.printable_rect(&self,int*,int*) @extern("Fl_SVG_File_Surface_printable_rect");
extern fn void Fl_SVG_File_Surface.draw(&self,void*,int,int) @extern("Fl_SVG_File_Surface_draw");
extern fn void Fl_SVG_File_Surface.draw_decorated_window(&self,void*,int,int) @extern("Fl_SVG_File_Surface_draw_decorated_window");
