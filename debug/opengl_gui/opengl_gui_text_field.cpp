#include "opengl_gui_text_field.h"




COpenGLGuiTextField::COpenGLGuiTextField(struct sOpenGLGuiTextFieldParams params, struct sOpenGLGuiTextFieldData *data):COpenGLGuiItem(0, NULL)
{
  this->params = params;
  this->data = data;
}

COpenGLGuiTextField::~COpenGLGuiTextField()
{


}


void COpenGLGuiTextField::process()
{
  struct sFrame frame;

  frame.px = params.px;
  frame.py = params.py;
  frame.pz = params.pz;

  frame.width = params.width;
  frame.height = params.height;

  frame.frame_color_r = params.frame_color_r;
  frame.frame_color_g = params.frame_color_g;
  frame.frame_color_b = params.frame_color_b;

  frame.font_color_r = params.label_color_r;
  frame.font_color_g = params.label_color_g;
  frame.font_color_b = params.label_color_b;
  frame.label = params.frame_label;

  frame.font = params.label_font;
  frame.transparent = params.transparent;

  plot_frame(frame);


  float x0 = frame.px - frame.width/2.0  + 0.25*FRAME_HEIGHT/2.0;
  float y0 = frame.py + frame.height/2.0 - 1.8*FRAME_WIDHT;

  u32 j;

  for (j = 0; j < data->lines.size(); j++)
    {
      float x = x0;
      float y = y0 - j*0.03;


      gl_print(x, y,
                params.font_color_r,
                params.font_color_g,
                params.font_color_b,
                params.font,
                (char*)data->lines[j].c_str());
    }

}
