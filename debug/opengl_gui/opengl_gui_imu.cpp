#include "opengl_gui_imu.h"


#include "opengl_gui_bar_field.h"

COpenGLGuiImu::COpenGLGuiImu(struct sOpenGLGuiImuParams params, struct sOpenGLGuiImuData *data):COpenGLGuiItem(0, NULL)
{
  this->params = params;
  this->data = data;
}

COpenGLGuiImu::~COpenGLGuiImu()
{


}


float xrot = 0.0;
float yrot = 0.0;
float zrot = 0.0;

void COpenGLGuiImu::process()
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


  /*
  u32 j;

  float k = params.height/(params.max_value - params.min_value);
  float q = params.height - k*params.max_value;

  float x_step = params.width/data->values.size();

  for (j = 0; j < data->values.size(); j++)
  {
    float x = params.px - params.width/2.0 + x_step*(j+0.5);
    float y = params.py;

    float height = (k*data->values[j] + q);
    float width = x_step*0.75;

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
  */

  /*
  float x0 = frame.px - frame.width/2.0  + 0.25*FRAME_HEIGHT/2.0;
  float y0 = frame.py + frame.height/2.0 - 1.8*FRAME_WIDHT;

  u32 j, i;
  */


  char str[1024];
  float x, y;
  x = frame.px - frame.width/2.0  + 0.25*FRAME_HEIGHT/2.0;
  y = frame.py + frame.height/2.0 - 1.8*FRAME_WIDHT*1;

  sprintf(str, "roll = %6.3f", data->roll);
  gl_print(x, y,
          1.0,
          1.0,
          1.0,
          params.font,
          (char*)str);

  y = frame.py + frame.height/2.0 - 1.8*FRAME_WIDHT*3;

  sprintf(str, "pitch = %6.3f", data->pitch);
  gl_print(x, y,
          1.0,
          1.0,
          1.0,
          params.font,
          (char*)str);


  y = frame.py + frame.height/2.0 - 1.8*FRAME_WIDHT*5;

  sprintf(str, "yaw = %6.3f", data->yaw);
  gl_print(x, y,
            1.0,
            1.0,
            1.0,
            params.font,
            (char*)str);

    float size = 0.1;

  //  glMatrixMode(GL_MODELVIEW);
            //  glLoadIdentity();

              glTranslated(params.px, params.py, params.pz);
              glRotated(data->roll*180.0/PI, 1, 0, 0);
              glRotated(data->pitch*180.0/PI, 0, 1, 0);
              glRotated(data->yaw*180.0/PI, 0, 0, 1);

              glPointSize(3);
              glPolygonMode(GL_FRONT, GL_LINES);
              glPolygonMode(GL_BACK, GL_LINES);
              glBegin(GL_QUADS);

              glColor3f(0.0f,1.0f,0.0f);	// Color Blue
              glVertex3f( size, size,-size);	// Top Right Of The Quad (Top)
              glVertex3f(-size, size,-size);	// Top Left Of The Quad (Top)
              glVertex3f(-size, size, size);	// Bottom Left Of The Quad (Top)
              glVertex3f( size, size, size);	// Bottom Right Of The Quad (Top)

              glColor3f(1.0f,0.5f,0.0f);	// Color Orange
              glVertex3f( size, -size, size);	// Top Right Of The Quad (Bottom)
              glVertex3f(-size, -size, size);	// Top Left Of The Quad (Bottom)
              glVertex3f(-size, -size,-size);	// Bottom Left Of The Quad (Bottom)
              glVertex3f( size, -size,-size);	// Bottom Right Of The Quad (Bottom)

              glColor3f(1.0f,0.0f,0.0f);	// Color Red
              glVertex3f( size, size, size);	// Top Right Of The Quad (Front)
              glVertex3f(-size, size, size);	// Top Left Of The Quad (Front)
              glVertex3f(-size,-size, size);	// Bottom Left Of The Quad (Front)
              glVertex3f( size,-size, size);	// Bottom Right Of The Quad (Front)

              glColor3f(1.0f,1.0f,0.0f);	// Color Yellow
              glVertex3f( size,-size,-size);	// Top Right Of The Quad (Back)
              glVertex3f(-size,-size,-size);	// Top Left Of The Quad (Back)
              glVertex3f(-size, size,-size);	// Bottom Left Of The Quad (Back)
              glVertex3f( size, size,-size);	// Bottom Right Of The Quad (Back)

              glColor3f(0.0f,0.0f,1.0f);	// Color Blue
              glVertex3f(-size, size, size);	// Top Right Of The Quad (Left)
              glVertex3f(-size, size,-size);	// Top Left Of The Quad (Left)
              glVertex3f(-size,-size,-size);	// Bottom Left Of The Quad (Left)
              glVertex3f(-size,-size, size);	// Bottom Right Of The Quad (Left)

              glColor3f(1.0f,0.0f,1.0f);	// Color Violet
              glVertex3f( size, size,-size);	// Top Right Of The Quad (Right)
              glVertex3f( size, size, size);	// Top Left Of The Quad (Right)
              glVertex3f( size,-size, size);	// Bottom Left Of The Quad (Right)
              glVertex3f( size,-size,-size);	// Bottom Right Of The Quad (Right)

              glEnd();			// End

}
