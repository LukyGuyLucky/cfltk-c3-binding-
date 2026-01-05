module fl;

struct Fl_Terminal{void* data;}
//alias Time_callback=fn void(Fl_Terminal*,void*);

extern fn Fl_Terminal* terminal_new(int,int,int,int,ZString) @extern("Fl_Terminal_new");
extern fn void Fl_Terminal.printf(&self,ZString,...) @extern("Fl_Terminal_printf");
extern fn void Fl_Terminal.set_ansi(&self,int) @extern("Fl_Terminal_set_ansi");
extern fn int Fl_Terminal.ansi(&self) @extern("Fl_Terminal_ansi");
//extern fn void add_timeout(double,Time_callback,void*) @extern("Fl_add_timeout");
//extern fn void repeat_timeout(double,Time_callback,void*) @extern("Fl_repeat_timeout");



extern fn void Fl_Terminal.append(&self,ZString) @extern("Fl_Terminal_append");
extern fn void Fl_Terminal.append_u8(&self,ZString,int) @extern("Fl_Terminal_append_u8");
extern fn void Fl_Terminal.append_ascii(&self,ZString) @extern("Fl_Terminal_append_ascii");
extern fn void Fl_Terminal.append_utf8(&self,ZString) @extern("Fl_Terminal_append_utf8");
extern fn void Fl_Terminal.append_utf8_u8(&self,ZString,int) @extern("Fl_Terminal_append_utf8_u8");
extern fn void Fl_Terminal.clear_mouse_selection(&self) @extern("Fl_Terminal_mouse_selection");
extern fn void Fl_Terminal.clear_to_color(&self,uint) @extern("Fl_Terminal_clear_to_color");
extern fn void Fl_Terminal.clear_history(&self) @extern("Fl_Terminal_clear_history");
extern fn void Fl_Terminal.clear_screen(&self,int) @extern("Fl_Terminal_clear_screen");
extern fn void Fl_Terminal.clear_screen_home(&self,int) @extern("Fl_Terminal_clear_screen_home");
extern fn int Fl_Terminal.cursor_col(&self) @extern("Fl_Terminal_cursor_col");
extern fn void Fl_Terminal.set_cursor_col(&self,int) @extern("Fl_Terminal_set_cursor_col");
extern fn void Fl_Terminal.cursor_home(&self) @extern("Fl_Terminal_cursor_home");
extern fn void Fl_Terminal.cursor_row(&self) @extern("Fl_Terminal_cursor_row");
extern fn void Fl_Terminal.set_cursor_row(&self,int) @extern("Fl_Terminal_set_cursor_row");
extern fn void Fl_Terminal.cursor_up(&self,int,int) @extern("Fl_Terminal_cursor_up");
extern fn void Fl_Terminal.cursor_down(&self,int,int) @extern("Fl_Terminal_cursor_down");
extern fn void Fl_Terminal.cursor_left(&self,int) @extern("Fl_Terminal_cursor_left");
extern fn void Fl_Terminal.cursor_right(&self,int,int) @extern("Fl_Terminal_cursor_right");
extern fn void Fl_Terminal.scroll(&self,int) @extern("Fl_Terminal_scorll");
extern fn void Fl_Terminal.clear_end(&self) @extern("Fl_Terminal_clear_end");
extern fn void Fl_Terminal.clear_eol(&self) @extern("Fl_Terminal_clear_eol");
extern fn void Fl_Terminal.clear_cur_line(&self) @extern("Fl_Terminal_clear_cur_line");
extern fn void Fl_Terminal.clear_line(&self,int) @extern("Fl_Terminal_clear_line");
extern fn void Fl_Terminal.clear_sod(&self) @extern("Fl_Terminal_clear_sod");
extern fn void Fl_Terminal.clear_sol(&self) @extern("Fl_Terminal_clear_sol");
extern fn void Fl_Terminal.insert_char(&self,char,int) @extern("Fl_Terminal_insert_char");
extern fn void Fl_Terminal.insert_char_eol(&self,char,int,int,int) @extern("Fl_Terminal_insert_char_eol");
extern fn void Fl_Terminal.insert_rows(&self,int) @extern("Fl_Terminal_insert_rows");
extern fn void Fl_Terminal.delete_chars(&self,int,int,int) @extern("Fl_Terminal_delete_chars");
extern fn void Fl_Terminal.delete_cur_chars(&self,int) @extern("Fl_Terminal_delete_cur_chars");
extern fn void Fl_Terminal.delete_rows(&self,int) @extern("Fl_Terminal_delete_rows");

extern fn uint Fl_Terminal.cursor_bg_color(&self) @extern("Fl_Terminal_cursor_bg_color");
extern fn void Fl_Terminal.set_cursor_bg_color(&self,uint) @extern("Fl_Terminal_set_cursor_bg_color");
extern fn uint Fl_Terminal.cursor_fb_color(&self) @extern("Fl_Terminal_cursor_fb_color");
extern fn void Fl_Terminal.set_cursor_fg_color(&self,uint) @extern("Fl_Terminal_set_cursor_fg_color");

extern fn int Fl_Terminal.display_columns(&self) @extern("Fl_Terminall_display_columns");
extern fn void Fl_Terminal.set_display_columns(&self,int) @extern("Fl_Terminal_set_display_columns");
extern fn int Fl_Terminal.display_rows(&self) @extern("Fl_Terminal_display_rows");

extern fn int Fl_Terminal.history_rows(&self) @extern("Fl_Terminal_history_rows");
extern fn void Fl_Terminal.set_history_rows(&self,int) @extern("Fl_Terminal_set_history_rows");

extern fn int Fl_Terminal.get_selection(&self,int*) @extern("Fl_Terminal_get_selection");
extern fn int Fl_Terminal.history_use(&self) @extern("Fl_Terminal_history_use");

extern fn int Fl_Terminal.margin_bottom(&self) @extern("Fl_Terminal_margin_bottom");
extern fn void Fl_Terminal.set_margin_bottom(&self,int) @extern("Fl_Terminal_set_margin_bottom");

extern fn int Fl_Terminal.margin_left(&self) @extern("Fl_Terminal_margin_left");
extern fn void Fl_Terminal.set_margin_left(&self,int) @extern("Fl_Terminal_set_margin_left");

extern fn int Fl_Terminal.margin_right(&self) @extern("Fl_Terminal_margin_right");
extern fn void Fl_Terminal.set_margin_right(&self) @extern("Fl_Terminal_set_margin_right");

extern fn int Fl_Terminal.margin_top(&self) @extern("Fl_Terminal_margin_top");
extern fn void Fl_Terminal.set_margin_top(&self,int) @extern("Fl_Terminal_set_margin_top");

extern fn uint Fl_Terminal.output_translate(&self) @extern("Fl_Terminal_output_translate");
extern fn void Fl_Terminal.set_output_translate(&self,uint) @extern("Fl_Terminal_set_output_translate");

extern fn void Fl_Terminal.print_char(&self,char) @extern("Fl_Terminal_print_char");
extern fn void Fl_Terminal.print_char_utf8(&self,ZString,int) @extern("Fl_Terminal_print_char_utf8");

extern fn void Fl_Terminal.plot_char(&self,char,int,int) @extern("Fl_Terminal_plot_char");
extern fn void Fl_Terminal.plot_char_utf8(&self,ZString,int,int,int) @extern("Fl_Terminal_plot_char_utf8");

extern fn float Fl_Terminal.redraw_rate(&self) @extern("Fl_Terminal_redraw_rate");
extern fn void Fl_Terminal.set_redraw_rate(&self,float) @extern("Fl_Terminal_set_redraw_rate");

extern fn int Fl_Terminal.redraw_style(&self) @extern("Fl_Terminal_redraw_style");
extern fn void Fl_Terminal.set_redraw_style(&self,int) @extern("Fl_Terminal_set_redraw_style");

extern fn void Fl_Terminal.reset_terminal(&self) @extern("Fl_Terminal_reset_terminal");

extern fn int Fl_Terminal.scrollbar_actual_size(&self) @extern("Fl_Terminal_scrollbar_actual_size");
extern fn int Fl_Terminal.scrollbar_size(&self) @extern("Fl_Terminal_scrollbar_size");
extern fn void Fl_Terminal.set_scrollbar_size(&self,int) @extern("Fl_Terminal_set_scrollbar_size");

extern fn int Fl_Terminal.hscrollbar_style(&self) @extern("Fl_Terminal_hscrollbar_style");
extern fn void Fl_Terminal.set_hscrollbar_style(&self,int) @extern("Fl_Terminal_set_hscrollbar_style");

extern fn uint Fl_Terminal.selection_bg_color(&self) @extern("Fl_Terminal_selection_bg_color");
extern fn void Fl_Terminal.set_selection_bg_color(&self,uint) @extern("Fl_Terminal_set_selection_bg_color");

extern fn uint Fl_Terminal.selection_fg_color(&self) @extern("Fl_Terminal_selection_fg_color");
extern fn void Fl_Terminal.set_selection_fg_color(&self,uint) @extern("Fl_Terminal_set_selection_fg_color");

extern fn int Fl_Terminal.show_unknown(&self) @extern("Fl_Terminal_show_unknown");
extern fn void Fl_Terminal.set_show_unknown(&self,int) @extern("Fl_Terminal_set_show_unknown");

extern fn char Fl_Terminal.text_attrib(&self) @extern("Fl_Terminal_text_attrib");
extern fn void Fl_Terminal.set_text_attrib(&self,char) @extern("Fl_Terminal_set_text_attrib");

extern fn uint Fl_Terminal.text_bg_color(&self) @extern("Fl_Terminal_text_bg_color");
extern fn void Fl_Terminal.set_text_bg_color(&self,uint) @extern("Fl_Terminal_set_text_bg_color");
extern fn uint Fl_Terminal.text_bg_color_default(&self) @extern("Fl_Terminal_text_bg_color_default");
extern fn void Fl_Terminal.set_text_bg_color_default(&self,uint) @extern("Fl_Terminal_set_text_bg_color_default");

extern fn void Fl_Terminal.set_text_bg_color_xterm(&self,char) @extern("Fl_Terminal_set_text_bg_color_xtream");
extern fn void Fl_Terminal.set_text_color(&self,uint) @extern("Fl_Terminal_set_text_color");
extern fn uint Fl_Terminal.text_fg_color(&self) @extern("Fl_Terminal_text_fg_color");
extern fn void Fl_Terminal.set_text_fg_color(&self,uint) @extern("Fl_Terminal_set_text_fg_color");
extern fn uint Fl_Terminal.text_fg_color_default(&self) @extern("Fl_Terminal_text_fg_color_default");
extern fn void Fl_Terminal.set_text_fg_color_default(&self,uint) @extern("Fl_Terminal_set_text_fg_color_default");
extern fn void Fl_Terminal.set_text_fg_color_xterm(&self,char) @extern("Fl_Terminal_set_text_fg_color_xterm");

extern fn int Fl_Terminal.text_font(&self) @extern("Fl_Terminal_text_font");
extern fn void Fl_Terminal.set_text_font(&self,int) @extern("Fl_Terminal_set_text_font");

extern fn int Fl_Terminal.text_size(&self) @extern("Fl_Terminal_text_size");
extern fn void Fl_Terminal.set_text_size(&self,int) @extern("Fl_Terminal_set_text_size");

extern fn ZString Fl_Terminal.text(&self,int) @extern("Fl_Terminal_text");
extern fn ZString Fl_Terminal.selection_text(&self) @extern("Fl_Terminal_selection_text");
extern fn int Fl_Terminal.selection_text_len(&self) @extern("Fl_Terminal_selection_text_len");

struct Fl_Terminal_Scrollbar{void* _data_;}

extern fn Fl_Terminal_Scrollbar* Fl_Terminal.scrollbar(&self) @extern("Fl_Terminal_scrollbar");
extern fn Fl_Terminal_Scrollbar* Fl_Terminal.hscorllbar(&self) @extern("Fl_Terminal_hscrollbar");

struct Fl_Terminal_Utf8Char{void* _data_;}

extern fn uint Fl_Terminal_Utf8Char.attr_bgcolor(&self,Fl_Terminal*) @extern("Fl_Terminal_Utf8Char_attr_bgcolor");
extern fn uint Fl_Terminal_Utf8Char.attr_fgcolor(&self,Fl_Terminal*) @extern("Fl_Terminal_Utf8Char_attr_fgcolor");

extern fn char Fl_Terminal_Utf8Char.attrib(&self) @extern("Fl_Terminal_Utf8Char_attrib");
extern fn uint Fl_Terminal_Utf8Char.bgcolor(&self) @extern("Fl_Terminal_Utf8Char_bgcolor");
extern fn uint Fl_Terminal_Utf8Char.fgcolor(&self) @extern("Fl_Terminal_Utf8Char_fgcolor");

extern fn int Fl_Terminal_Utf8Char.is_char(&self,char) @extern("Fl_Terminal_Utf8Char_is_char");
extern fn int Fl_Terminal_Utf8Char.length(&self) @extern("Fl_Terminal_Utf8Char_length");
extern fn int Fl_Terminal_Utf8Char.max_utf8(&self) @extern("Fl_Terminal_Utf8Char_max_utf8");
extern fn double Fl_Terminal_Utf8Char.pwidth(&self) @extern("Fl_Terminal_Utf8Char_pwidth");
extern fn int Fl_Terminal_Utf8Char.pwidth_int(&self) @extern("Fl_Terminal_Utf8Char_pwidth_int");

extern fn ZString Fl_Terminal_Utf8Char.text_utf8(&self) @extern("Fl_Terminal_Utf8Char_text_utf8");
extern fn char Fl_Terminal_Utf8Char.charflags(&self) @extern("Fl_Terminal_Utf8Char_charflags");


extern fn Fl_Terminal_Utf8Char* terminal_utf8char_new_obj(char) @extern("Fl_Terminal_Utf8Char_new_obj");

extern fn int Fl_Terminal.disp_erow(&self) @extern("Fl_Terminal_disp_erow");
extern fn int Fl_Terminal.disp_srow(&self) @extern("Fl_Terminal_disp_srow");
extern fn int Fl_Terminal.hist_erow(&self) @extern("Fl_Termianl_hist_erow");
extern fn int Fl_Terminal.hist_srow(&self) @extern("Fl_Terminal_hist_srow");
extern fn int Fl_Terminal.hist_use(&self) @extern("Fl_Terminal_hist_use");
extern fn int Fl_Terminal.hist_user_srow(&self) @extern("Fl_Terminal_hist_use_srow");
extern fn int Fl_Terminal.h_to_row(&self,int) @extern("Fl_Terminal_h_to_row");
extern fn int Fl_Terminal.w_to_col(&self,int) @extern("Fl_Terminal_w_to_col");
extern fn int Fl_Terminal.is_inside_selection(&self,int,int) @extern("Fl_Termianl_is_Inside_selection");
extern fn int Fl_Terminal.is_selection(&self) @extern("Fl_Terminal_is_selction");
extern fn int Fl_Terminal.offset(&self) @extern("Fl_Terminal_offset");
extern fn int Fl_Terminal.ring_erow(&self) @extern("Fl_Terminal_ring_erow");
extern fn int Fl_Terminal.ring_srow(&self) @extern("Fl_Terminal_ring_srow");
extern fn int Fl_Terminal.ring_rows(&self) @extern("Fl_Terminal_ring_rows");

extern fn Fl_Terminal_Utf8Char* Fl_Terminal.u8c_disp_row(&self,int) @extern("Fl_Terminal_u8c_disp_row");
extern fn Fl_Terminal_Utf8Char* Fl_Terminal.u8c_cursor(&self) @extern("Fl_Terminal_u8c_cursor");
extern fn Fl_Terminal_Utf8Char* Fl_Terminal.u8c_hist_row(&self,int) @extern("Fl_Terminal_u8c_hist_row");
extern fn Fl_Terminal_Utf8Char* Fl_Terminal.u8c_hist_use_row(&self,int) @extern("Fl_Terminal_u8c_hist_use_row");
extern fn Fl_Terminal_Utf8Char* Fl_Terminal.u8c_ring_row(&self,int) @extern("Fl_Terminal_u8c_ring_row");
extern fn uint terminal_utf8char_size() @extern("Fl_Terminal_Utf8Char_size");
extern fn void free_str(ZString) @extern("Fl_free_str");


