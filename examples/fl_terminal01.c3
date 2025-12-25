import fl;
import libc;

const TERMINAL_HEIGHT =120;

// Globals
Fl_Double_Window   *g_win = null;
Fl_Box             *g_box = null;
Fl_Terminal        *g_tty = null;

// Append a date/time message to the terminal every 2 seconds
fn void tick_cb(Fl_Terminal* obj,void *data) {
  Time_t lt = libc::time(null);
  g_tty.printf("नमस्ते दुनिया!👋🌎!Timer tick: \e[32m%s\e[0m\n", libc::ctime(&lt));
  fl::repeat_timeout(2.0, &tick_cb, data);
}

fn void main() {
  g_win = fl::double_window_new(100,100,500, 200+TERMINAL_HEIGHT, "Your App");
  g_win.begin();

    g_box = fl::box_new(0, 0, g_win.width(), 200,
                       "Your app GUI in this area.नमस्ते दुनिया!👋🌎!\n\n"
                       "Your app's debugging output in tty below");

    // Add simple terminal to bottom of app window for scrolling history of status messages.
    g_tty = fl::terminal_new(0,200,g_win.width(),TERMINAL_HEIGHT,null);
    //g_tty.set_ansi(1);  // enable use of "\033[32m"

  g_win.end();
  g_win.resizable(g_win);
  g_win.show();
  fl::add_timeout(0.5, &tick_cb,null);

  fl::run();
}
fn void init() @init
{
    libc::system("color 0F");
}