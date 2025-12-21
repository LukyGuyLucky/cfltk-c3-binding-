module fl;

//alias Fl_Window=void;
//alias Fl_Widget=void;
//alias Fl_Button=void;
//alias Fl_Box=void;
//alias Fl_PNG_Image=void;
struct Fl_Window{void* data;}
struct Fl_Widget{void* data;}
struct Fl_Button{void* data;}
struct Fl_Box{void* data;}
struct Fl_PNG_Image{void* data;}
extern fn Fl_Window* window_new(int,int,int,int,char*) @extern("Fl_Window_new");
extern fn void Fl_Window.end(&self) @extern("Fl_Window_end");
extern fn void Fl_Window.show(&self) @extern("Fl_Window_show");
extern fn void Fl_Window.set_color(&self,Fl_Color) @extern("Fl_Window_set_color");

extern fn Fl_Box* box_new(int,int,int,int,char*) @extern("Fl_Box_new");
extern fn void Fl_Box.set_image(&self,Fl_PNG_Image*) @extern("Fl_Box_set_image");

extern fn Fl_Button* button_new(int,int,int,int,char*,) @extern("Fl_Button_new");
extern fn void Fl_Button.handle(&self,Cb,Fl_Box*) @extern("Fl_Button_handle");
extern fn void Fl_Button.set_callback(&self,Cb,void*) @extern("Fl_Button_set_callback");

extern fn int run() @extern("Fl_run");
extern fn void init_all() @extern("Fl_init_all");
extern fn void register_images() @extern("Fl_register_images");
extern fn int lock() @extern("Fl_lock");

extern fn void Fl_Widget.set_label(&self,char*) @extern("Fl_Widget_set_label");
extern fn int Fl_Widget.height(&self) @extern("Fl_Widget_height");
extern fn int Fl_Widget.width(&self) @extern("Fl_Widget_width");

extern fn Fl_PNG_Image* png_image_new(char*) @extern("Fl_PNG_Image_new");
extern fn void Fl_PNG_Image.scale(&self,int,int,bool,bool) @extern("Fl_PNG_Image_scale");

alias Custom_handler_callback=fn void(Fl_Widget*,int,void*);
alias Cb=fn void(Fl_Widget*,int,void*);




