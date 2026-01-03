module fl;

struct Fl_Printer{void* _data_;}
extern fn Fl_Printer* printer_new() @extern("Fl_Printer_new");
extern fn void Fl_Printer.delete(&self) @extern("Fl_Printer_delete");
extern fn int Fl_Printer.begin_job(&self,int,int*,int*,ZString*) @extern("Fl_Printer_begin_job");
extern fn int Fl_Printer.begin_page(&self) @extern("Fl_Printer_begin_page");
extern fn int Fl_Printer.printable_rect(&self,int*,int*) @extern("Fl_Printer_printable_rect");
extern fn void Fl_Printer.margins(&self,int*,int*,int*,int*) @extern("Fl_Printer_margins");
extern fn void Fl_Printer.origin(&self,int*,int*) @extern("Fl_Printer_origin");
extern fn void Fl_Printer.set_orign(&self,int,int) @extern("Fl_Printer_set_origin");
extern fn void Fl_Printer.scale(&self,float,float) @extern("Fl_Pritner_scale");
extern fn void Fl_Printer.rotate(&self,float) @extern("Fl_Printer_rotate");
extern fn void Fl_Printer.translate(&self,int,int) @extern("Fl_Printer_translate");
extern fn void Fl_Printer.untranslate(&self,int,int) @extern("Fl_Printer_untranslate");
extern fn int Fl_Printer.end_page(&self) @extern("Fl_Printer_end_page");
extern fn void Fl_Printer.end_job(&self) @extern("Fl_Printer_end_job");
extern fn void Fl_Printer.set_current(&self) @extern("Fl_Printer_set_current");
extern fn int Fl_Printer.is_current(&self) @extern("Fl_Printer_is_current");
extern fn void Fl_Printer.print_widget(&self,void*,int,int) @extern("Fl_Printer_print_widget");
extern fn void Fl_Printer.print_window(&self,void*,int,int) @extern("Fl_Printer_print_window");
extern fn void Fl_Printer.set_dialog_title(&self,ZString) @extern("Fl_Printer_set_dialog_title");
extern fn void Fl_Printer.set_dialog_printer(&self,ZString) @extern("Fl_Printer_set_dialog_printer");
extern fn void Fl_Printer.set_dialog_range(&self,ZString) @extern("Fl_Printer_set_dialog_range");
extern fn void Fl_Printer.set_dialog_copies(&self,ZString) @extern("Fl_Printer_set_dialog_copies");
extern fn void Fl_Printer.set_dialog_all(&self,ZString) @extern("Fl_Printer_set_dialog_all");
extern fn void Fl_Printer.set_dialog_pages(&self,ZString) @extern("Fl_Printer_set_dialog_pages");

extern fn void Fl_Printer.set_dialog_from(&self,ZString) @extern("Fl_Printer.set_dialog_from");

extern fn void Fl_Printer.set_dialog_to(&self,ZString) @extern("Fl_Printer.set_dialog_to");

extern fn void Fl_Printer.set_dialog_properties(&self,ZString) @extern("Fl_Printer.set_dialog_properties");

extern fn void Fl_Printer.set_dialog_copyNo(&self,ZString) @extern("Fl_Printer.set_dialog_copyNo");

extern fn void Fl_Printer.set_dialog_print_button(&self,ZString) @extern("Fl_Printer.set_dialog_print_button");

extern fn void Fl_Printer.set_dialog_cancel_button(&self,ZString) @extern("Fl_Printer.set_dialog_cancel_button");

extern fn void Fl_Printer.set_dialog_print_to_file(&self,ZString) @extern("Fl_Printer.set_dialog_print_to_file");

extern fn void Fl_Printer.set_property_title(&self,ZString) @extern("Fl_Printer.set_property_title");

extern fn void Fl_Printer.set_property_pagesize(&self,ZString) @extern("Fl_Printer.set_property_pagesize");

extern fn void Fl_Printer.set_property_mode(&self,ZString) @extern("Fl_Printer.set_property_mode");

extern fn void Fl_Printer.set_property_use(&self,ZString) @extern("Fl_Printer.set_property_use");

extern fn void Fl_Printer.set_property_save(&self,ZString) @extern("Fl_Printer.set_property_save");

extern fn void Fl_Printer.set_property_cancel(&self,ZString)  @extern("Fl_Printer.set_property_cancel");
