#include "opengl_gui_imu.h"


COpenGLGuiImu::COpenGLGuiImu(struct sOpenGLGuiImuParams params, struct sOpenGLGuiImuData *data):COpenGLGuiItem(0, NULL)
{
  this->params = params;
  this->data = data;
}

COpenGLGuiImu::~COpenGLGuiImu()
{


}

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


              glPushMatrix();
              glTranslated(params.px, params.py, params.pz);
              glRotated(data->roll*180.0/PI, 1, 0, 0);
              glRotated(data->pitch*180.0/PI, 0, 1, 0);
              glRotated(data->yaw*180.0/PI, 0, 0, 1);

              glPointSize(3);
              glPolygonMode(GL_FRONT, GL_LINES);
              glPolygonMode(GL_BACK, GL_LINES);

              glBegin(GL_TRIANGLES);
              glColor3f(params.imu_color_r, params.imu_color_g, params.imu_color_b);
              glVertex3f(-size/4.0, -size, 0.0);
              glVertex3f( size/4.0, -size, 0.0);
              glVertex3f(  0.0, size, 0.0);
              glEnd();

              /*
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
              */

    glPopMatrix();
}
