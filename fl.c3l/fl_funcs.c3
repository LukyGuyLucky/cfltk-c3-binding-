module fl;

//alias Fl_Window=void;
//alias Fl_Widget=void;
//alias Fl_Button=void;
//alias Fl_Box=void;
//alias Fl_PNG_Image=void;
struct Fl_Window{void* data;}
struct Fl_Double_Window{void* data;}
struct Fl_Widget{void* data;}
struct Fl_Button{void* data;}
struct Fl_Light_Button{void* data;}
struct Fl_Round_Button{void* data;}
struct Fl_Box{void* data;}
struct Fl_PNG_Image{void* data;}
struct Fl_Group{void* data;}
struct Fl_Pack{void* data;}
struct Fl_Input{void* data;}
struct Fl_Scrollbar{void* data;}

extern fn Fl_Window* window_new(int,int,int,int,ZString) @extern("Fl_Window_new");
extern fn void Fl_Window.end(&self) @extern("Fl_Window_end");
extern fn void Fl_Window.show(&self) @extern("Fl_Window_show");
extern fn void Fl_Window.set_color(&self,Fl_Color) @extern("Fl_Window_set_color");

extern fn Fl_Double_Window* double_window_new(int,int,int,int,ZString) @extern("Fl_Double_Window_new");
extern fn void Fl_Double_Window.resizable(&self,Fl_Widget*) @extern("Fl_Double_Window_resizable");
extern fn void Fl_Double_Window.end(&self) @extern("Fl_Double_Window_end");
extern fn void Fl_Double_Window.show(&self) @extern("Fl_Double_Window_show");

extern fn void Fl_Widget.set_label(&self,ZString) @extern("Fl_Widget_set_label");
extern fn int Fl_Widget.height(&self) @extern("Fl_Widget_height");
extern fn int Fl_Widget.width(&self) @extern("Fl_Widget_width");
extern fn void Fl_Widget.resize(&self,int,int,int,int) @extern("Fl_Widget_resize");
extern fn void Fl_Widget.redraw(&self) @extern("Fl_Widget_redraw");

extern fn Fl_Group* Fl_Widget.parent(&self) @extern("Fl_Widget_parent");
extern fn void Fl_Widget.delete(&self) @extern("Fl_Widget_delete");
extern fn void Fl_Widget.copy_label(&self,ZString) @extern("Fl_Widget_copy_label");
extern fn void Fl_Widget.set_type(&self,int) @extern("Fl_Widget_set_type");
extern fn void Fl_Group.redraw(&sefl) @extern("Fl_Group_redraw");

extern fn Fl_Box* box_new(int,int,int,int,ZString) @extern("Fl_Box_new");
extern fn void Fl_Box.set_image(&self,Fl_PNG_Image*) @extern("Fl_Box_set_image");
extern fn void Fl_Box.set_label(&self,ZString) @extern("Fl_Box_set_label");
extern fn void Fl_Box.handle(&self,Cb,void*) @extern("Fl_Box_handle");
//extern fn void Fl_Box.copy_label(&self,ZString) @extern("Fl_Box_copy_label");
extern fn void Fl_Box.box(&sefl,Fl_BoxType) @extern("Fl_Box_box");
extern fn void Fl_Box.label_font(&self,Fl_Font) @extern("Fl_Box_label_font");
extern fn void Fl_Box.label_size(&self,int) @extern("Fl_Box_label_size");
extern fn void Fl_Box.label_type(&self,Fl_LabelType) @extern("Fl_Box_label_type");


extern fn Fl_Button* button_new(int,int,int,int,ZString,) @extern("Fl_Button_new");
extern fn void Fl_Button.handle(&self,Cb,Fl_Box*) @extern("Fl_Button_handle");
extern fn void Fl_Button.set_callback(&self,Callback,void*) @extern("Fl_Button_set_callback");
extern fn void Fl_Button.set_deletion_callback(&self,Callback,Fl_Button*) @extern("Fl_Button_set_deletion_callback");
extern fn void Fl_Button.set_type(&self,Fl_ButtonType) @extern("Fl_Button_set_type");

extern fn Fl_Light_Button* light_button_new(int,int,int,int,ZString) @extern("Fl_Light_Button_new");
extern fn void Fl_Light_Button.set_type(&self,Fl_ButtonType) @extern("Fl_Light_Button_set_type");

extern fn Fl_Round_Button* round_button_new(int,int,int,int,ZString) @extern("Fl_Round_Button_new");
extern fn void Fl_Round_Button.set_type(&self,Fl_ButtonType) @extern("Fl_Round_Button_set_type");

extern fn Fl_Input* input_new(int,int,int,int,ZString) @extern("Fl_Input_new");
extern fn void Fl_Input.set_value(&self,ZString) @extern("Fl_Input_set_value");
extern fn ZString Fl_Input.value(&self) @extern("Fl_Input_value");

extern fn Fl_Scrollbar* scrollbar_new(int,int,int,int,ZString) @extern("Fl_Scrollbar_new");
extern fn void Fl_Scrollbar.set_type(&self,Fl_ScrollbarType) @extern("Fl_Scrollbar_set_type");
extern fn void Fl_Scrollbar.set_minimum(&self,double) @extern("Fl_Scrollbar_set_minimum");
extern fn void Fl_Scrollbar.set_maximum(&self,double) @extern("Fl_Scrollbar_set_maximum");
extern fn void Fl_Scrollbar.set_value(&self,double) @extern("Fl_Scrollbar_set_value");


extern fn Fl_Pack* pack_new(int,int,int,int) @extern("Fl_Pack_new");
extern fn void Fl_Pack.box(&self,Fl_PackType) @extern("Fl_Pack_box");
extern fn void Fl_Pack.add(&self,Fl_Widget*) @extern("Fl_Pack_add");
extern fn void Fl_Pack.end(&self) @extern("Fl_Pack_end");

extern fn int run() @extern("Fl_run");
extern fn void init_all() @extern("Fl_init_all");
extern fn void register_images() @extern("Fl_register_images");
extern fn int lock() @extern("Fl_lock");
extern fn void set_scheme(ZString) @extern("Fl_set_scheme");
extern fn void handle(int,Fl_Window*) @extern("Fl_handle");
extern fn void beep(int) @extern("Fl_beep");

extern fn int event_button() @extern("Fl_event_button");
extern fn int eventX() @extern("Fl_event_x");
extern fn int eventY() @extern("Fl_event_y");

extern fn Fl_PNG_Image* png_image_new(ZString) @extern("Fl_PNG_Image_new");
extern fn void Fl_PNG_Image.scale(&self,int,int,bool,bool) @extern("Fl_PNG_Image_scale");

alias Callback=fn void(Fl_Widget*,void*);
alias Custom_handler_callback=fn void(Fl_Widget*,int,void*);
alias Cb=fn int(Fl_Widget*,int,void*);
alias Fl_Callback=fn int(Fl_Widget*,int,void*);



