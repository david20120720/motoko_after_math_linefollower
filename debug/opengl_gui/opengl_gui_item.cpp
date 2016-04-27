#include "opengl_gui_item.h"



void gl_print(float x, float y, float r, float g, float b, void *font, char *string)
{
  glColor3f( r, g, b );
  glRasterPos2f(x, y);
  int len, i;
  len = (int)strlen(string);
  for (i = 0; i < len; i++)
  {
      glutBitmapCharacter(font, string[i]);
  }
}

void plot_frame(struct sFrame frame)
{
    glColor3f(frame.frame_color_r, frame.frame_color_g, frame.frame_color_b);

    float tmp_height = FRAME_HEIGHT;
    float tmp_width = FRAME_WIDHT;


    glBegin(GL_QUADS);


    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py - frame.height/2.0 - 0.25*tmp_height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py - frame.height/2.0 - 0.25*tmp_height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py - frame.height/2.0, frame.pz);
    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py - frame.height/2.0, frame.pz);


    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py + frame.height/2.0 + 1.5*tmp_height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py + frame.height/2.0 + 1.5*tmp_height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py + frame.height/2.0, frame.pz);
    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py + frame.height/2.0, frame.pz);


    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py + frame.height/2.0, frame.pz);
    glVertex3f(frame.px - frame.width/2.0 - tmp_width/2.0, frame.py - frame.height/2.0, frame.pz);
    glVertex3f(frame.px - frame.width/2.0,                 frame.py - frame.height/2.0, frame.pz);
    glVertex3f(frame.px - frame.width/2.0,                 frame.py + frame.height/2.0, frame.pz);

    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py + frame.height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0 + tmp_width/2.0, frame.py - frame.height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0,                 frame.py - frame.height/2.0, frame.pz);
    glVertex3f(frame.px + frame.width/2.0,                 frame.py + frame.height/2.0, frame.pz);

    glEnd();

    if (frame.transparent == false)
    {
      glColor3f(frame.frame_color_r*0.5, frame.frame_color_g*0.5, frame.frame_color_b*0.5);
      glBegin(GL_QUADS);
      glVertex3f(frame.px - frame.width/2.0, frame.py - frame.height/2.0, frame.pz);
      glVertex3f(frame.px + frame.width/2.0, frame.py - frame.height/2.0, frame.pz);
      glVertex3f(frame.px + frame.width/2.0, frame.py + frame.height/2.0, frame.pz);
      glVertex3f(frame.px - frame.width/2.0, frame.py + frame.height/2.0, frame.pz);
      glEnd();
    }

    gl_print(frame.px - frame.width/2.0 + tmp_width/2.0, frame.py + frame.height/2.0 + 0.3*tmp_height/2.0,
              frame.font_color_r,
              frame.font_color_g,
              frame.font_color_b,
              frame.font,
              (char*)frame.label.c_str());
}
