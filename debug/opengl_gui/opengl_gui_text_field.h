#ifndef _OPENGL_GUI_TEXT_FIELD_H_
#define _OPENGL_GUI_TEXT_FIELD_H_

#include "opengl_gui_item.h"

struct sOpenGLGuiTextFieldParams
{
  bool transparent;
  float px, py, pz;
  float width, height;
  void *font, *label_font;
  float frame_color_r, frame_color_g, frame_color_b;
  float label_color_r, label_color_g, label_color_b;
  float font_color_r, font_color_g, font_color_b;

  std::string frame_label;

};


struct sOpenGLGuiTextFieldData
{
  std::vector<std::string> lines;
};

class COpenGLGuiTextField: public COpenGLGuiItem
{
  private:
    struct sOpenGLGuiTextFieldParams params;
    struct sOpenGLGuiTextFieldData *data;

  public:
    COpenGLGuiTextField(struct sOpenGLGuiTextFieldParams params, struct sOpenGLGuiTextFieldData *data);
    ~COpenGLGuiTextField();
    void process();

};


#endif
