module fl;

struct Fl_Terminal{void* data;}

extern fn Fl_Terminal* terminal_new(int,int,int,int,ZString) @extern("Fl_Terminal_new");
extern fn void Fl_Terminal.printf(&self,ZString,...) @extern("Fl_Terminal_printf");
extern fn void Fl_Terminal.set_ansi(&self,int) @extern("Fl_Terminal_set_ansi");
extern fn int Fl_Terminal.ansi(&self) @extern("Fl_Terminal_ansi");
