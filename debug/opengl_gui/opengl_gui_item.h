#ifndef _OPENGL_GUI_ITEM_H_
#define _OPENGL_GUI_ITEM_H_

#include "../common.h"

#include <stdio.h>
#include <signal.h>
#include <X11/X.h>
#include <X11/Xlib.h>
#include <GL/gl.h>
#include <GL/glx.h>
#include <GL/glu.h>
#include <GL/freeglut.h>
#include <GL/glut.h>

#include <string>


#define FRAME_HEIGHT  0.04
#define FRAME_WIDHT   0.01



struct sFrame
{
  bool transparent;
  float px, py, pz;
  float width, height;
  float frame_color_r, frame_color_g, frame_color_b;
  float font_color_r, font_color_g, font_color_b;
  void *font;

  std::string label;
};

void gl_print(float x, float y, float r, float g, float b, void *font, char *string);
void plot_frame(struct sFrame frame);


class COpenGLGuiItem
{

  public:
    COpenGLGuiItem(u32 params, void *data)
    {
      (void)params;
      (void)data;
    }

    virtual ~COpenGLGuiItem()
    {

    }

    virtual void process()
    {

    }
};

#endif
