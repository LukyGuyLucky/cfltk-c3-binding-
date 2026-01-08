import fl;

fn void main()
{
	fl::register_images();
	Fl_Pixmap* wx_sample=fl::pixmap_new(WX_SAMPLE_XPM);
	Fl_Pixmap* gradient=fl::pixmap_new(GRADIENT_XPM);
	Fl_Window* win=fl::window_new(100,100,167,75,"test");
		Fl_Button* but1=fl::button_new(10,10,140,25,"Button 1");
		but1.set_image(gradient);
		but1.set_align(Fl_Align.FL_ALIGN_IMAGEBACKDROP|but1.align());

		Fl_Button* but2=fl::button_new(10,40,140,25,"Button 2");
		but2.set_image(wx_sample);
		but2.set_align(Fl_Align.FL_ALIGN_IMAGEBACKDROP|but2.align());

	win.end();
	win.show();

	fl::run();
}




const char *[] WX_SAMPLE_XPM = {
"32 32 10 1",
" 	c None",
".	c #2020FF",
"+	c #8080FF",
"@	c #C0C0FF",
"#	c #FFFF00",
"$	c #FFFF80",
"%	c #FF2020",
"&	c #FF4848",
"*	c #FFFFDF",
"=	c #FFC0C0",
"                                ",
"                                ",
"                                ",
"                                ",
"                                ",
"        ..............          ",
"        .++++++++++++.          ",
"        .++++++++++++.          ",
"        .+@@+++++++++.          ",
"        .+@@+++++++++.          ",
"        .+@@+++++++++.          ",
"        .+@@++++++##############",
"        .+@@++++++#$$$$$$$$$$$$#",
"%%%%%%%%.+@@++++++#$$$$$$$$$$$$#",
"%&&&&&&&.+@@++++++#$**$$$$$$$$$#",
"%&&&&&&&.+@@++++++#$**$$$$$$$$$#",
"%&==&&&&.+++++++++#$**$$$$$$$$$#",
"%&==&&&&.+++++++++#$**$$$$$$$$$#",
"%&==&&&&..........#$**$$$$$$$$$#",
"%&==&&&&&&&&&%    #$**$$$$$$$$$#",
"%&==&&&&&&&&&%    #$**$$$$$$$$$#",
"%&==&&&&&&&&&%    #$**$$$$$$$$$#",
"%&==&&&&&&&&&%    #$$$$$$$$$$$$#",
"%&==&&&&&&&&&%    #$$$$$$$$$$$$#",
"%&&&&&&&&&&&&%    ##############",
"%&&&&&&&&&&&&%                  ",
"%%%%%%%%%%%%%%                  ",
"                                ",
"                                ",
"                                ",
"                                ",
"                                "
};







const char*[] GRADIENT_XPM=
{
	"135 20 26 1",
	"a      c #e0e0e0", "b  c #dcdcdc", "c  c #d8d8d8", "d  c #d4d4d4", "e  c #d2d2d2",
	"f      c #d0d0d0", "g  c #cccccc", "h  c #c8c8c8", "i  c #c4c4c4", "j  c #c2c2c2",
	"k      c #c0c0c0", "l  c #bcbcbc", "m  c #b8b8b8", "n  c #b4b4b4", "o  c #b2b2b2",
	"p      c #b0b0b0", "q  c #acacac", "r  c #a8a8a8", "s  c #a4a4a4", "t  c #a2a2a2",
	"u      c #a0a0a0", "v  c #9c9c9c", "w  c #989898", "x  c #949494", "y  c #929292",
	"z      c #909090",
	"aaaaaaaaabbbbbbbbcccccccddddddeeeeeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrssss",
	"aaaaaabbbbbbbbcccccccddddddeeeeeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssst",
	"aaabbbbbbbbcccccccddddddeeeeeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssstt",
	"bbbbbbbbcccccccddddddeeeeeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrssssssssstttt",
	"bbbbbcccccccddddddeeeeeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttu",
	"bbcccccccddddddeeeeeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuu",
	"ccccccddddddeeeeeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuu",
	"cccddddddeeeeeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvv",
	"ddddddeeeeeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvv",
	"dddeeeeeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvvvvw",
	"eeeeeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvvvvwwww",
	"eeefffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvvvvwwwwwww",
	"fffffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvvvvwwwwwwwwxx",
	"ffffgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvvvvwwwwwwwwxxxxx",
	"fgggggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvvvvwwwwwwwwxxxxxxyy",
	"gggggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvvvvwwwwwwwwxxxxxxyyyyy",
	"ggghhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvvvvwwwwwwwwxxxxxxyyyyyyyy",
	"hhhhhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvvvvwwwwwwwwxxxxxxyyyyyyyyzzz",
	"hhhhiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvvvvwwwwwwwwxxxxxxyyyyyyyyzzzzzz",
	"hiiiiiiijjjjjjjkkkkkkkklllllllmmmmmmmnnnnnnnnnoooooooppppppppqqqqqqrrrrrrrsssssssssttttttuuuuuuuuvvvvvvvwwwwwwwwxxxxxxyyyyyyyyzzzzzzzzz"
};