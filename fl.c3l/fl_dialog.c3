module fl;


struct Fl_Native_File_Chooser{void* data;}

extern fn Fl_Native_File_Chooser* native_file_chooser_new(int) @extern("Fl_Native_File_Chooser_new");

extern fn void Fl_Native_File_Chooser.delete(Fl_Native_File_Chooser *self) @extern("Fl_Native_File_Chooser_delete");

extern fn ZString Fl_Native_File_Chooser.filename(Fl_Native_File_Chooser *) @extern("Fl_Native_File_Chooser_filename");

extern fn ZString Fl_Native_File_Chooser.filenames(Fl_Native_File_Chooser *, int) @extern("Fl_Native_File_Chooser_filenames");

extern fn int Fl_Native_File_Chooser.count(Fl_Native_File_Chooser *) @extern("Fl_Native_File_Chooser_count");

extern fn void Fl_Native_File_Chooser.set_directory(
    Fl_Native_File_Chooser *, ZString
) @extern("Fl_Native_File_Chooser_set_directyory");

extern fn ZString Fl_Native_File_Chooser.directory(Fl_Native_File_Chooser *) @extern("Fl_Native_File_Chooser_directory");

extern fn int Fl_Native_File_Chooser.show(Fl_Native_File_Chooser *) @extern("Fl_Native_File_Chooser_show");

extern fn void Fl_Native_File_Chooser.set_option(Fl_Native_File_Chooser *, int) @extern("Fl_Native_File_Chooser_set_option");

extern fn void Fl_Native_File_Chooser.set_type(Fl_Native_File_Chooser *, int) @extern("Fl_Native_File_Chooser_set_type");

extern fn void Fl_Native_File_Chooser.set_title(
    Fl_Native_File_Chooser *, ZString
) @extern("Fl_Native_File_Chooser_set_title");

extern fn void Fl_Native_File_Chooser.set_filter(Fl_Native_File_Chooser *, ZString) @extern("Fl_Native_File_Chooser_set_filter");

extern fn ZString Fl_Native_File_Chooser.filter(Fl_Native_File_Chooser *) @extern("Fl_Native_File_Chooser_filter");

extern fn int Fl_Native_File_Chooser.filter_value(Fl_Native_File_Chooser *) @extern("Fl_Native_File_Chooser_filter_value");

extern fn void Fl_Native_File_Chooser.set_filter_value(Fl_Native_File_Chooser *, int) @extern("Fl_Native_File_Chooser_set_filter_value");

extern fn void Fl_Native_File_Chooser.set_preset_file(
    Fl_Native_File_Chooser *, ZString
) @extern("Fl_Native_File_Chooser_set_preset_file");

extern fn ZString Fl_Native_File_Chooser.errmsg(Fl_Native_File_Chooser *) @extern("Fl_Native_File_Chooser_errmsg");

extern fn void message(ZString) @extern("Fl_message");

extern fn void alert(ZString) @extern("Fl_alert");

extern fn int choice(ZString,ZString,ZString,ZString) @extern("Fl_choice");

extern fn int choice_n(
    ZString,ZString,ZString,ZString
) @extern("Fl_choice_n");

extern fn ZString input(ZString,ZString) @extern("Fl_input");

extern fn ZString password(ZString,ZString) @extern("Fl_password");


struct Fl_Help_Dialog{void* data;}

extern fn Fl_Help_Dialog* help_dialog_new() @extern("Fl_Help_Dialog_new");

extern fn void Fl_Help_Dialog.delete(Fl_Help_Dialog *) @extern("Fl_Help_Dialog_delete");

extern fn int Fl_Help_Dialog.h(Fl_Help_Dialog *) @extern("Fl_Help_Dialog_h");

extern fn void Fl_Help_Dialog.hide(Fl_Help_Dialog *) @extern("Fl_Help_Dialog_hide");

extern fn int Fl_Help_Dialog.load(Fl_Help_Dialog *, ZString) @extern("Fl_Help_Dialog_load");

extern fn void Fl_Help_Dialog.position(Fl_Help_Dialog *, int xx, int yy) @extern("Fl_Help_Dialog_position");

extern fn void Fl_Help_Dialog.resize(Fl_Help_Dialog *, int xx, int yy, int ww, int hh) @extern("Fl_Help_Dialog_resize");

extern fn void Fl_Help_Dialog.show(Fl_Help_Dialog *) @extern("Fl_Help_Dialog_show");

extern fn void Fl_Help_Dialog.set_text_size(Fl_Help_Dialog *, int s) @extern("Fl_Help_Dialog_set_text_size");

extern fn int Fl_Help_Dialog.text_size(Fl_Help_Dialog *) @extern("Fl_Help_Dialog_text_size");

extern fn void Fl_Help_Dialog.set_value(Fl_Help_Dialog *, ZString) @extern("Fl_Help_Dialog_set_value");

extern fn ZString Fl_Help_Dialog.value(Fl_Help_Dialog *) @extern("Fl_Help_Dialog_value");

extern fn int Fl_Help_Dialog.visible(Fl_Help_Dialog *) @extern("Fl_Help_Dialog_visible");

extern fn int Fl_Help_Dialog.w(Fl_Help_Dialog *) @extern("Fl_Help_Dialog_w");

extern fn int Fl_Help_Dialog.x(Fl_Help_Dialog *) @extern("Fl_Help_Dialog_x");

extern fn int Fl_Help_Dialog.y(Fl_Help_Dialog *) @extern("Fl_Help_Dialog_y");

extern fn void beep(int type) @extern("Fl_beep");

struct Fl_File_Chooser{void* data;}

extern fn Fl_File_Chooser *
file_chooser_new(ZString,ZString, int, ZString) @extern("Fl_File_Chooser_new");

extern fn void Fl_File_Chooser.delete(Fl_File_Chooser *self) @extern("Fl_File_Chooser_delete");

extern fn void* Fl_File_Chooser.newButton(Fl_File_Chooser *self) @extern("Fl_File_Chooser_newButton");

extern fn void* Fl_File_Chooser.previewButton(Fl_File_Chooser *self) @extern("Fl_File_Chooser_previewButton");

extern fn void* Fl_File_Chooser.showHiddenButton(Fl_File_Chooser *self) @extern("Fl_File_Chooser_showHiddenButton");

alias File_callback=fn void(Fl_File_Chooser*,void*);
extern fn void Fl_File_Chooser.set_callback(
    Fl_File_Chooser *self, File_callback, void *d
) @extern("Fl_File_Chooser_set_callback");

extern fn void Fl_File_Chooser.set_color(Fl_File_Chooser *self, uint c) @extern("Fl_File_Chooser_set_color");

extern fn uint Fl_File_Chooser.color(Fl_File_Chooser *self) @extern("Fl_File_Chooser_color");

extern fn int Fl_File_Chooser.count(Fl_File_Chooser *self) @extern("Fl_File_Chooser_count");

extern fn void Fl_File_Chooser.set_directory(Fl_File_Chooser *self,ZString) @extern("Fl_File_Chooser_set_directory");

extern fn ZString Fl_File_Chooser.directory(Fl_File_Chooser *self) @extern("Fl_File_Chooser_directory");

extern fn void Fl_File_Chooser.set_filter(Fl_File_Chooser *self, ZString) @extern("Fl_File_Chooser_set_filter");

extern fn ZString Fl_File_Chooser.filter(Fl_File_Chooser *self) @extern("Fl_File_Chooser_filter");

extern fn int Fl_File_Chooser.filter_value(Fl_File_Chooser *self) @extern("Fl_File_Chooser_filter_value");

extern fn void Fl_File_Chooser.set_filter_value(Fl_File_Chooser *self, int f) @extern("Fl_File_Chooser_set_filter_value");

extern fn void Fl_File_Chooser.hide(Fl_File_Chooser *self) @extern("Fl_File_Chooser_hide");

extern fn void Fl_File_Chooser.set_iconsize(Fl_File_Chooser *self, char) @extern("Fl_File_Chooser_set_iconsize");

extern fn char Fl_File_Chooser.iconsize(Fl_File_Chooser *self) @extern("Fl_File_Chooser_iconsize");

extern fn void Fl_File_Chooser.set_label(Fl_File_Chooser *self, ZString) @extern("Fl_File_Chooser_set_label");

extern fn ZString Fl_File_Chooser.label(Fl_File_Chooser *self) @extern("Fl_File_Chooser_label");

extern fn void Fl_File_Chooser.set_ok_label(Fl_File_Chooser *self, ZString) @extern("Fl_File_Chooser_set_ok_label");

extern fn ZString Fl_File_Chooser.ok_label(Fl_File_Chooser *self) @extern("Fl_File_Chooser_ok_label");

extern fn void Fl_File_Chooser.set_preview(Fl_File_Chooser *self, int e) @extern("Fl_File_Chooser_set_preview");

extern fn int Fl_File_Chooser.preview(Fl_File_Chooser *self) @extern("Fl_File_Chooser_preview");

extern fn void Fl_File_Chooser.rescan(Fl_File_Chooser *self) @extern("Fl_File_Chooser_rescan");

extern fn void Fl_File_Chooser.rescan_keep_filename(Fl_File_Chooser *self) @extern("Fl_File_Chooser_rescan_keep_filename");

extern fn void Fl_File_Chooser.show(Fl_File_Chooser *self) @extern("Fl_File_Chooser_show");

extern fn int Fl_File_Chooser.shown(Fl_File_Chooser *self) @extern("Fl_File_Chooser_shown");

extern fn void Fl_File_Chooser.set_text_color(Fl_File_Chooser *self, uint c) @extern("Fl_File_Chooser_set_text_color");

extern fn uint Fl_File_Chooser.text_color(Fl_File_Chooser *self) @extern("Fl_File_Chooser_text_color");

extern fn void Fl_File_Chooser.set_text_font(Fl_File_Chooser *self, int f) @extern("Fl_File_Chooser_set_text_font");

extern fn int Fl_File_Chooser.text_font(Fl_File_Chooser *self) @extern("Fl_File_Chooser_text_font");

extern fn void Fl_File_Chooser.set_text_size(Fl_File_Chooser *self, int s) @extern("Fl_File_Chooser_set_text_size");

extern fn int Fl_File_Chooser.text_size(Fl_File_Chooser *self) @extern("Fl_File_Chooser_text_size");

extern fn void Fl_File_Chooser.set_type(Fl_File_Chooser *self, int t) @extern("Fl_File_Chooser_set_type");

extern fn int Fl_File_Chooser.type(Fl_File_Chooser *self) @extern("Fl_File_Chooser_type");

extern fn void* Fl_File_Chooser.user_data(Fl_File_Chooser *self) @extern("Fl_File_Chooser_user_data");

extern fn void Fl_File_Chooser.set_user_data(Fl_File_Chooser *self, void *d) @extern("Fl_File_Chooser_set_user_data");

extern fn ZString Fl_File_Chooser.value(Fl_File_Chooser *self, int f) @extern("Fl_File_Chooser_value");

extern fn void Fl_File_Chooser.set_value(Fl_File_Chooser *self, ZString) @extern("Fl_File_Chooser_set_value");

extern fn int Fl_File_Chooser.visible(Fl_File_Chooser *self) @extern("Fl_File_Chooser_visible");

extern fn void Fl_File_Chooser.set_add_favorites_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_add_favorites_label");

extern fn void Fl_File_Chooser.set_all_files_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_all_files_label");

extern fn void Fl_File_Chooser.set_custom_filter_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_custom_filter_label");

extern fn void Fl_File_Chooser.set_existing_file_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_existing_file_label");

extern fn void Fl_File_Chooser.set_favorites_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_favorites_label");

extern fn void Fl_File_Chooser.set_filename_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_filename_label");

extern fn void Fl_File_Chooser.set_filesystems_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_filesystems_label");

extern fn void Fl_File_Chooser.set_manage_favorites_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_manage_favorites_label");

extern fn void Fl_File_Chooser.set_new_directory_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_new_direcotry_label");

extern fn void Fl_File_Chooser.set_new_directory_tooltip(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_new_directory");

extern fn void Fl_File_Chooser.set_preview_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_preview_label");

extern fn void Fl_File_Chooser.set_save_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_save_label");

extern fn void Fl_File_Chooser.set_show_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_show_label");

extern fn void Fl_File_Chooser.set_hidden_label(Fl_File_Chooser*,ZString) @extern("Fl_File_Chooser_set_hidden_label");

extern fn void Fl_File_Chooser.set_position(Fl_File_Chooser *self, int x, int y) @extern("Fl_File_Chooser_set_position");

extern fn void Fl_File_Chooser.set_size(Fl_File_Chooser *self, int w, int h) @extern("Fl_File_Chooser_set_size");

extern fn int Fl_File_Chooser.x(Fl_File_Chooser *self) @extern("Fl_File_Chooser_x");

extern fn int Fl_File_Chooser.y(Fl_File_Chooser *self) @extern("Fl_File_Chooser_y");

extern fn int Fl_File_Chooser.w(Fl_File_Chooser *self) @extern("Fl_File_Chooser_w");

extern fn int Fl_File_Chooser.h(Fl_File_Chooser *self) @extern("Fl_File_Chooser_h");


extern fn ZString dir_chooser(ZString,ZString,int) @extern("Fl_dir_chooser");

extern fn ZString file_chooser(
    ZString,ZString,ZString,int
) @extern("Fl_file_chooser");

extern fn int color_chooser(
    ZString,
    char* r,
    char* g,
    char* b,
    int cmode
) @extern("Fl_color_chooser");

extern fn void message_title(ZString) @extern("Fl_message_title");

extern fn void message_title_default(ZString) @extern("Fl_message_title_default");

extern fn void* message_icon() @extern("Fl_message_icon");

extern fn void message_set_hotspot(int enable) @extern("Fl_message_set_hotspot");

extern fn int message_hotspot() @extern("Fl_message_hotspot");

extern fn void message_set_font(int f, int s) @extern("Fl_message_set_font");

extern fn void message_icon_label(ZString) @extern("Fl_message_icon_label");

extern fn void message_position(int x, int y) @extern("Fl_message_position");
