import fl;

fn void main()
{
	Fl_Window* win=fl::window_new(100,100,640,480,"Simple Text Display With Colors");
		Fl_Text_Display* disp=fl::text_display_new(20,20,640-40,480-40,null);
		Fl_Text_Buffer* tbuff=fl::text_buffer_new();
		Fl_Text_Buffer* sbuffer=fl::text_buffer_new();

		disp.set_buffer(tbuff);
		disp.set_color(Fl_Color.FL_COLOR_DARK1);
		disp.set_text_font(Fl_Font.FL_FONT_HELVETICABOLDITALIC);
		disp.set_text_color(Fl_Color.FL_COLOR_DARKGREEN);
		disp.set_selection_color(Fl_Color.FL_COLOR_CYAN);
		disp.set_text_size(18);
	/*
		disp.set_highlight_data(sbuffer,//void* data,
								(uint*)&&(uint[]){Fl_Color.FL_COLOR_RED,
											   Fl_Color.FL_COLOR_YELLOW,
											   Fl_Color.FL_COLOR_GREEN,
											   Fl_Color.FL_COLOR_BLUE},//uint* color,
								(int*)&&(int[]){Fl_Font.FL_FONT_COURIER,
											  Fl_Font.FL_FONT_COURIER,
											  Fl_Font.FL_FONT_COURIER,
											  Fl_Font.FL_FONT_COURIER},//int* font,
								(int*)&&(int[]){18,18,18,18},//int* fontsize,
								(uint*)&&(uint[]){'A','A','A','A'},//uint* attr,
								null,//uint* bgcolor,
								0);//int size);
	*/
		tbuff.set_text("line 0\nline 1\nline 2\n"
                "line 3\nline 4\nline 5\n"
                "line 6\nline 7\nline 8\n"
                "line 9\nline 10\nline 11\n"
                "line 12\nline 13\nline 14\n"
                "line 15\nline 16\nline 17\n"
                "line 18\nline 19\nline 20\n"
                "line 21\nline 22\nline 23\n"
                "Hello, world!\n"
                "¡Hola Mundo!\n"
                "Γειά σου Κόσμε!\n"
                "Привет, мир!\n"
                "こんにちは世界\n"
                "你好世界\n"
                "नमस्ते दुनिया!\n"
                "👋🌎!");
		sbuffer.set_text("AAAAAAAAAAAAA\nBBBBBBBBB\nCCCCCCCCC\nDDDDDDDDDDD"
						"AAAAAAAAAA\nBBBBBBBBBBBBB\nCCCCCCCCCCC\nDDDDDDDDDDD\n");
	win.resizable(disp);
	win.show();

	fl::run();

}