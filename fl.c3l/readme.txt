cfltk api to c3 wrapper.
Notes:
Trying to uses methods other than procedure.eg:

change 

extern fn viud fl_window_set_color(Fl_Window*,fl_Color)  

to:

extern fn void Fl_Window.set_color(&self,Fl_Color) @extern("Fl_Window_set_color");
