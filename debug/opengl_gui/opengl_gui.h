#ifndef _OPENGL_GUI_H_
#define _OPENGL_GUI_H_

#include "../common.h"

#include "opengl_gui_items.h"

struct sOpenGlGuiIOEvent
{
  u32 mouse_x, mouse_y;
  u32 mouse_buttons;

  u32 keypressed;
  u32 key;
};

class COpenGLGui
{
  private:
    u32 width, height;
    std::vector<class COpenGLGuiItem *> *items;

  public:
    COpenGLGui(u32 width, u32 height, std::vector<class COpenGLGuiItem *> *items);
    ~COpenGLGui();

    void process(struct sOpenGlGuiIOEvent *event = NULL);


  private:
    void point_rotate(float *x_res, float *y_res, float x, float y, float angle);
    void visualise_init();
    void visualise_refresh();
};

#endif
