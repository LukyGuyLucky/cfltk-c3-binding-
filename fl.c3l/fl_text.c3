module fl;


struct Fl_Text_Buffer{void* _data_;}

extern fn Fl_Text_Buffer* text_buffer_new() @extern("Fl_Text_Buffer_new");
extern fn void Fl_Text_Buffer.set_text(&self,ZString) @extern("Fl_Text_Buffer_set_text");
extern fn ZString Fl_Text_Buffer.text(&self) @extern("Fl_Text_Buffer_text");


struct Fl_Text_Editor{void* _data_;}

extern fn Fl_Text_Editor* text_editor_new(int,int,int,int,ZString) @extern("Fl_Text_Editor_new");
extern fn void Fl_Text_Editor.init(&self) @extern("Fl_Text_Editor_init");
extern fn void Fl_Text_Editor.set_buffer(&self,Fl_Text_Buffer*) @extern("Fl_Text_Editor_set_buffer");
extern fn Fl_Text_Buffer* Fl_Text_Editor.get_buffer(&self) @extern("Fl_Text_Editor_get_buffer");

