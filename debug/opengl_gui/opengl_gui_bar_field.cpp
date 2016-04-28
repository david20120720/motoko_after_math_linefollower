#include "opengl_gui_bar_field.h"

COpenGLGuiBarField::COpenGLGuiBarField(struct sOpenGLGuiBarFieldParams params, struct sOpenGLGuiBarFieldData *data):COpenGLGuiItem(0, NULL)
{
  this->params = params;
  this->data = data;
}

COpenGLGuiBarField::~COpenGLGuiBarField()
{


}


void COpenGLGuiBarField::process()
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

  u32 j;

  float k = params.height/(params.max_value - params.min_value);
  float q = params.height - k*params.max_value;

  float x_step = params.width/data->values.size();

  for (j = 0; j < data->values.size(); j++)
  {
    float x = params.px - params.width/2.0 + x_step*(j+0.5);
    float y = params.py;

    float height = (k*data->values[j] + q);
    float width = x_step*0.85;

    glColor3f(params.bar_color_r, params.bar_color_g, params.bar_color_b);
    glBegin(GL_QUADS);

    glVertex3f(x - width/2.0 , y - params.height/2.0 + height, params.pz);
    glVertex3f(x + width/2.0 , y - params.height/2.0 + height, params.pz);
    glVertex3f(x + width/2.0 , y - params.height/2.0, params.pz);
    glVertex3f(x - width/2.0 , y - params.height/2.0, params.pz);

    glEnd();

    char str[1024];
    sprintf(str, "%6.3f", data->values[j]);
    gl_print(x - (x_step/2.0)*0.75, y - params.height/2.0,
              1.0,
              1.0,
              1.0,
              params.font,
              (char*)str);
  }
}
