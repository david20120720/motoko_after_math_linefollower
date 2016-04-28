#include "opengl_gui_graph.h"

COpenGLGuiGraph::COpenGLGuiGraph(struct sOpenGLGuiGraphParams params, struct sOpenGLGuiGraphData *data):COpenGLGuiItem(0, NULL)
{
  this->params = params;
  this->data = data;
}

COpenGLGuiGraph::~COpenGLGuiGraph()
{

}


void COpenGLGuiGraph::process()
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




  u32 i, j;

  float x = 0.0;
  float y = 0.0;

  float ky = params.height/(params.y_max - params.y_min);
  float qy = params.height*0.5 - ky*params.y_max;

  float kx = params.width/(params.x_max - params.x_min);
  float qx = params.width*0.5 - kx*params.x_max;

  float count = data->functions.size();
  u32 phase = data->functions.size()/3;

  for (j = 0; j < data->functions.size(); j++)
  {
    float r = ((j+phase*0)%data->functions.size())/count;
    float g = ((j+phase*1)%data->functions.size())/count;
    float b = ((j+phase*2)%data->functions.size())/count;

    if (data->functions.size() == 1)
    {
      r = 0.0;
      g = 1.0;
      b = 0.0;
    }

    glColor3f(r, g, b);

    std::string label = data->functions[j].label;

    glLineWidth(1.3);
    glBegin(GL_LINES);


    struct sOpenGlGraphPoint point = data->functions[j].points[0];

    x = kx*point.x + qx;
    y = ky*point.y + qy;

    for (i = 0; i < data->functions[j].points.size(); i++)
    {
      point = data->functions[j].points[i];

      float y_ = y;
      float x_ = x;
      x = kx*point.x + qx;
      y = ky*point.y + qy;

      glVertex3f(params.px + x_, params.py + y_, params.pz);
      glVertex3f(params.px + x, params.py + y, params.pz);
    }
    glEnd();

  }

  glLineWidth(2.0);
  if ( params.plot_grid == true)
  {
    glColor3f(params.graph_color_r, params.graph_color_g, params.graph_color_b);

    float x0, y0, x1, y1;

    x0 = -params.width/2.0;
    x1 =  params.width/2.0;
    y0 = 0.0;
    y1 = 0.0;

    glBegin(GL_LINES);
    glVertex3f(params.px + x0, params.py + y0, params.pz);
    glVertex3f(params.px + x1, params.py + y1, params.pz);
    glEnd();


    x0 = 0.0;
    x1 = 0.0;
    y0 = -params.height/2.0;
    y1 =  params.height/2.0;

    glBegin(GL_LINES);
    glVertex3f(params.px + x0, params.py + y0, params.pz);
    glVertex3f(params.px + x1, params.py + y1, params.pz);
    glEnd();
  }

  if ( params.plot_values == true)
  {
    char str[1024];

    glColor3f(params.graph_color_r, params.graph_color_g, params.graph_color_b);

    float x0, y0;

    x0 = -params.width/2.0;
    y0 = -0.02;

    sprintf(str, "%6.3f", params.x_min);
    gl_print(params.px + x0, params.py + y0,
            1.0,
            1.0,
            1.0,
            params.font,
            (char*)str);


    x0 =  params.width/2.0 - 0.05;
    y0 =  -0.02;

    sprintf(str, "%6.3f", params.x_max);
    gl_print(params.px + x0, params.py + y0,
              1.0,
              1.0,
              1.0,
              params.font,
              (char*)str);


    x0 = 0.01;
    y0 = -params.height/2.0 + 0.01;


    sprintf(str, "%6.3f", params.y_min);
    gl_print(params.px + x0, params.py + y0,
              1.0,
              1.0,
              1.0,
              params.font,
              (char*)str);


    x0 = 0.01;
    y0 = params.height/2.0 - 0.02;

    sprintf(str, "%6.3f", params.y_max);
    gl_print(params.px + x0, params.py + y0,
              1.0,
              1.0,
              1.0,
              params.font,
              (char*)str);


    x0 = 0.001;
    y0 = 0.003;

    sprintf(str, "%6.3f", 0.0);
    gl_print(params.px + x0, params.py + y0,
              1.0,
              1.0,
              1.0,
              params.font,
              (char*)str);
  }

  if ( params.plot_labels == true)
  {
    for (j = 0; j < data->functions.size(); j++)
    {
      float r = ((j+phase*0)%data->functions.size())/count;
      float g = ((j+phase*1)%data->functions.size())/count;
      float b = ((j+phase*2)%data->functions.size())/count;

      if (data->functions.size() == 1)
      {
        r = 0.0;
        g = 1.0;
        b = 0.0;
      }

      float x = 0.5*params.width/2.0;
      float y = params.height/2.0 - 0.03 - (0.5*params.height*j)/data->functions.size();

      char str[1024];
      sprintf(str, "%s", data->functions[j].label.c_str());
      gl_print(params.px + x, params.py + y,
                r,
                g,
                b,
                params.label_font,
                (char*)str);
    }
  }
}


void COpenGLGuiGraph::mouse_click_event(int button, int state, float x, float y)
{
  (void)button;
  (void)state;
  (void)x;
  (void)y;

  x = (x - params.px);
  y = (y - params.py);


  if (
      (x < -params.width/2.0) ||
      (x > params.width/2.0) ||
      (y < -params.height/2.0) ||
      (y > params.height/2.0)
    )
    return;
}
