#ifndef _OPENGL_GUI_BAR_FIELD_H_
#define _OPENGL_GUI_BAR_FIELD_H_

#include "opengl_gui_item.h"

struct sOpenGLGuiBarFieldParams
{
  bool transparent;
  float px, py, pz;
  float width, height;
  void *font, *label_font;
  float frame_color_r, frame_color_g, frame_color_b;
  float label_color_r, label_color_g, label_color_b;
  float bar_color_r, bar_color_g, bar_color_b;

  std::string frame_label;

  float max_value;
  float min_value;
  u32 bars_count;

  bool bars_values;
};


struct sOpenGLGuiBarFieldData
{
  std::vector<float> values;
};

class COpenGLGuiBarField: public COpenGLGuiItem
{
  private:
    struct sOpenGLGuiBarFieldParams params;
    struct sOpenGLGuiBarFieldData *data;

  public:
    COpenGLGuiBarField(struct sOpenGLGuiBarFieldParams params, struct sOpenGLGuiBarFieldData *data);
    ~COpenGLGuiBarField();
    void process();

};

#endif
