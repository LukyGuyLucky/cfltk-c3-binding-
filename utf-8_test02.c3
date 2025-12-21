import std::io;

extern fn Fl_Window* fl_window_new(int,int,int,int,char*) @extern("Fl_Window_new");
extern fn Fl_Box* fl_box_new(int,int,int,int,char*) @extern("Fl_Box_new");
extern fn Fl_Button* fl_button_new(int,int,int,int,char*,) @extern("Fl_Button_new");
extern fn void fl_window_end(Fl_Window*) @extern("Fl_Window_end");
extern fn void fl_window_show(Fl_Window*) @extern("Fl_Window_show");
extern fn void fl_button_handle(Fl_Button*,Custom_handler_callback,Fl_Box*) @extern("Fl_Button_handle");
extern fn int fl_run() @extern("Fl_run");
extern fn void fl_init_all() @extern("Fl_init_all");
extern fn void fl_register_images() @extern("Fl_register_images");
extern fn int fl_lock() @extern("Fl_lock");
extern fn void fl_button_set_callback(Fl_Button*,Custom_handler_callback,void*) @extern("Fl_Button_set_callback");

extern fn void fl_widget_set_label(Fl_Widget*,char*) @extern("Fl_Widget_set_label");
extern fn void fl_window_set_color(Fl_Window*,Fl_Color) @extern("Fl_Window_set_color");
extern fn Fl_PNG_Image* fl_png_image_new(char*) @extern("Fl_PNG_Image_new");
extern fn void fl_png_image_scale(Fl_PNG_Image*,int,int,bool,bool) @extern("Fl_PNG_Image_scale");
extern fn void fl_box_set_image(Fl_Box*,Fl_PNG_Image*) @extern("Fl_Box_set_image");
extern fn int fl_widget_height(Fl_Widget*) @extern("Fl_Widget_height");
extern fn int fl_widget_width(Fl_Widget*) @extern("Fl_Widget_width");
alias Custom_handler_callback=fn void(Fl_Widget*,int,void*);

alias Fl_Window=void;
alias Fl_Widget=void;
alias Fl_Button=void;
alias Fl_Box=void;
alias Fl_PNG_Image=void;


enum Fl_Color:const CInt {
    FL_COLOR_FOREGROUND   = 0,
    FL_COLOR_FOREGROUND2   = 0,
    FL_COLOR_BACKGROUND  = 7,
    FL_COLOR_BACKGROUND2  = 7,
    FL_COLOR_INACTIVE     = 8,
    FL_COLOR_SELECTION    = 15,
    FL_COLOR_GRAY0        = 32,
    FL_COLOR_DARK3        = 39,
    FL_COLOR_DARK2        = 45,
    FL_COLOR_DARK1        = 47,
    FL_COLOR_FRAMEDEFAULT = 49,
    FL_COLOR_BACKGROUND3   = 49,
    FL_COLOR_BACKGROUND4   = 49,
    FL_COLOR_LIGHT1       = 50,
    FL_COLOR_LIGHT2       = 52,
    FL_COLOR_LIGHT3       = 54,
    FL_COLOR_BLACK        = 56,
    FL_COLOR_RED          = 88,
    FL_COLOR_GREEN        = 63,
    FL_COLOR_YELLOW       = 95,
    FL_COLOR_BLUE         = 216,
    FL_COLOR_MAGENTA      = 248,
    FL_COLOR_CYAN         = 223,
    FL_COLOR_DARKRED      = 72,
    FL_COLOR_DARKGREEN    = 60,
    FL_COLOR_DARKYELLOW   = 76,
    FL_COLOR_DARKBLUE     = 136,
    FL_COLOR_DARKMAGENTA  = 152,
    FL_COLOR_DARKCYAN     = 140,
    FL_COLOR_WHITE        =255,
}


ZString en = "english: The quick brown fox jumps over the lazy dog.";
ZString de = "german: Zwölf Boxkämpfer jagten Eva quer über den Sylter Deich.";
ZString ru = "russian: В чащах юга жил бы цитрус? Да, но фальшивый экземпляр!";
ZString gr = "greek: Γαζέες καὶ μυρτιὲς δὲν θὰ βρῶ πιὰ στὸ χρυσαφὶ ξέφωτο";
ZString fr = "french: Le cœur déçu mais l'âme plutôt naïve, Louÿs rêva de crapaüter ....";
ZString tk = "turkish: Pijamalı hasta, yağız şoföre çabucak güvendi.";
ZString multi="¡Hola Mundo!Γειά σου Κόσμε!Привет, мир!こんにちは世界！你好世界！नमस्ते दुनिया!👋🌎!";

fn void main()
{

    Fl_Window* win = fl_window_new(100,100,640,300,"नमस्ते दुनिया!👋🌎!");
    int h=fl_widget_height(win)/7;
    int w=fl_widget_width(win);//Fl_WidgetGetH(win)\6, w=Fl_WidgetGetW(win)
    fl_box_new(0,h*0,w,h,en);
    fl_box_new(0,h*1,w,h,de);
    fl_box_new(0,h*2,w,h,ru);
    fl_box_new(0,h*3,w,h,gr);
    fl_box_new(0,h*4,w,h,fr);
    fl_box_new(0,h*5,w,h,tk);
    fl_box_new(0,h*6,w,h,multi);
    
    fl_window_end(win);
    fl_window_show(win);
    fl_run();
}
