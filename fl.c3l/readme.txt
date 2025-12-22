cfltk api to c3 wrapper.
Notes:
Trying to uses methods other than functions. eg:

change 

extern fn void fl_window_set_color(Fl_Window*,Fl_Color) @extern("Fl_Window_set_color");  

to:

extern fn void Fl_Window.set_color(&self,Fl_Color) @extern("Fl_Window_set_color");
