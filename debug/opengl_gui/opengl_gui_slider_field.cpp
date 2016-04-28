#include "opengl_gui_slider_field.h"



COpenGLGuiSliderField::COpenGLGuiSliderField(struct sOpenGLGuiSliderFieldParams params, struct sOpenGLGuiSliderFieldData *data):COpenGLGuiItem(0, NULL)
{
  this->params = params;
  this->data = data;

  mouse_x = 100.0;
  mouse_y = 100.0;
  mouse_state = 0;

}

COpenGLGuiSliderField::~COpenGLGuiSliderField()
{


}


void COpenGLGuiSliderField::process()
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

  frame.font_color_r = params.font_color_r;
  frame.font_color_g = params.font_color_g;
  frame.font_color_b = params.font_color_b;
  frame.label = params.frame_label;

  frame.font = params.label_font;
  frame.transparent = params.transparent;

  plot_frame(frame);

  u32 j;


  float x, y;
  for (j = 0; j < data->sliders.size(); j++)
  {
    bool clicked = false;
    x = params.px - 0.99*params.width/2.0;
    y = params.py + params.height/2.0 - 0.03 - (params.height*j)/data->sliders.size();

    gl_print(x, y,
              params.font_color_r,
              params.font_color_g,
              params.font_color_b,
              params.font,
              (char*)data->sliders[j].label.c_str());

    char value[256];

    x = params.px - 0.7*params.width/2.0;
    sprintf(value, "%6.3f",data->sliders[j].value);
    gl_print(x, y,
              params.font_color_r,
              params.font_color_g,
              params.font_color_b,
              params.font,
              value);

    glColor3f(params.color_r*0.3, params.color_g*0.3, params.color_b*0.3);

    x = params.px - 0.4*params.width/2.0;
    y = params.py + params.height/2.0 - 0.02 - (params.height*j)/data->sliders.size();


    float slider_width = params.width*0.68;
    float slider_height = 0.02;


    float k = (slider_width - 0.0)/(params.max_value - params.min_value);
    float q = slider_width - k*params.max_value;


    glBegin(GL_QUADS);
    glVertex3f(x - 0.0 , y - slider_height/2.0, params.pz);
    glVertex3f(x + slider_width, y - slider_height/2.0, params.pz);
    glVertex3f(x + slider_width, y + slider_height/2.0, params.pz);
    glVertex3f(x - 0.0 , y + slider_height/2.0, params.pz);
    glEnd();


    if (mouse_state &&
        (mouse_x > (x - params.px)) && (mouse_x < (x+slider_width- params.px)) &&
        (mouse_y > (y-slider_height/2.0 - params.py)) && (mouse_y < (y+slider_height/2.0- params.py))
       )
    {
      clicked = true;
    }


    if (clicked == true)
    {
      float k = (params.max_value - params.min_value) / ( (x+slider_width- params.px) - (x - params.px));
      float q = params.max_value - k*(x+slider_width- params.px);

      data->sliders[j].value = mouse_x*k + q;

      if (data->sliders[j].value < params.min_value)
        data->sliders[j].value = params.min_value;

      if (data->sliders[j].value > params.max_value)
        data->sliders[j].value = params.max_value;
    }


    float slider_active_width = k*data->sliders[j].value + q;

    glColor3f(params.color_r, params.color_g, params.color_b);

    glBegin(GL_QUADS);
    glVertex3f(x - 0.0 , y - slider_height/2.0, params.pz);
    glVertex3f(x + slider_active_width, y - slider_height/2.0, params.pz);
    glVertex3f(x + slider_active_width, y + slider_height/2.0, params.pz);
    glVertex3f(x - 0.0 , y + slider_height/2.0, params.pz);
    glEnd();

    if (clicked == true)
      glColor3f(1.0, 1.0, 0.0);
    else
      glColor3f(1.0, 1.0, 1.0);

    glBegin(GL_QUADS);
    glVertex3f(x + slider_active_width - 0.01, y - 1.2*slider_height/2.0, params.pz);
    glVertex3f(x + slider_active_width, y - 1.2*slider_height/2.0, params.pz);
    glVertex3f(x + slider_active_width, y + 1.2*slider_height/2.0, params.pz);
    glVertex3f(x + slider_active_width - 0.01 , y + 1.2*slider_height/2.0, params.pz);
    glEnd();

  }
}


void COpenGLGuiSliderField::mouse_click_event(int button, int state, float x, float y)
{
  (void)button;
  (void)state;
  (void)x;
  (void)y;

  if ((button != 0) || (state != 0))
  {
    mouse_state = 0;
    return;
  }

  x = (x - params.px);
  y = (y - params.py);

  if (
      (x < -params.width/2.0) ||
      (x > params.width/2.0) ||
      (y < -params.height/2.0) ||
      (y > params.height/2.0)
    )
    {
      mouse_state = 0;
      return;
    }

  mouse_x = x;
  mouse_y = y;
  mouse_state = 1;
}
