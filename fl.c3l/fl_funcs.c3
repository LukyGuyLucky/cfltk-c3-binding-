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
struct Fl_Tabs{void* data;}
struct Fl_Wizard{void* data;}
struct Fl_Multiline_Output{void* data;}
struct Fl_Menu_Bar{void* data;}
struct Fl_Menu_Item{void* data;}
struct Fl_Tree{void* data;}
struct Fl_Tree_Item{void* data;}
struct Fl_Pixmap{void* data;}
struct Fl_Hor_Value_Slider{void* data;}
struct Fl_Chart{void* data;}

extern fn Fl_Window* window_new(int,int,int,int,ZString) @extern("Fl_Window_new");
extern fn void Fl_Window.begin(&self) @extern("Fl_Window_begin");
extern fn void Fl_Window.end(&self) @extern("Fl_Window_end");
extern fn void Fl_Window.show(&self) @extern("Fl_Window_show");
extern fn void Fl_Window.set_color(&self,int) @extern("Fl_Window_set_color");
extern fn int Fl_Window.width(&self) @extern("Fl_Window_width");
extern fn int Fl_Window.height(&self) @extern("Fl_Window_height");
extern fn ZString Fl_Window.label(&self) @extern("Fl_Window_label");
extern fn void Fl_Window.make_current(&self) @extern("Fl_Window_make_current");
extern fn int Fl_Window.shown(&self) @extern("Fl_Window_shown");
extern fn void Fl_Window.draw(&self,Cb,void* data) @extern("Fl_Window_draw");

extern fn Fl_Double_Window* double_window_new(int,int,int,int,ZString) @extern("Fl_Double_Window_new");
extern fn void Fl_Double_Window.begin(&self) @extern("Fl_Double_Window_begin");
extern fn void Fl_Double_Window.resizable(&self,Fl_Widget*) @extern("Fl_Double_Window_resizable");
extern fn void Fl_Double_Window.end(&self) @extern("Fl_Double_Window_end");
extern fn void Fl_Double_Window.show(&self) @extern("Fl_Double_Window_show");
extern fn void Fl_Double_Window.set_color(&self,int) @extern("Fl_Double_Window_set_color");
extern fn int Fl_Double_Window.width(&self) @extern("Fl_Double_Window_width");
extern fn int Fl_Double_Window.height(&self) @extern("Fl_Double_Window_height");
extern fn ZString Fl_Double_Window.label(&self) @extern("Fl_Double_Window_label");
extern fn void Fl_Double_Window.draw(&self,Cb,void* data) @extern("Fl_Double_Window_draw");
extern fn int Fl_Double_Window.shown(&self) @extern("Fl_Double_Window_shown");
extern fn void Fl_Double_Window.redraw(&self) @extern("Fl_Double_Window_redraw");

extern fn void Fl_Widget.set_color(&self,int) @extern("Fl_Widget_set_color");
extern fn void Fl_Widget.set_label_color(&self,int) @extern("Fl_Widget_set_label_color");
extern fn void Fl_Widget.set_label(&self,ZString) @extern("Fl_Widget_set_label");
extern fn int Fl_Widget.height(&self) @extern("Fl_Widget_height");
extern fn int Fl_Widget.width(&self) @extern("Fl_Widget_width");
extern fn int Fl_Widget.x(&self) @extern("Fl_Widget_x");
extern fn int Fl_Widget.y(&self) @extern("Fl_Widget_y");
extern fn void Fl_Widget.resize(&self,int,int,int,int) @extern("Fl_Widget_resize");
extern fn void Fl_Widget.redraw(&self) @extern("Fl_Widget_redraw");
extern fn void Fl_Widget.set_icon(&self,void*) @extern("Fl_Widget_set_icon");
extern fn void* Fl_Widget.user_data(&self) @extern("Fl_Widget_user_data");
extern fn void* Fl_Widget.window(&self) @extern("Fl_Widget_window");
//extern fn void Fl_Widget.set_position(&self,int,int) @extern("Fl_Widget_position");

extern fn Fl_Group* Fl_Widget.parent(&self) @extern("Fl_Widget_parent");
extern fn void Fl_Widget.delete(&self) @extern("Fl_Widget_delete");
extern fn void Fl_Widget.copy_label(&self,ZString) @extern("Fl_Widget_copy_label");
extern fn void Fl_Widget.set_type(&self,int) @extern("Fl_Widget_set_type");

extern fn void Fl_Group.redraw(&self) @extern("Fl_Group_redraw");
extern fn void Fl_Group.set_color(&self,int) @extern("Fl_Group_set_color");
extern fn void Fl_Group.end(&self) @extern("Fl_Group_end");
extern fn Fl_Group* group_new(int,int,int,int,ZString) @extern("Fl_Group_new");

extern fn Fl_Box* box_new(int,int,int,int,ZString) @extern("Fl_Box_new");
//extern fn void Fl_Box.set_image(&self,Fl_PNG_Image*) @extern("Fl_Box_set_image");
extern fn void Fl_Box.set_label(&self,ZString) @extern("Fl_Box_set_label");
extern fn void Fl_Box.handle(&self,Cb,void*) @extern("Fl_Box_handle");
extern fn int Fl_Box.handle_event(&self,int) @extern("Fl_Box_handle_event");
//extern fn void Fl_Box.copy_label(&self,ZString) @extern("Fl_Box_copy_label");
extern fn void Fl_Box.box(&sefl,Fl_BoxType) @extern("Fl_Box_box");
extern fn void Fl_Box.label_font(&self,Fl_Font) @extern("Fl_Box_label_font");
extern fn void Fl_Box.label_size(&self,int) @extern("Fl_Box_label_size");
extern fn void Fl_Box.set_label_type(&self,int) @extern("Fl_Box_set_label_type");
extern fn int Fl_Box.label_type(&self,Fl_LabelType) @extern("Fl_Box_label_type");
extern fn void Fl_Box.set_color(&self,int) @extern("Fl_Box_set_color");
extern fn void Fl_Box.set_label_color(&self,int) @extern("Fl_Box_set_label_color");
extern fn void Fl_Box.set_label_size(&self,int) @extern("Fl_Box_set_label_size");
extern fn void Fl_Box.set_type(&self,int) @extern("Fl_Box_set_type");
extern fn void Fl_Box.redraw(&self) @extern("Fl_Box_redraw");
extern fn void Fl_Box.window(&self) @extern("Fl_Box_window");
extern fn int Fl_Box.x(&self) @extern("Fl_Box_x");
extern fn int Fl_Box.y(&self) @extern("Fl_Box_y");
extern fn int Fl_Box.width(&self) @extern("Fl_Box_width");
extern fn int Fl_Box.height(&self) @extern("Fl_Box_height");
//extern fn void Fl_Box.set_position(&self,int,int) @extern("Fl_Box_position");
extern fn void Fl_Box.set_image(&self,void*) @extern("Fl_Box_set_image");
extern fn void Fl_Box.resize(&self,int,int,int,int) @extern("Fl_Box_resize");
extern fn void Fl_Box.set_user_data(&self,void*) @extern("Fl_Box_set_user_data");
extern fn void Fl_Box.set_callback(&self,Callback,void*) @extern("Fl_Box_set_callback");
extern fn void Fl_Box.draw(&self,Cb,void*) @extern("Fl_Box_draw");
extern fn int Fl_Box.get_type(&self) @extern("Fl_Box.get_type");
extern fn void Fl_Box.set_box(&self,int) @extern("Fl_Box.set_box");

extern fn Fl_Button* button_new(int,int,int,int,ZString,) @extern("Fl_Button_new");
extern fn void Fl_Button.handle(&self,Cb,Fl_Box*) @extern("Fl_Button_handle");
extern fn void Fl_Button.set_callback(&self,Callback,void*) @extern("Fl_Button_set_callback");
extern fn void Fl_Button.set_deletion_callback(&self,Callback,Fl_Button*) @extern("Fl_Button_set_deletion_callback");
extern fn void Fl_Button.set_type(&self,Fl_ButtonType) @extern("Fl_Button_set_type");
extern fn void Fl_Button.set_color(&self,int) @extern("Fl_Button_set_color");
extern fn void Fl_Button.set_align(&self,Fl_Align) @extern("Fl_Button_set_align");
extern fn void Fl_Button.set_image(&self,void*) @extern("Fl_Button_set_image");

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
extern fn void Fl_Scrollbar.set_callback(&self,Callback,void*) @extern("Fl_Scrollbar_set_callback");
extern fn int Fl_Scrollbar.value(&self) @extern("Fl_Scrollbar_value");
extern fn void Fl_Scrollbar.handle(&self,Cb,void*) @extern("Fl_Scrollbar_handle");
extern fn Fl_Color Fl_Scrollbar.color(&self) @extern("Fl_Scrollbar_color");

extern fn Fl_Pack* pack_new(int,int,int,int) @extern("Fl_Pack_new");
extern fn void Fl_Pack.box(&self,Fl_PackType) @extern("Fl_Pack_box");
extern fn void Fl_Pack.add(&self,Fl_Widget*) @extern("Fl_Pack_add");
extern fn void Fl_Pack.end(&self) @extern("Fl_Pack_end");

extern fn Fl_Tabs* tabs_new(int,int,int,int) @extern("Fl_Tabs_new");
extern fn void Fl_Tabs.end(&self) @extern("Fl_Tabs_end");
extern fn void Fl_Tabs.set_label(&self,ZString) @extern("Fl_Tabs_set_label");

extern fn Fl_Wizard* wizard_new(int,int,int,int) @extern("Fl_Wizard_new");
extern fn void Fl_Wizard.end(&self) @extern("Fl_Wizard_end");
extern fn void Fl_Wizard.next(&self) @extern("Fl_Wizard_next");
extern fn void Fl_Wizard.prev(&self) @extern("Fl_Wizard_prev");

extern fn Fl_Menu_Bar* menu_bar_new(int,int,int,int) @extern("Fl_Menu_Bar_new");
extern fn int Fl_Menu_Bar.add(&self,ZString,int,Callback,void*,int) @extern("Fl_Menu_Bar_add");
extern fn int Fl_Menu_Bar.item_pathname(&self,ZString,int,Fl_Menu_Item*) @extern("Fl_Menu_Bar_item_pathname");
extern fn Fl_Menu_Item* Fl_Menu_Bar.mvalue(&self) @extern("Fl_Menu_Bar_mvalue");

extern fn ZString Fl_Menu_Item.label(&self) @extern("Fl_Menu_Item_label");
extern fn int Fl_Menu_Item.value(&self) @extern("Fl_Menu_Item_value");

extern fn Fl_Tree* tree_new(int,int,int,int,ZString) @extern("Fl_Tree_new");
extern fn int Fl_Tree.set_showroot(&self,int) @extern("Fl_Tree_set_showroot");
extern fn void Fl_Tree.set_callback(&self,Callback,void* data) @extern("Fl_Tree_set_callback");
extern fn int Fl_Tree.callback_reason(&self) @extern("Fl_Tree_callback_reason");
extern fn int Fl_Tree.item_pathname(&self,ZString,int,Fl_Tree_Item*) @extern("Fl_Tree_item_pathname");
extern fn Fl_Tree_Item* Fl_Tree.add(&self,ZString) @extern("Fl_Tree_add");
extern fn Fl_Tree_Item* Fl_Tree.callback_item(&self) @extern("Fl_Tree_callback_item");
extern fn int Fl_Tree.close(&self,ZString,int) @extern("Fl_Tree_close");
extern fn int Fl_Tree.open(&self,ZString,int) @extern("Fl_Tree_open");

extern fn void Fl_Tree_Item.open(&self) @extern("Fl_Tree_Item_open");
extern fn void Fl_Tree_Item.close(&self) @extern("Fl_Tree_Item_close");
extern fn ZString Fl_Tree_Item.label(&self) @extern("Fl_Tree_Item_label");

extern fn Fl_Multiline_Output* multiline_output_new(int,int,int,int,ZString) @extern("Fl_Multiline_Output_new");
extern fn void Fl_Multiline_Output.set_label_size(&self,int) @extern("Fl_Multiline_Output_set_label_size");
extern fn void Fl_Multiline_Output.set_align(&self,Fl_Align) @extern("Fl_Multiline_Output_set_align");
extern fn void Fl_Multiline_Output.set_value(&sefl,ZString) @extern("Fl_Multiline_Output_set_value");

extern fn Fl_Hor_Value_Slider* hor_value_slider_new(int,int,int,int,ZString) @extern("Fl_Hor_Value_Slider_new");
extern fn void Fl_Hor_Value_Slider.set_callback(&self,Callback,void*) @extern("Fl_Hor_Value_Slider_set_callback");
extern fn void Fl_Hor_Value_Slider.set_range(&self,double,double) @extern("Fl_Hor_Value_Slider_set_range");
extern fn int Fl_Hor_Value_Slider.set_value(&self,double) @extern("Fl_Hor_Value_Slider_set_value");
extern fn void* Fl_Hor_Value_Slider.user_data(&self) @extern("Fl_Hor_Value_Slider_user_data");
extern fn double Fl_Hor_Value_Slider.value(&self) @extern("Fl_Hor_Value_Slider_value");
extern fn void* Fl_Hor_Value_Slider.window(&self) @extern("Fl_Hor_Value_Slider_window");

extern fn Fl_Chart* chart_new(int,int,int,int,ZString) @extern("Fl_Chart_new");
extern fn void Fl_Chart.add(&self,double,ZString,uint) @extern("Fl_Chart_add");
extern fn void Fl_Chart.set_type(&self,int) @extern("Fl_Chart_set_type");


extern fn int run() @extern("Fl_run");
extern fn void init_all() @extern("Fl_init_all");
extern fn void register_images() @extern("Fl_register_images");
extern fn int lock() @extern("Fl_lock");
extern fn void set_scheme(ZString) @extern("Fl_set_scheme");
extern fn void handle(int,Fl_Window*) @extern("Fl_handle");
extern fn void beep(int) @extern("Fl_beep");
extern fn uint rgb_color(char r,char g,char b) @extern("Fl_rgb_color");
extern fn int event_button() @extern("Fl_event_button");
extern fn int eventX() @extern("Fl_event_x");
extern fn int event_x() @extern("Fl_event_x");
extern fn int eventY() @extern("Fl_event_y");
extern fn int event_y() @extern("Fl_event_y");
extern fn int event_key() @extern("Fl_event_key");
extern fn int check() @extern("Fl_check");
extern fn int dnd() @extern("Fl_dnd");
extern fn void copy(ZString,int,int) @extern("Fl_copy");
extern fn ZString event_text() @extern("Fl_event_text");
extern fn void redraw() @extern("Fl_redraw");
extern fn void set_focus() @extern("Fl_set_focus");
extern fn int w() @extern("Fl_w");
extern fn int h() @extern("Fl_h");
extern fn void foreground(char,char,char) @extern("Fl_foreground");
extern fn void background(char,char,char) @extern("Fl_background");
extern fn void background2(char,char,char) @extern("Fl_background2");
extern fn Fl_Widget* foucus() @extern("Fl_focus");
extern fn double version() @extern("Fl_version");
extern fn void set_font(int,int) @extern("Fl_set_font");
extern fn int load_font(ZString) @extern("Fl_load_font");
extern fn void load_system_icon() @extern("Fl_laod_system_icon");
extern fn int wait() @extern("Fl_wait");
extern fn double wait_for(double) @extern("Fl_wait_for");
extern fn void set_color(uint,char,char,char) @extern("Fl_set_color");
extern fn void set_color_with_alpha(uint,char,char,char,char) @extern("Fl_set_color_with_alpha");
extern fn void set_box_type(int,int) @extern("Fl_set_box_type");

extern fn Fl_PNG_Image* png_image_new(ZString) @extern("Fl_PNG_Image_new");
extern fn void Fl_PNG_Image.scale(&self,int,int,bool,bool) @extern("Fl_PNG_Image_scale");
extern fn Fl_Pixmap* pixmap_new(char**) @extern("Fl_Pixmap_new");

extern fn void push_clip(int,int,int,int) @extern("Fl_push_clip");
extern fn void pop_clip() @extern("Fl_pop_clip");
extern fn void set_color_int(Fl_Color) @extern("Fl_set_color_int");
extern fn void set_color_rgb(char r,char g,char b) @extern("Fl_set_color_rgb");
extern fn void rect(int,int,int,int) @extern("Fl_rect");
extern fn void rectf(int,int,int,int) @extern("Fl_rectf");
extern fn void rectf_with_color(int,int,int,int,Fl_Color) @extern("Fl_rectf_with_color");
extern fn void rect_with_color(int,int,int,int,Fl_Color) @extern("Fl_rect_with_color");
extern fn void rectf_with_rgb(int,int,int,int,char,char,char) @extern("Fl_rectf_with_rgb");
extern fn void xyline(int,int,int) @extern("Fl_xyline");
extern fn void yxline(int,int,int) @extern("Fl_yxline");

extern fn void draw(ZString,int,int) @extern("Fl_draw");
extern fn void draw_text_angled(int,ZString,int,int) @extern("Fl_draw_text_angled");
extern fn void set_draw_font(int,int) @extern("Fl_set_draw_font");
extern fn void point(int,int) @extern("Fl_point");
extern fn void line(int,int,int,int) @extern("Fl_line");
extern fn void arc(int,int,int,int,double,double) @extern("Fl_arc");
extern fn void arc_with_radius(double,double,double,double,double) @extern("Fl_arc_with_radius");

extern fn void draw_box(int,int,int,int,int,uint) @extern("Fl_draw_box");
extern fn void push_matrix() @extern("Fl_push_matrix");
extern fn void pop_matrix() @extern("Fl_pop_matrix");
extern fn void scale(double) @extern("Fl_scale");
extern fn void begin_line() @extern("Fl_begin_line");
extern fn void end_line() @extern("Fl_end_line");
extern fn void begin_loop() @extern("Fl_begin_loop");
extern fn void end_loop() @extern("Fl_end_loop");
extern fn void begin_polygon() @extern("Fl_begin_polygon");
extern fn void end_polygon() @extern("Fl_end_polygon");
extern fn void begin_complex_polygon() @extern("Fl_begin_complex_polygon");
extern fn void end_complex_polygon() @extern("Fl_end_complex_polygon");
extern fn void vertex(double,double) @extern("Fl_vertex");


alias Callback=fn void(Fl_Widget*,void*);
alias Custom_draw_callback=fn void(Fl_Widget*,void*);
alias Custom_handler_callback=fn void(Fl_Widget*,int,void*);
alias Cb=fn int(Fl_Widget*,int,void*);
alias Fl_Callback=fn int(Fl_Widget*,int,void*);



