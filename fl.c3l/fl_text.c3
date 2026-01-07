module fl;


extern fn void delete_stable(void*) @extern("Fl_delete_stable");

alias Text_Modify_Cb=fn void(int,int,int,int,ZString,void*);
alias Text_Predelete_Cb=fn void(int,int,void*);


struct Fl_Text_Buffer{void* _data_;}

extern fn Fl_Text_Buffer* text_buffer_new() @extern("Fl_Text_Buffer_new");
extern fn void Fl_Text_Buffer.delete(&self) @extern("Fl_Text_Buffer_delete");
extern fn void Fl_Text_Buffer.set_text(&self,ZString) @extern("Fl_Text_Buffer_set_text");
extern fn ZString Fl_Text_Buffer.text(&self) @extern("Fl_Text_Buffer_text");
extern fn void Fl_Text_Buffer.append(&self,ZString) @extern("Fl_Text_Buffer_append");
extern fn void Fl_Text_Buffer.append2(&self,ZString) @extern("Fl_Text_Buffer_append2");
extern fn void Fl_Text_Buffer.remove(&self,int,int) @extern("Fl_Text_Buffer_remove");
extern fn int Fl_Text_Buffer.length(&self) @extern("Fl_Text_Buffer_length");
extern fn ZString Fl_Text_Buffer.text_range(&self,int,int) @extern("Fl_Text_Buffer_text_range");
extern fn void Fl_Text_Buffer.insert(&self,int,ZString) @extern("Fl_Text_Buffer_insert");
extern fn void Fl_Text_Buffer.replace(&self,int,int,ZString) @extern("Fl_Text_Buffer_replace");
extern fn void Fl_Text_Buffer.copy(&self,Fl_Text_Buffer*,int,int,int) @extern("Fl_Text_Buffer_copy");
extern fn int Fl_Text_Buffer.undo(&self,int*) @extern("Fl_Text_Buffer_undo");
extern fn void Fl_Text_Buffer.canUndo(&self,char) @extern("Fl_Text_canUndo");
extern fn int Fl_Text_Buffer.can_undo(&self) @extern("Fl_Text_Buffer_can_undo");
extern fn int Fl_Text_Buffer.load_file(&self,ZString) @extern("Fl_Text_Buffer_load_file");
extern fn int Fl_Text_Buffer.save_file(&self,ZString) @extern("Fl_Text_Buffer_save_file");
extern fn int Fl_Text_Buffer.tab_distance(&self) @extern("Fl_Text_Buffer_tab_distance");
extern fn void Fl_Text_Buffer.set_tab_distance(&self,int) @extern("Fl_Text_Buffer_set_tab_distance");
extern fn void Fl_Text_Buffer.select(&self,int,int) @extern("Fl_Text_Buffer_select");
extern fn int Fl_Text_Buffer.selected(&self) @extern("Fl_Text_Buffer_selected");
extern fn void Fl_Text_Buffer.unselect(&self) @extern("Fl_Tetxt_Buffer_unselect");
extern fn int Fl_Text_Buffer.selection_position(&self,int*,int*) @extern("Fl_Text_Buffer_selection_position");
extern fn ZString Fl_Text_Buffer.selection_text(&self) @extern("Fl_Text_Buffer_selection_text");
extern fn void Fl_Text_Buffer.remove_selection(&self) @extern("Fl_Text_Buffer_remove_selection");
extern fn void Fl_Text_Buffer.replace_selection(&self,ZString) @extern("Fl_Text_Buffer_replace_selection");
extern fn void Fl_Text_Buffer.secondary_select(&self,int,int) @extern("Fl_Text_Buffer_secondary_select");
extern fn int Fl_Text_Buffer.secondary_selected(&self) @extern("Fl_Text_Buffer_secondary_selected");
extern fn void Fl_Text_Buffer.secondary_unselect(&self) @extern("Fl_Text_Buffer_secondary_unselect");
extern fn int Fl_Text_Buffer.secondary_selection_position(&self,int*,int*) @extern("Fl_Text_Buffer_secondary_selection_position");
extern fn ZString Fl_Text_Buffer.secondary_selection_text(&self) @extern("Fl_Text_Buffer_secondary_selection_text");
extern fn void Fl_Text_Buffer.remove_secondary_selection(&self) @extern("Fl_Text_Buffer_remove_secondary_selection");
extern fn void Fl_Text_Buffer.replace_secondary_selection(&self,ZString) @extern("Fl_Text_Buffer_replace_secondary_selection");
extern fn void Fl_Text_Buffer.highlight(&self,int,int) @extern("Fl_Text_Buffer_highlight");
extern fn int Fl_Text_Buffer.is_highlighted(&self) @extern("Fl_Text_Buffer_is_highlighted");
extern fn void Fl_Text_Buffer.unhighlight(&self) @extern("Fl_Text_Buffer_unhighlight");
extern fn int Fl_Text_Buffer.highlight_position(&self,int*,int*) @extern("Fl_Text_Buffer_highlight_position");
extern fn ZString Fl_Text_Buffer.highlight_text(&self) @extern("Fl_Text_Buffer_highlight_text");
extern fn ZString Fl_Text_Buffer.line_text(&self,int) @extern("Fl_Text_Buffer_line_text");
extern fn int Fl_Text_Buffer.line_start(&self,int) @extern("Fl_Text_Buffer_line_start");
extern fn int Fl_Text_Buffer.line_end(&self,int) @extern("Fl_Text_Buffer_line_end");
extern fn int Fl_Text_Buffer.word_start(&self,int) @extern("Fl_Text_Buffer_word_start");
extern fn int Fl_Text_Buffer.word_end(&self,int) @extern("Fl_Text_Buffer_word_end");
extern fn int Fl_Text_Buffer.count_lines(&self,int,int) @extern("Fl_Text_Buffer_count_lines");


extern fn char Fl_Text_Buffer.byte_at(&self,int) @extern("Fl_Text_Buffer_char_at");
extern fn uint Fl_Text_Buffer.char_at(&self,int) @extern("Fl_Text_Buffer_byte_at");
extern fn ZString Fl_Text_Buffer.address(&self,int) @extern("Fl_Text_Buffer_address");
extern fn ZString Fl_Text_Buffer.address2(&self,int) @extern("Fl_Text_Buffer_address2");
extern fn int Fl_Text_Buffer.utf8_align(&self,int) @extern("Fl_Text_Buffer_align");
extern fn int Fl_Text_Buffer.is_word_separator(&self,int) @extern("Fl_Text_Buffer_is_word_separator");
extern fn void Fl_Text_Buffer.add_modify_callback(&self,Text_Modify_Cb,void*) @extern("Fl_Text_Buffer_add_modify_callback");
extern fn void Fl_Text_Buffer.remove_modify_callback(&self,Text_Modify_Cb,void*) @extern("Fl_Text_Buffer_remove_modify_callback");
extern fn void Fl_Text_Buffer.call_modify_callbacks(&self) @extern("Fl_Text_Buffer_call_modify_callbacks");
extern fn int Fl_Text_Buffer.search_forward(&self,int,ZString,int*,int) @extern("Fl_Text_Buffer_search_forward");
extern fn int Fl_Text_Buffer.search_backward(&self,int,ZString,int*,int) @extern("Fl_Text_Buffer_search_backward");
extern fn int Fl_Text_Buffer.findchar_forward(&self,int,uint,int*) @extern("Fl_Text_Buffer_findchar_forward");
extern fn int Fl_Text_Buffer.findchar_backward(&self,int,uint,int*) @extern("Fl_Text_Buffer_findchar_backward");
extern fn int Fl_Text_Buffer.redo(&self,int*) @extern("Fl_Text_Buffer_redo");
extern fn int Fl_Text_Buffer.can_redo(&self) @extern("Fl_Text_Buffer_can_redo");
extern fn int Fl_Text_Buffer.insertfile(&self,ZString,int,int) @extern("Fl_Text_Buffer_insertfile");
extern fn int Fl_Text_Buffer.appendfile(&self,ZString,int) @extern("Fl_Text_Buffer_appendfile");
extern fn int Fl_Text_Buffer.outputfile(&self,ZString,int,int,int) @extern("Fl_Text_Buffer_outputfile");
extern fn void Fl_Text_Buffer.add_predelete_callback(&self,Text_Predelete_Cb,void*) @extern("Fl_Text_Buffer_add_predelete_callback");
extern fn void Fl_Text_Buffer.remove_predelete_callback(&self,Text_Predelete_Cb,void*) @extern("Fl_Text_Buffer_remove_predelete_callback");
extern fn void Fl_Text_Buffer.call_predelete_callbacks(&self) @extern("Fl_Text_Buffer_call_predelete_callbacks");

struct Fl_Text_Display{void* _data_;}

extern fn Fl_Text_Display* text_display_new(int,int,int,int,ZString) @extern("Fl_Text_Display_new");
extern fn Fl_Text_Buffer* Fl_Text_Display.get_buffer(&self) @extern("Fl_Text_Display_get_buffer");
extern fn void Fl_Text_Buffer.set_buffer(&self,Fl_Text_Buffer*) @extern("Fl_Text_Display_set_buffer");
extern fn Fl_Text_Buffer* Fl_Text_Display.get_style_buffer(&self) @extern("Fl_Text_Display_get_style_buffer");

extern fn int Fl_Text_Display.text_font( &self) @extern("Fl_Text_Display_text_font");                                    
extern fn     void Fl_Text_Display.set_text_font(&self, int s) @extern("Fl_Text_Display_set_text_font");                              
 extern fn    int Fl_Text_Display.text_size( &self) @extern("Fl_Text_Display_text_size");                                    
 extern  fn void Fl_Text_Display.set_text_size(&self, int s) @extern("Fl_Text_Display_set_text_size");                              
 extern fn uint Fl_Text_Display.text_color( &self) @extern("Fl_Text_Display_text_color");                          
 extern fn   void Fl_Text_Display.set_text_color(&self, uint n) @extern("Fl_Text_Display_set_text_color");                    
 extern fn   void Fl_Text_Display.scroll(&self, int topLineNum, int horizOffset) @extern("Fl_Text_Display_scroll");           
 extern fn   void Fl_Text_Display.insert(&self,  ZString text) @extern("Fl_Text_Display_insert");                          
  extern fn  void Fl_Text_Display.set_insert_position(&self, int newPos) @extern("Fl_Text_Display_set_insert_position");                   
  extern fn  int Fl_Text_Display.insert_position( &self) @extern("Fl_Text_Display_insert_position");                              
   extern fn  int Fl_Text_Display.position_to_xy( &self, int pos, int *x, int *y) @extern("Fl_Text_Display_position_to_xy");  
   extern fn int Fl_Text_Display.count_lines(                                                  
         &self, int start, int end, int start_pos_is_line_start        
    ) @extern("Fl_Text_Display_count_lines");                                                                         
   extern fn int Fl_Text_Display.move_right(&self) @extern("Fl_Text_Display_move_right");                                         
   extern fn int Fl_Text_Display.move_left(&self) @extern("Fl_Text_Display_move_left");                                          
    extern fn int Fl_Text_Display.move_up(&self) @extern("Fl_Text_Display_move_up");                                            
    extern fn int Fl_Text_Display.move_down(&self) @extern("Fl_Text_Display_move_down");                                          
    extern fn void Fl_Text_Display.show_cursor(&self, int boolean) @extern("Fl_Text_Display_show_cursor");                          
    extern fn void Fl_Text_Display.set_highlight_data(                                          
        &self,                                                          
        void *sbuff,                                                           
        uint *color,                                                   
        int *font,                                                             
        int *fontsz,                                                           
        uint *attr,                                                        
        uint *bgcolor,                                                 
        int sz                                                                 
    ) @extern("Fl_Text_Display_set_highlight_data");                                                                         
    extern fn void Fl_Text_Display.set_cursor_style(&self, int style) @extern("Fl_Text_Display_set_cursor_style");                       
    extern fn void Fl_Text_Display.set_cursor_color(&self, uint color) @extern("Fl_Text_Display_set_cursor_color");              
    extern fn void Fl_Text_Display.set_scrollbar_size(&self, int newSize) @extern("Fl_Text_Display_set_scrollbar_size");                   
    extern fn void Fl_Text_Display.set_scrollbar_align(&self, int align) @extern("Fl_Text_Display_set_scrollbar_align");                    
    extern fn int Fl_Text_Display.cursor_style(&self) @extern("Fl_Text_Display_cursor_style");                                       
    extern fn uint Fl_Text_Display.cursor_color(&self) @extern("Fl_Text_Display_cursor_color");                              
    extern fn int Fl_Text_Display.scrollbar_size(&self) @extern("Fl_Text_Display_scrollbar_size");                                     
    extern fn int Fl_Text_Display.scrollbar_align(&self) @extern("Fl_Text_Display_scrollbar_align");                                    
    extern fn int Fl_Text_Display.line_start( &self, int pos) @extern("Fl_Text_Display_line_start");                      
    extern fn int Fl_Text_Display.line_end(                                                     
         &self, int startPos, int startPosIsLineStart              
    ) @extern("Fl_Text_Display_line_end");                                                                         
    extern fn int Fl_Text_Display.skip_lines(                                                   
        &self, int startPos, int nLines, int startPosIsLineStart        
    ) @extern("Fl_Text_Display_skip_lines");                                                                         
    extern fn int Fl_Text_Display.rewind_lines(&self, int startPos, int nLines) @extern("Fl_Text_Display_rewind_lines");         
    extern fn void Fl_Text_Display.next_word(&self) @extern("Fl_Text_Display_next_word");                                     
    extern fn void Fl_Text_Display.previous_word(&self) @extern("Fl_Text_Display_previous_word");                                 
    extern fn int Fl_Text_Display.word_start( &self, int pos) @extern("Fl_Text_Display_word_start");                      
    extern fn int Fl_Text_Display.word_end( &self, int pos) @extern("Fl_Text_Display_word_end");                        
    extern fn double Fl_Text_Display.x_to_col( &self, double x) @extern("Fl_Text_Display_x_to_col");                    
    extern fn double Fl_Text_Display.col_to_x( &self, double col) @extern("Fl_Text_Display_col_to_x");                  
    extern fn void Fl_Text_Display.set_linenumber_width(&self, int width) @extern("Fl_Text_Display_set_linenumber_width");               
    extern fn int Fl_Text_Display.linenumber_width( &self) @extern("Fl_Text_Display_linenumber_width");                         
    extern fn void Fl_Text_Display.set_linenumber_font(&self, int val) @extern("Fl_Text_Display_set_linenumber_font");                  
    extern fn int Fl_Text_Display.linenumber_font( &self) @extern("Fl_Text_Display_linenumber_font");                          
    extern fn void Fl_Text_Display.set_linenumber_size(&self, int val) @extern("Fl_Text_Display_set_linenumber_size");                  
    extern fn int Fl_Text_Display.linenumber_size( &self) @extern("Fl_Text_Display_linenumber_size");                          
    extern fn void Fl_Text_Display.set_linenumber_fgcolor(&self, uint val) @extern("Fl_Text_Display_set_linenumber_fgcolor");      
    extern fn uint Fl_Text_Display.linenumber_fgcolor( &self) @extern("Fl_Text_Display_linenumber_fgcolor");              
    extern fn void Fl_Text_Display.set_linenumber_bgcolor(&self, uint val) @extern("Fl_Text_Display_set_linenumber_bgcolor");      
    extern fn uint Fl_Text_Display.linenumber_bgcolor( &self) @extern("Fl_Text_Display_linenumber_bgcolor");              
    extern fn void Fl_Text_Display.set_linenumber_align(&self, int val) @extern("Fl_Text_Display_set_linenumber_align");                 
    extern fn int Fl_Text_Display.linenumber_align( &self) @extern("Fl_Text_Display_align");                         
    extern fn int Fl_Text_Display.in_selection( &self, int x, int y) @extern("Fl_Text_Display_in_selection");               
    extern fn void Fl_Text_Display.wrap_mode(&self, int wrap, int wrap_margin) @extern("Fl_Text_Display_wrap_mode");          
    extern fn int Fl_Text_Display.wrapped_column( &self, int row, int column) @extern("Fl_Text_Display_wrapped_column");      
    extern fn int Fl_Text_Display.wrapped_row( &self, int row) @extern("Fl_Text_Display_wrapped_row");                     
    extern fn void Fl_Text_Display.set_grammar_underline_color(                                 
        &self, uint color                                       
    ) @extern("Fl_Text_Display_set_grammar_underline_colo0r");                                                                         
    extern fn uint Fl_Text_Display.grammar_underline_color( &self) @extern("Fl_Text_Display_grammar_underline_color");         
    extern fn void Fl_Text_Display.set_spelling_underline_color(                                
        &self,uint color                                       
    ) @extern("Fl_Text_Display_set_spelling_underline_color");                                                                         
    extern fn uint Fl_Text_Display.spelling_underline_color( &self);        
    extern fn void Fl_Text_Display.set_secondary_selection_color(                               
        &self, uint color                                       
    ) @extern("Fl_Text_Display_set_secondary_selection_color");                                                                         
    extern fn uint Fl_Text_Display.secondary_selection_color( &self) @extern("Fl_Text_Display_secondary_selection_color");       
    extern fn void Fl_Text_Display.show_insert_position(&self) @extern("Fl_Text_Display_show_insert_position");                          
    extern fn void Fl_Text_Display.overstrike(&self,  ZString text) @extern("Fl_Text_Display_overstrike");                  
    extern fn void Fl_Text_Display.redisplay_range(&self, int start, int end) @extern("Fl_Text_Display_redisplay_range");           
    extern fn void Fl_Text_Display.set_linenumber_format(&self,  ZString val) @extern("Fl_Text_Display_set_linenumber_format");        
     extern fn ZString Fl_Text_Display.linenumber_format( &self) @extern("Fl_Text_Display_linenumber_format");                
    extern fn int Fl_Text_Display.position_style(                                               
         &self, int lineStartPos, int lineLen, int lineIndex       
    ) @extern("Fl_Text_Display_position_style");                                                                         
    extern fn void Fl_Text_Display.maintain_absolute_top_line_number(&self, int state) @extern("Fl_Text_Display_maintain_absolute_top_line_number");  
    extern fn int Fl_Text_Display.get_absolute_top_line_number( &self) @extern("Fl_Text_Display_get_absolute_top_line_number");             
    extern fn void Fl_Text_Display.absolute_top_line_number(&self, int oldFirstChar) @extern("Fl_Text_Display_absolute_top_line_number");    
    extern fn int Fl_Text_Display.maintaining_absolute_top_line_number( &self) @extern("Fl_Text_Display_maintaining_absolute_top_line_number");     
    extern fn void Fl_Text_Display.reset_absolute_top_line_number(&self) @extern("Fl_Text_Display_reset_absolute_top_line_number");                
    extern fn int Fl_Text_Display.scroll_row( &self) @extern("Fl_Text_Display_scroll_row");                               
    extern fn int Fl_Text_Display.scroll_col( &self) @extern("Fl_Text_Display_scroll_col");                               
    extern fn int Fl_Text_Display.xy_to_position(                                               
         &self, int x, int y, int posType                          
    ) @extern("Fl_Text_Display_xy_to_position");                                                                         
    extern fn void Fl_Text_Display.xy_to_rowcol(                                                
         &self, int x, int y, int *row, int *column, int posType   
    ) @extern("Fl_Text_Display_xy_to_rowcol");


extern fn void Fl_Text_Display.set_color(&self,int) @extern("Fl_Text_Display_set_color");
extern fn void Fl_Text_Display.set_selection_color(&self,uint) @extern("Fl_Text_Display.set_selection_color");
extern fn void Fl_Text_Display.set_label_color(&self,int) @extern("Fl_Text_Display_set_label_color");
extern fn void Fl_Text_Display.set_label(&self,ZString) @extern("Fl_Text_Display_set_label");
extern fn int Fl_Text_Display.height(&self) @extern("Fl_Text_Display_height");
extern fn int Fl_Text_Display.width(&self) @extern("Fl_Text_Display_width");
extern fn int Fl_Text_Display.x(&self) @extern("Fl_Text_Display_x");
extern fn int Fl_Text_Display.y(&self) @extern("Fl_Text_Display_y");
extern fn void Fl_Text_Display.resize(&self,int,int,int,int) @extern("Fl_Text_Display_resize");
extern fn void Fl_Text_Display.redraw(&self) @extern("Fl_Text_Display_redraw");
extern fn void Fl_Text_Display.set_icon(&self,void*) @extern("Fl_Text_Display_set_icon");
extern fn void* Fl_Text_Display.user_data(&self) @extern("Fl_Text_Display_user_data");
extern fn void Fl_Text_Display.set_user_data(&self,void*) @extern("Fl_Text_Display_set_user_data");
extern fn void* Fl_Text_Display.window(&self) @extern("Fl_Text_Display_window");
//extern fn ZString Fl_Text_Display.value(&self) @extern("Fl_Text_Display_value");
extern fn ZString Fl_Text_Display.label(&self) @extern("Fl_Text_Display_label");
extern fn Fl_Group* Fl_Text_Display.parent(&self) @extern("Fl_Text_Display_parent");
extern fn void Fl_Text_Display.delete(&self) @extern("Fl_Text_Display_delete");
extern fn void Fl_Text_Display.copy_label(&self,ZString) @extern("Fl_Text_Display_copy_label");
extern fn void Fl_Text_Display.set_type(&self,int) @extern("Fl_Text_Display_set_type");
extern fn void Fl_Text_Display.set_when(&self,int) @extern("Fl_Text_Display_set_when");
extern fn int Fl_Text_Display.when(&self) @extern("Fl_Text_Display_when");
extern fn void Fl_Text_Display.set_box(&self,int) @extern("Fl_Text_Display_set_box");
//extern fn int Fl_Text_Display.value(&self) @extern("Fl_Text_Display_value");
extern fn void Fl_Text_Display.set_image(&self,void*) @extern("Fl_Text_Display_set_image");
extern fn void Fl_Text_Display.set_callback(&self,CallbackVoid,void*) @extern("Fl_Text_Display_set_callback");
extern fn void* Fl_Text_Display.as_window(&self) @extern("Fl_Text_Display_as_window");
extern fn int Fl_Text_Display.handle_event(&self,int) @extern("Fl_Text_Display_handle_event");
//extern fn int Fl_Text_Display.x(&self) @extern("Fl_Text_Display_x");
//extern fn int Fl_Text_Display.y(&self) @extern("Fl_Text_Display_y");
extern fn void Fl_Text_Display.set_deletion_callback(&self,CallbackVoid,void*) @extern("Fl_Text_Display_set_deletion_callback");
extern fn void Fl_Text_Display.activate(&self) @extern("Fl_Text_Display_activate");
extern fn void Fl_Text_Display.deactivate(&self) @extern("Fl_Text_Display_deactivate");
/*******************************************************************************/
extern fn void Fl_Text_Display.set_tooltip(&self,ZString) @extern("Fl_Text_Display_set_tooltip");
/*******************************************************************************/







struct Fl_Text_Editor{void* _data_;}

extern fn Fl_Text_Editor* text_editor_new(int,int,int,int,ZString) @extern("Fl_Text_Editor_new");
extern fn void Fl_Text_Editor.init(&self) @extern("Fl_Text_Editor_init");
extern fn void Fl_Text_Editor.set_buffer(&self,Fl_Text_Buffer*) @extern("Fl_Text_Editor_set_buffer");
extern fn Fl_Text_Buffer* Fl_Text_Editor.get_buffer(&self) @extern("Fl_Text_Editor_get_buffer");
extern fn Fl_Text_Buffer* Fl_Text_Editor.get_style_buffer(&self) @extern("Fl_Text_Editor_get_style_buffer");

extern fn int Fl_Text_Editor.kf_copy(&self) @extern("Fl_Text_Editor_kf_copy");
extern fn int Fl_Text_Editor.kf_cut(&self) @extern("Fl_Text_Editor_kf_cut");
extern fn int Fl_Text_Editor.kf_paste(&self) @extern("Fl_Text_Editor_kf_paste");
extern fn int Fl_Text_Editor.kf_undo(&self) @extern("Fl_Text_Editor_kf_undo");
extern fn int Fl_Text_Editor.kf_redo(&self) @extern("Fl_Text_Editor_kf_redo");
extern fn int Fl_Text_Editor.kf_default(&self,Fl_Text_Editor*) @extern("Fl_Text_Editor_kf_default");
extern fn int Fl_Text_Editor.kf_ignore(&self,Fl_Text_Editor*) @extern("Fl_Text_Editor_kf_ignore");
extern fn int Fl_Text_Editor.kf_backspace(&self) @extern("Fl_Text_Editor_kf_backspace");
extern fn int Fl_Text_Editor.kf_enter(&self) @extern("Fl_Text_Editor_kf_enter");
extern fn int text_editor_kf_move(int,Fl_Text_Editor*) @extern("Fl_Text_Editor_kf_move");
extern fn int text_editor_kf_shift_move(int,Fl_Text_Editor*) @extern("Fl_Text_Editor_kf_shift_move");
extern fn int text_editor_kf_ctrl_move(int,Fl_Text_Editor*) @extern("Fl_Text_Editor_kf_ctrl_move");
extern fn int text_editor_kf_c_s_move(int,Fl_Text_Editor*) @extern("Fl_Text_Editor_kf_c_s_move");
extern fn int text_editor_kf_meta_move(int,Fl_Text_Editor*) @extern("Fl_Text_Editor_kf_meta_move");
extern fn int text_editor_kf_m_s_move(int,Fl_Text_Editor*) @extern("Fl_Text_Editor_kf_m_s_move");
extern fn int Fl_Text_Editor.kf_home(&self) @extern("Fl_Text_Editor_kf_home");
extern fn int Fl_Text_Editor.kf_end(&self) @extern("Fl_Text_Editor_kf_end");
extern fn int Fl_Text_Editor.kf_left(&self) @extern("Fl_Text_Editor_kf_left");
extern fn int Fl_Text_Editor.kf_up(&self) @extern("Fl_Text_Editor_kf_up");
extern fn int Fl_Text_Editor.kf_right(&self) @extern("Fl_Text_Editor_kf_right");
extern fn int Fl_Text_Editor.kf_down(&self) @extern("Fl_Text_Editor_kf_down");
extern fn int Fl_Text_Editor.kf_page_up(&self) @extern("Fl_Text_Editor_kf_page_up");
extern fn int Fl_Text_Editor.kf_page_down(&self) @extern("Fl_Text_Editor_kf_page_down");
extern fn int Fl_Text_Editor.kf_insert(&self) @extern("Fl_Text_Editor_kf_insert");
extern fn int Fl_Text_Editor.kf_delete(&self) @extern("Fl_Text_Editor_kf_delete");
extern fn int Fl_Text_Editor.kf_select_all(&self) @extern("Fl_Text_Editor_kf_select_all");
extern fn int Fl_Text_Editor.set_insert_mode(&self,int) @extern("Fl_Text_Editor_kf_set_insert_mode");
extern fn int Fl_Text_Editor.insert_mode(&self) @extern("Fl_Text_Editor_insert_mode");
extern fn void Fl_Text_Editor.set_tab_nav(&self,int) @extern("Fl_Text_Editor_set_Tab_nav");
extern fn int Fl_Text_Editor.tab_nav(&self) @extern("Fl_Text_Editor_tab_nav");

alias Text_Editor_int_cb=fn int(int,Fl_Text_Editor*);
extern fn void Fl_Text_Editor.add_key_binding(&self,int,int,Text_Editor_int_cb) @extern("Fl_Text_Editor_add_key_binding");

extern fn void Fl_Text_Editor.remove_key_binding(&self,int,int) @extern("Fl_Text_Editor_remove_key_binding");


extern fn int Fl_Text_Editor.text_font( &self) @extern("Fl_Text_Editor_text_font");                                    
extern fn     void Fl_Text_Editor.set_text_font(&self, int s) @extern("Fl_Text_Editor_set_text_font");                              
 extern fn    int Fl_Text_Editor.text_size( &self) @extern("Fl_Text_Editor_text_size");                                    
 extern  fn void Fl_Text_Editor.set_text_size(&self, int s) @extern("Fl_Text_Editor_set_text_size");                              
 extern fn uint Fl_Text_Editor.text_color( &self) @extern("Fl_Text_Editor_text_color");                          
 extern fn   void Fl_Text_Editor.set_text_color(&self, uint n) @extern("Fl_Text_Editor_set_text_color");                    
 extern fn   void Fl_Text_Editor.scroll(&self, int topLineNum, int horizOffset) @extern("Fl_Text_Editor_scroll");           
 extern fn   void Fl_Text_Editor.insert(&self,  ZString text) @extern("Fl_Text_Editor_insert");                          
  extern fn  void Fl_Text_Editor.set_insert_position(&self, int newPos) @extern("Fl_Text_Editor_set_insert_position");                   
  extern fn  int Fl_Text_Editor.insert_position( &self) @extern("Fl_Text_Editor_insert_position");                              
   extern fn  int Fl_Text_Editor.position_to_xy( &self, int pos, int *x, int *y) @extern("Fl_Text_Editor_position_to_xy");  
   extern fn int Fl_Text_Editor.count_lines(                                                  
         &self, int start, int end, int start_pos_is_line_start        
    ) @extern("Fl_Text_Editor_count_lines");                                                                         
   extern fn int Fl_Text_Editor.move_right(&self) @extern("Fl_Text_Editor_move_right");                                         
   extern fn int Fl_Text_Editor.move_left(&self) @extern("Fl_Text_Editor_move_left");                                          
    extern fn int Fl_Text_Editor.move_up(&self) @extern("Fl_Text_Editor_move_up");                                            
    extern fn int Fl_Text_Editor.move_down(&self) @extern("Fl_Text_Editor_move_down");                                          
    extern fn void Fl_Text_Editor.show_cursor(&self, int boolean) @extern("Fl_Text_Editor_show_cursor");                          
    extern fn void Fl_Text_Editor.set_highlight_data(                                          
        &self,                                                          
        void *sbuff,                                                           
        uint *color,                                                   
        int *font,                                                             
        int *fontsz,                                                           
        uint *attr,                                                        
        uint *bgcolor,                                                 
        int sz                                                                 
    ) @extern("Fl_Text_Editor_set_highlight_data");                                                                         
    extern fn void Fl_Text_Editor.set_cursor_style(&self, int style) @extern("Fl_Text_Editor_set_cursor_style");                       
    extern fn void Fl_Text_Editor.set_cursor_color(&self, uint color) @extern("Fl_Text_Editor_set_cursor_color");              
    extern fn void Fl_Text_Editor.set_scrollbar_size(&self, int newSize) @extern("Fl_Text_Editor_set_scrollbar_size");                   
    extern fn void Fl_Text_Editor.set_scrollbar_align(&self, int align) @extern("Fl_Text_Editor_set_scrollbar_align");                    
    extern fn int Fl_Text_Editor.cursor_style(&self) @extern("Fl_Text_Editor_cursor_style");                                       
    extern fn uint Fl_Text_Editor.cursor_color(&self) @extern("Fl_Text_Editor_cursor_color");                              
    extern fn int Fl_Text_Editor.scrollbar_size(&self) @extern("Fl_Text_Editor_scrollbar_size");                                     
    extern fn int Fl_Text_Editor.scrollbar_align(&self) @extern("Fl_Text_Editor_scrollbar_align");                                    
    extern fn int Fl_Text_Editor.line_start( &self, int pos) @extern("Fl_Text_Editor_line_start");                      
    extern fn int Fl_Text_Editor.line_end(                                                     
         &self, int startPos, int startPosIsLineStart              
    ) @extern("Fl_Text_Editor_line_end");                                                                         
    extern fn int Fl_Text_Editor.skip_lines(                                                   
        &self, int startPos, int nLines, int startPosIsLineStart        
    ) @extern("Fl_Text_Editor_skip_lines");                                                                         
    extern fn int Fl_Text_Editor.rewind_lines(&self, int startPos, int nLines) @extern("Fl_Text_Editor_rewind_lines");         
    extern fn void Fl_Text_Editor.next_word(&self) @extern("Fl_Text_Editor_next_word");                                     
    extern fn void Fl_Text_Editor.previous_word(&self) @extern("Fl_Text_Editor_previous_word");                                 
    extern fn int Fl_Text_Editor.word_start( &self, int pos) @extern("Fl_Text_Editor_word_start");                      
    extern fn int Fl_Text_Editor.word_end( &self, int pos) @extern("Fl_Text_Editor_word_end");                        
    extern fn double Fl_Text_Editor.x_to_col( &self, double x) @extern("Fl_Text_Editor_x_to_col");                    
    extern fn double Fl_Text_Editor.col_to_x( &self, double col) @extern("Fl_Text_Editor_col_to_x");                  
    extern fn void Fl_Text_Editor.set_linenumber_width(&self, int width) @extern("Fl_Text_Editor_set_linenumber_width");               
    extern fn int Fl_Text_Editor.linenumber_width( &self) @extern("Fl_Text_Editor_linenumber_width");                         
    extern fn void Fl_Text_Editor.set_linenumber_font(&self, int val) @extern("Fl_Text_Editor_set_linenumber_font");                  
    extern fn int Fl_Text_Editor.linenumber_font( &self) @extern("Fl_Text_Editor_linenumber_font");                          
    extern fn void Fl_Text_Editor.set_linenumber_size(&self, int val) @extern("Fl_Text_Editor_set_linenumber_size");                  
    extern fn int Fl_Text_Editor.linenumber_size( &self) @extern("Fl_Text_Editor_linenumber_size");                          
    extern fn void Fl_Text_Editor.set_linenumber_fgcolor(&self, uint val) @extern("Fl_Text_Editor_set_linenumber_fgcolor");      
    extern fn uint Fl_Text_Editor.linenumber_fgcolor( &self) @extern("Fl_Text_Editor_linenumber_fgcolor");              
    extern fn void Fl_Text_Editor.set_linenumber_bgcolor(&self, uint val) @extern("Fl_Text_Editor_set_linenumber_bgcolor");      
    extern fn uint Fl_Text_Editor.linenumber_bgcolor( &self) @extern("Fl_Text_Editor_linenumber_bgcolor");              
    extern fn void Fl_Text_Editor.set_linenumber_align(&self, int val) @extern("Fl_Text_Editor_set_linenumber_align");                 
    extern fn int Fl_Text_Editor.linenumber_align( &self) @extern("Fl_Text_Editor_align");                         
    extern fn int Fl_Text_Editor.in_selection( &self, int x, int y) @extern("Fl_Text_Editor_in_selection");               
    extern fn void Fl_Text_Editor.wrap_mode(&self, int wrap, int wrap_margin) @extern("Fl_Text_Editor_wrap_mode");          
    extern fn int Fl_Text_Editor.wrapped_column( &self, int row, int column) @extern("Fl_Text_Editor_wrapped_column");      
    extern fn int Fl_Text_Editor.wrapped_row( &self, int row) @extern("Fl_Text_Editor_wrapped_row");                     
    extern fn void Fl_Text_Editor.set_grammar_underline_color(                                 
        &self, uint color                                       
    ) @extern("Fl_Text_Editor_set_grammar_underline_colo0r");                                                                         
    extern fn uint Fl_Text_Editor.grammar_underline_color( &self) @extern("Fl_Text_Editor_grammar_underline_color");         
    extern fn void Fl_Text_Editor.set_spelling_underline_color(                                
        &self,uint color                                       
    ) @extern("Fl_Text_Editor_set_spelling_underline_color");                                                                         
    extern fn uint Fl_Text_Editor.spelling_underline_color( &self);        
    extern fn void Fl_Text_Editor.set_secondary_selection_color(                               
        &self, uint color                                       
    ) @extern("Fl_Text_Editor_set_secondary_selection_color");                                                                         
    extern fn uint Fl_Text_Editor.secondary_selection_color( &self) @extern("Fl_Text_Editor_secondary_selection_color");       
    extern fn void Fl_Text_Editor.show_insert_position(&self) @extern("Fl_Text_Editor_show_insert_position");                          
    extern fn void Fl_Text_Editor.overstrike(&self,  ZString text) @extern("Fl_Text_Editor_overstrike");                  
    extern fn void Fl_Text_Editor.redisplay_range(&self, int start, int end) @extern("Fl_Text_Editor_redisplay_range");           
    extern fn void Fl_Text_Editor.set_linenumber_format(&self,  ZString val) @extern("Fl_Text_Editor_set_linenumber_format");        
     extern fn ZString Fl_Text_Editor.linenumber_format( &self) @extern("Fl_Text_Editor_linenumber_format");                
    extern fn int Fl_Text_Editor.position_style(                                               
         &self, int lineStartPos, int lineLen, int lineIndex       
    ) @extern("Fl_Text_Editor_position_style");                                                                         
    extern fn void Fl_Text_Editor.maintain_absolute_top_line_number(&self, int state) @extern("Fl_Text_Editor_maintain_absolute_top_line_number");  
    extern fn int Fl_Text_Editor.get_absolute_top_line_number( &self) @extern("Fl_Text_Editor_get_absolute_top_line_number");             
    extern fn void Fl_Text_Editor.absolute_top_line_number(&self, int oldFirstChar) @extern("Fl_Text_Editor_absolute_top_line_number");    
    extern fn int Fl_Text_Editor.maintaining_absolute_top_line_number( &self) @extern("Fl_Text_Editor_maintaining_absolute_top_line_number");     
    extern fn void Fl_Text_Editor.reset_absolute_top_line_number(&self) @extern("Fl_Text_Editor_reset_absolute_top_line_number");                
    extern fn int Fl_Text_Editor.scroll_row( &self) @extern("Fl_Text_Editor_scroll_row");                               
    extern fn int Fl_Text_Editor.scroll_col( &self) @extern("Fl_Text_Editor_scroll_col");                               
    extern fn int Fl_Text_Editor.xy_to_position(                                               
         &self, int x, int y, int posType                          
    ) @extern("Fl_Text_Editor_xy_to_position");                                                                         
    extern fn void Fl_Text_Editor.xy_to_rowcol(                                                
         &self, int x, int y, int *row, int *column, int posType   
    ) @extern("Fl_Text_Editor_xy_to_rowcol");


extern fn void Fl_Text_Editor.set_color(&self,int) @extern("Fl_Text_Editor_set_color");
extern fn void Fl_Text_Editor.set_selection_color(&self,uint) @extern("Fl_Text_Editor.set_selection_color");
extern fn void Fl_Text_Editor.set_label_color(&self,int) @extern("Fl_Text_Editor_set_label_color");
extern fn void Fl_Text_Editor.set_label(&self,ZString) @extern("Fl_Text_Editor_set_label");
extern fn int Fl_Text_Editor.height(&self) @extern("Fl_Text_Editor_height");
extern fn int Fl_Text_Editor.width(&self) @extern("Fl_Text_Editor_width");
extern fn int Fl_Text_Editor.x(&self) @extern("Fl_Text_Editor_x");
extern fn int Fl_Text_Editor.y(&self) @extern("Fl_Text_Editor_y");
extern fn void Fl_Text_Editor.resize(&self,int,int,int,int) @extern("Fl_Text_Editor_resize");
extern fn void Fl_Text_Editor.redraw(&self) @extern("Fl_Text_Editor_redraw");
extern fn void Fl_Text_Editor.set_icon(&self,void*) @extern("Fl_Text_Editor_set_icon");
extern fn void* Fl_Text_Editor.user_data(&self) @extern("Fl_Text_Editor_user_data");
extern fn void Fl_Text_Editor.set_user_data(&self,void*) @extern("Fl_Text_Editor_set_user_data");
extern fn void* Fl_Text_Editor.window(&self) @extern("Fl_Text_Editor_window");
//extern fn ZString Fl_Text_Editor.value(&self) @extern("Fl_Text_Editor_value");
extern fn ZString Fl_Text_Editor.label(&self) @extern("Fl_Text_Editor_label");
extern fn Fl_Group* Fl_Text_Editor.parent(&self) @extern("Fl_Text_Editor_parent");
extern fn void Fl_Text_Editor.delete(&self) @extern("Fl_Text_Editor_delete");
extern fn void Fl_Text_Editor.copy_label(&self,ZString) @extern("Fl_Text_Editor_copy_label");
extern fn void Fl_Text_Editor.set_type(&self,int) @extern("Fl_Text_Editor_set_type");
extern fn void Fl_Text_Editor.set_when(&self,int) @extern("Fl_Text_Editor_set_when");
extern fn int Fl_Text_Editor.when(&self) @extern("Fl_Text_Editor_when");
extern fn void Fl_Text_Editor.set_box(&self,int) @extern("Fl_Text_Editor_set_box");
//extern fn int Fl_Text_Editor.value(&self) @extern("Fl_Text_Editor_value");
extern fn void Fl_Text_Editor.set_image(&self,void*) @extern("Fl_Text_Editor_set_image");
extern fn void Fl_Text_Editor.set_callback(&self,CallbackVoid,void*) @extern("Fl_Text_Editor_set_callback");
extern fn void* Fl_Text_Editor.as_window(&self) @extern("Fl_Text_Editor_as_window");
extern fn int Fl_Text_Editor.handle_event(&self,int) @extern("Fl_Text_Editor_handle_event");
//extern fn int Fl_Text_Editor.x(&self) @extern("Fl_Text_Editor_x");
//extern fn int Fl_Text_Editor.y(&self) @extern("Fl_Text_Editor_y");
extern fn void Fl_Text_Editor.set_deletion_callback(&self,CallbackVoid,void*) @extern("Fl_Text_Editor_set_deletion_callback");
extern fn void Fl_Text_Editor.activate(&self) @extern("Fl_Text_Editor_activate");
extern fn void Fl_Text_Editor.deactivate(&self) @extern("Fl_Text_Editor_deactivate");
/*******************************************************************************/
extern fn void Fl_Text_Editor.set_tooltip(&self,ZString) @extern("Fl_Text_Editor_set_tooltip");
/*******************************************************************************/






struct Fl_Simple_Terminal{void* _data_;}

extern fn Fl_Simple_Terminal* simple_terminal_new(int,int,int,int,ZString) @extern("Fl_Simple_Terminal_new");
extern fn void Fl_Simple_Terminal.init(&self) @extern("Fl_Simple_Terminal_init");

extern fn void Fl_Simple_Terminal.set_buffer(&self,Fl_Text_Buffer*) @extern("Fl_Simple_Terminal_set_buffer");
extern fn Fl_Text_Buffer* Fl_Simple_Terminal.get_style_buffer(&self) @extern("Fl_Simple_Terminal_get_style_buffer");
extern fn void Fl_Simple_Terminal.set_stay_at_bottom(&self,int) @extern("Fl_Simple_Terminal_set_stay_at_bottom");
extern fn int Fl_Simple_Terminal.stay_at_bottom(&self) @extern("Fl_Simple_Terminal_stay_at_bottom");
extern fn void Fl_Simple_Terminal.set_history_lines(&self,int) @extern("Fl_Simple_Terminal_set_history_lines");
extern fn int Fl_Simple_Terminal.history_lines(&self) @extern("Fl_Simple_Terminal_history_lines");
extern fn int Fl_Simple_Terminal.set_ansi(&self,int) @extern("Fl_Simple_Terminal_set_ansi");
extern fn int Fl_Simple_Terminal.ansi(&self) @extern("Fl_Simple_Terminal_ansi");
extern fn void Fl_Simple_Terminal.append(&self,ZString) @extern("Fl_Simple_Terminal_append");
extern fn void Fl_Simple_Terminal.append2(&self,ZString,int) @extern("Fl_Simple_Terminal_append2");
extern fn void Fl_Simple_Terminal.set_text(&self,ZString) @extern("Fl_Simple_Terminal_set_Text");
extern fn void Fl_Simple_Terminal.set_text2(&self,ZString,int) @extern("Fl_Simple_Terminal_set_text2");
extern fn ZString Fl_Simple_Terminal.text(&self) @extern("Fl_Simple_Terminal_text");
extern fn void Fl_Simple_Terminal.clear(&self) @extern("Fl_Simple_Terminal_clear");
extern fn void Fl_Simple_Terminal.remove_lines(&self,int,int) @extern("Fl_Simple_Terminal_remove_lines");


extern fn int Fl_Simple_Terminal.text_font( &self) @extern("Fl_Simple_Terminal_text_font");                                    
extern fn     void Fl_Simple_Terminal.set_text_font(&self, int s) @extern("Fl_Simple_Terminal_set_text_font");                              
 extern fn    int Fl_Simple_Terminal.text_size( &self) @extern("Fl_Simple_Terminal_text_size");                                    
 extern  fn void Fl_Simple_Terminal.set_text_size(&self, int s) @extern("Fl_Simple_Terminal_set_text_size");                              
 extern fn uint Fl_Simple_Terminal.text_color( &self) @extern("Fl_Simple_Terminal_text_color");                          
 extern fn   void Fl_Simple_Terminal.set_text_color(&self, uint n) @extern("Fl_Simple_Terminal_set_text_color");                    
 extern fn   void Fl_Simple_Terminal.scroll(&self, int topLineNum, int horizOffset) @extern("Fl_Simple_Terminal_scroll");           
 extern fn   void Fl_Simple_Terminal.insert(&self,  ZString text) @extern("Fl_Simple_Terminal_insert");                          
  extern fn  void Fl_Simple_Terminal.set_insert_position(&self, int newPos) @extern("Fl_Simple_Terminal_set_insert_position");                   
  extern fn  int Fl_Simple_Terminal.insert_position( &self) @extern("Fl_Simple_Terminal_insert_position");                              
   extern fn  int Fl_Simple_Terminal.position_to_xy( &self, int pos, int *x, int *y) @extern("Fl_Simple_Terminal_position_to_xy");  
   extern fn int Fl_Simple_Terminal.count_lines(                                                  
         &self, int start, int end, int start_pos_is_line_start        
    ) @extern("Fl_Simple_Terminal_count_lines");                                                                         
   extern fn int Fl_Simple_Terminal.move_right(&self) @extern("Fl_Simple_Terminal_move_right");                                         
   extern fn int Fl_Simple_Terminal.move_left(&self) @extern("Fl_Simple_Terminal_move_left");                                          
    extern fn int Fl_Simple_Terminal.move_up(&self) @extern("Fl_Simple_Terminal_move_up");                                            
    extern fn int Fl_Simple_Terminal.move_down(&self) @extern("Fl_Simple_Terminal_move_down");                                          
    extern fn void Fl_Simple_Terminal.show_cursor(&self, int boolean) @extern("Fl_Simple_Terminal_show_cursor");                          
    extern fn void Fl_Simple_Terminal.set_highlight_data(                                          
        &self,                                                          
        void *sbuff,                                                           
        uint *color,                                                   
        int *font,                                                             
        int *fontsz,                                                           
        uint *attr,                                                        
        uint *bgcolor,                                                 
        int sz                                                                 
    ) @extern("Fl_Simple_Terminal_set_highlight_data");                                                                         
    extern fn void Fl_Simple_Terminal.set_cursor_style(&self, int style) @extern("Fl_Simple_Terminal_set_cursor_style");                       
    extern fn void Fl_Simple_Terminal.set_cursor_color(&self, uint color) @extern("Fl_Simple_Terminal_set_cursor_color");              
    extern fn void Fl_Simple_Terminal.set_scrollbar_size(&self, int newSize) @extern("Fl_Simple_Terminal_set_scrollbar_size");                   
    extern fn void Fl_Simple_Terminal.set_scrollbar_align(&self, int align) @extern("Fl_Simple_Terminal_set_scrollbar_align");                    
    extern fn int Fl_Simple_Terminal.cursor_style(&self) @extern("Fl_Simple_Terminal_cursor_style");                                       
    extern fn uint Fl_Simple_Terminal.cursor_color(&self) @extern("Fl_Simple_Terminal_cursor_color");                              
    extern fn int Fl_Simple_Terminal.scrollbar_size(&self) @extern("Fl_Simple_Terminal_scrollbar_size");                                     
    extern fn int Fl_Simple_Terminal.scrollbar_align(&self) @extern("Fl_Simple_Terminal_scrollbar_align");                                    
    extern fn int Fl_Simple_Terminal.line_start( &self, int pos) @extern("Fl_Simple_Terminal_line_start");                      
    extern fn int Fl_Simple_Terminal.line_end(                                                     
         &self, int startPos, int startPosIsLineStart              
    ) @extern("Fl_Simple_Terminal_line_end");                                                                         
    extern fn int Fl_Simple_Terminal.skip_lines(                                                   
        &self, int startPos, int nLines, int startPosIsLineStart        
    ) @extern("Fl_Simple_Terminal_skip_lines");                                                                         
    extern fn int Fl_Simple_Terminal.rewind_lines(&self, int startPos, int nLines) @extern("Fl_Simple_Terminal_rewind_lines");         
    extern fn void Fl_Simple_Terminal.next_word(&self) @extern("Fl_Simple_Terminal_next_word");                                     
    extern fn void Fl_Simple_Terminal.previous_word(&self) @extern("Fl_Simple_Terminal_previous_word");                                 
    extern fn int Fl_Simple_Terminal.word_start( &self, int pos) @extern("Fl_Simple_Terminal_word_start");                      
    extern fn int Fl_Simple_Terminal.word_end( &self, int pos) @extern("Fl_Simple_Terminal_word_end");                        
    extern fn double Fl_Simple_Terminal.x_to_col( &self, double x) @extern("Fl_Simple_Terminal_x_to_col");                    
    extern fn double Fl_Simple_Terminal.col_to_x( &self, double col) @extern("Fl_Simple_Terminal_col_to_x");                  
    extern fn void Fl_Simple_Terminal.set_linenumber_width(&self, int width) @extern("Fl_Simple_Terminal_set_linenumber_width");               
    extern fn int Fl_Simple_Terminal.linenumber_width( &self) @extern("Fl_Simple_Terminal_linenumber_width");                         
    extern fn void Fl_Simple_Terminal.set_linenumber_font(&self, int val) @extern("Fl_Simple_Terminal_set_linenumber_font");                  
    extern fn int Fl_Simple_Terminal.linenumber_font( &self) @extern("Fl_Simple_Terminal_linenumber_font");                          
    extern fn void Fl_Simple_Terminal.set_linenumber_size(&self, int val) @extern("Fl_Simple_Terminal_set_linenumber_size");                  
    extern fn int Fl_Simple_Terminal.linenumber_size( &self) @extern("Fl_Simple_Terminal_linenumber_size");                          
    extern fn void Fl_Simple_Terminal.set_linenumber_fgcolor(&self, uint val) @extern("Fl_Simple_Terminal_set_linenumber_fgcolor");      
    extern fn uint Fl_Simple_Terminal.linenumber_fgcolor( &self) @extern("Fl_Simple_Terminal_linenumber_fgcolor");              
    extern fn void Fl_Simple_Terminal.set_linenumber_bgcolor(&self, uint val) @extern("Fl_Simple_Terminal_set_linenumber_bgcolor");      
    extern fn uint Fl_Simple_Terminal.linenumber_bgcolor( &self) @extern("Fl_Simple_Terminal_linenumber_bgcolor");              
    extern fn void Fl_Simple_Terminal.set_linenumber_align(&self, int val) @extern("Fl_Simple_Terminal_set_linenumber_align");                 
    extern fn int Fl_Simple_Terminal.linenumber_align( &self) @extern("Fl_Simple_Terminal_align");                         
    extern fn int Fl_Simple_Terminal.in_selection( &self, int x, int y) @extern("Fl_Simple_Terminal_in_selection");               
    extern fn void Fl_Simple_Terminal.wrap_mode(&self, int wrap, int wrap_margin) @extern("Fl_Simple_Terminal_wrap_mode");          
    extern fn int Fl_Simple_Terminal.wrapped_column( &self, int row, int column) @extern("Fl_Simple_Terminal_wrapped_column");      
    extern fn int Fl_Simple_Terminal.wrapped_row( &self, int row) @extern("Fl_Simple_Terminal_wrapped_row");                     
    extern fn void Fl_Simple_Terminal.set_grammar_underline_color(                                 
        &self, uint color                                       
    ) @extern("Fl_Simple_Terminal_set_grammar_underline_colo0r");                                                                         
    extern fn uint Fl_Simple_Terminal.grammar_underline_color( &self) @extern("Fl_Simple_Terminal_grammar_underline_color");         
    extern fn void Fl_Simple_Terminal.set_spelling_underline_color(                                
        &self,uint color                                       
    ) @extern("Fl_Simple_Terminal_set_spelling_underline_color");                                                                         
    extern fn uint Fl_Simple_Terminal.spelling_underline_color( &self);        
    extern fn void Fl_Simple_Terminal.set_secondary_selection_color(                               
        &self, uint color                                       
    ) @extern("Fl_Simple_Terminal_set_secondary_selection_color");                                                                         
    extern fn uint Fl_Simple_Terminal.secondary_selection_color( &self) @extern("Fl_Simple_Terminal_secondary_selection_color");       
    extern fn void Fl_Simple_Terminal.show_insert_position(&self) @extern("Fl_Simple_Terminal_show_insert_position");                          
    extern fn void Fl_Simple_Terminal.overstrike(&self,  ZString text) @extern("Fl_Simple_Terminal_overstrike");                  
    extern fn void Fl_Simple_Terminal.redisplay_range(&self, int start, int end) @extern("Fl_Simple_Terminal_redisplay_range");           
    extern fn void Fl_Simple_Terminal.set_linenumber_format(&self,  ZString val) @extern("Fl_Simple_Terminal_set_linenumber_format");        
     extern fn ZString Fl_Simple_Terminal.linenumber_format( &self) @extern("Fl_Simple_Terminal_linenumber_format");                
    extern fn int Fl_Simple_Terminal.position_style(                                               
         &self, int lineStartPos, int lineLen, int lineIndex       
    ) @extern("Fl_Simple_Terminal_position_style");                                                                         
    extern fn void Fl_Simple_Terminal.maintain_absolute_top_line_number(&self, int state) @extern("Fl_Simple_Terminal_maintain_absolute_top_line_number");  
    extern fn int Fl_Simple_Terminal.get_absolute_top_line_number( &self) @extern("Fl_Simple_Terminal_get_absolute_top_line_number");             
    extern fn void Fl_Simple_Terminal.absolute_top_line_number(&self, int oldFirstChar) @extern("Fl_Simple_Terminal_absolute_top_line_number");    
    extern fn int Fl_Simple_Terminal.maintaining_absolute_top_line_number( &self) @extern("Fl_Simple_Terminal_maintaining_absolute_top_line_number");     
    extern fn void Fl_Simple_Terminal.reset_absolute_top_line_number(&self) @extern("Fl_Simple_Terminal_reset_absolute_top_line_number");                
    extern fn int Fl_Simple_Terminal.scroll_row( &self) @extern("Fl_Simple_Terminal_scroll_row");                               
    extern fn int Fl_Simple_Terminal.scroll_col( &self) @extern("Fl_Simple_Terminal_scroll_col");                               
    extern fn int Fl_Simple_Terminal.xy_to_position(                                               
         &self, int x, int y, int posType                          
    ) @extern("Fl_Simple_Terminal_xy_to_position");                                                                         
    extern fn void Fl_Simple_Terminal.xy_to_rowcol(                                                
         &self, int x, int y, int *row, int *column, int posType   
    ) @extern("Fl_Simple_Terminal_xy_to_rowcol");


extern fn void Fl_Simple_Terminal.set_color(&self,int) @extern("Fl_Simple_Terminal_set_color");
extern fn void Fl_Simple_Terminal.set_selection_color(&self,uint) @extern("Fl_Simple_Terminal.set_selection_color");
extern fn void Fl_Simple_Terminal.set_label_color(&self,int) @extern("Fl_Simple_Terminal_set_label_color");
extern fn void Fl_Simple_Terminal.set_label(&self,ZString) @extern("Fl_Simple_Terminal_set_label");
extern fn int Fl_Simple_Terminal.height(&self) @extern("Fl_Simple_Terminal_height");
extern fn int Fl_Simple_Terminal.width(&self) @extern("Fl_Simple_Terminal_width");
extern fn int Fl_Simple_Terminal.x(&self) @extern("Fl_Simple_Terminal_x");
extern fn int Fl_Simple_Terminal.y(&self) @extern("Fl_Simple_Terminal_y");
extern fn void Fl_Simple_Terminal.resize(&self,int,int,int,int) @extern("Fl_Simple_Terminal_resize");
extern fn void Fl_Simple_Terminal.redraw(&self) @extern("Fl_Simple_Terminal_redraw");
extern fn void Fl_Simple_Terminal.set_icon(&self,void*) @extern("Fl_Simple_Terminal_set_icon");
extern fn void* Fl_Simple_Terminal.user_data(&self) @extern("Fl_Simple_Terminal_user_data");
extern fn void Fl_Simple_Terminal.set_user_data(&self,void*) @extern("Fl_Simple_Terminal_set_user_data");
extern fn void* Fl_Simple_Terminal.window(&self) @extern("Fl_Simple_Terminal_window");
//extern fn ZString Fl_Simple_Terminal.value(&self) @extern("Fl_Simple_Terminal_value");
extern fn ZString Fl_Simple_Terminal.label(&self) @extern("Fl_Simple_Terminal_label");
extern fn Fl_Group* Fl_Simple_Terminal.parent(&self) @extern("Fl_Simple_Terminal_parent");
extern fn void Fl_Simple_Terminal.delete(&self) @extern("Fl_Simple_Terminal_delete");
extern fn void Fl_Simple_Terminal.copy_label(&self,ZString) @extern("Fl_Simple_Terminal_copy_label");
extern fn void Fl_Simple_Terminal.set_type(&self,int) @extern("Fl_Simple_Terminal_set_type");
extern fn void Fl_Simple_Terminal.set_when(&self,int) @extern("Fl_Simple_Terminal_set_when");
extern fn int Fl_Simple_Terminal.when(&self) @extern("Fl_Simple_Terminal_when");
extern fn void Fl_Simple_Terminal.set_box(&self,int) @extern("Fl_Simple_Terminal_set_box");
//extern fn int Fl_Simple_Terminal.value(&self) @extern("Fl_Simple_Terminal_value");
extern fn void Fl_Simple_Terminal.set_image(&self,void*) @extern("Fl_Simple_Terminal_set_image");
extern fn void Fl_Simple_Terminal.set_callback(&self,CallbackVoid,void*) @extern("Fl_Simple_Terminal_set_callback");
extern fn void* Fl_Simple_Terminal.as_window(&self) @extern("Fl_Simple_Terminal_as_window");
extern fn int Fl_Simple_Terminal.handle_event(&self,int) @extern("Fl_Simple_Terminal_handle_event");
//extern fn int Fl_Simple_Terminal.x(&self) @extern("Fl_Simple_Terminal_x");
//extern fn int Fl_Simple_Terminal.y(&self) @extern("Fl_Simple_Terminal_y");
extern fn void Fl_Simple_Terminal.set_deletion_callback(&self,CallbackVoid,void*) @extern("Fl_Simple_Terminal_set_deletion_callback");
extern fn void Fl_Simple_Terminal.activate(&self) @extern("Fl_Simple_Terminal_activate");
extern fn void Fl_Simple_Terminal.deactivate(&self) @extern("Fl_Simple_Terminal_deactivate");
/*******************************************************************************/
extern fn void Fl_Simple_Terminal.set_tooltip(&self,ZString) @extern("Fl_Simple_Terminal_set_tooltip");
/*******************************************************************************/



