import fl;
import libc;

extern fn void glBegin(int) @extern("glBegin");
extern fn void glEnd() @extern("glEnd");
extern fn void  glVertex3f (float,float,float) @extern("glVertex3f");
extern fn void glColor3f(float,float,float) @extern("glColor3f");

const GL_QUADS=0x0007;

fn void main()
{
    fl::init_all();
    
    Fl_Gl_Window* win=fl::gl_window_new(100,100,500,500,"fl_gl01");
    win.begin();

        Fl_Button* btn=fl::button_new(10,10,120,34,"Draw");
        btn.set_box(Fl_BoxType.FL_BOXTYPE_BORDERBOX);
        btn.set_color(Fl_Color.FL_COLOR_MAGENTA);
        btn.set_callback(&click_cb,win);
    win.show();

    fl::run();
}
fn void draw_cube()
{
    glBegin(GL_QUADS); 
       glColor3f(1, 0, 0); // Front face
        glVertex3f(-1, 1, 1);
        glVertex3f(-1, -1, 1);
        glVertex3f(1, -1, 1);
        glVertex3f(1, 1, 1);

        glColor3f(0, 1, 0); // Back face
        glVertex3f(-1, 1, -1);
        glVertex3f(1, 1, -1);
        glVertex3f(1, -1, -1);
        glVertex3f(-1, -1, -1);

        glColor3f(1.0, 0.0, 0.0); 
        glVertex3f(-0.5, -0.5, 0.0); 
        glColor3f(0.0, 1.0, 0.0); 
        glVertex3f(0.5, -0.5, 0.0); 
        glColor3f(0.0, 0.0, 1.0); 
        glVertex3f(0.5, 0.5, 0.0); 
        glColor3f(1.0, 1.0, 1.0); 
        glVertex3f(-0.5, 0.5, 0.0); 
    glEnd(); 
}
fn void click_cb(Fl_Widget* obj,void* data)
{
    Fl_Gl_Window* win=(Fl_Gl_Window*)data;
    win.make_current();
    win.draw(&draw_cb,null);
}
fn void draw_cb(Fl_Widget* obj,void* data)
{
    Fl_Gl_Window* win=(Fl_Gl_Window*)obj;
    win.make_current();
    win.set_mode(Fl_Mode.FL_MODE_OPENGL3);
    draw_cube();
    //win.flush();
    //win.super_draw(1);
    //win.redraw();
}
