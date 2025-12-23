import fl;
import libc;

Fl_Window* win;
Fl_Wizard* wiz;

fn void main()
{
    win=fl::window_new(100,100,400,300,"wizard-simple-012");
        wiz=fl::wizard_new(0,0,400,300);
            Fl_Group* group1=fl::group_new(100,100,400,300,null);   
                Fl_Button* next1=fl::button_new(290,265,100,25,"Next @->");
                Callback cb1=&next_cb;
                next1.set_callback(cb1,null);
                Fl_Multiline_Output* out1=fl::multiline_output_new(10,30,400-20,300-80,"Welcome");
                out1.set_label_size(20);
                out1.set_align(Fl_Align.FL_ALIGN_TOP|Fl_Align.FL_ALIGN_LEFT);
                out1.set_value("This is the first page");
            group1.end();

            Fl_Group* group2=fl::group_new(100,100,400,300,null);
                Fl_Button* next2=fl::button_new(290,265,100,25,"Next @->");
                next2.set_callback(cb1,null);
                Fl_Button* back1=fl::button_new(180,265,100,25,"@<- Back");
                Callback cb2=&back_cb;
                back1.set_callback(cb2,null);
                Fl_Multiline_Output* out2=fl::multiline_output_new(10,30,400-20,300-80,"Terms And Conditions");
                out2.set_label_size(20);
                out2.set_align(Fl_Align.FL_ALIGN_TOP|Fl_Align.FL_ALIGN_LEFT);
                out2.set_value("This is the second page");
            group2.end();
            
            Fl_Group* group3=fl::group_new(100,100,400,300,null);
                Fl_Button* done=fl::button_new(290,265,100,25,"Finish");
                Callback cb3=&done_cb;
                done.set_callback(cb3,null);
                Fl_Button* back=fl::button_new(180,265,100,25,"@<- Back");
                back.set_callback(cb2,null);
                Fl_Multiline_Output* out3=fl::multiline_output_new(10,30,400-20,300-80,"Finish");
                out3.set_label_size(20);
                out3.set_align(Fl_Align.FL_ALIGN_TOP|Fl_Align.FL_ALIGN_LEFT);
                out3.set_value("This is the last page");
            group3.end();

        wiz.end();
    win.end();
    win.show();

    fl::run();

}
fn void back_cb(Fl_Widget* w,void* data)
{
    wiz.prev();
}
fn void next_cb(Fl_Widget* w,void* data)
{
    wiz.next();
}
fn void done_cb(Fl_Widget* w,void* data)
{
    libc::exit(0);
}
