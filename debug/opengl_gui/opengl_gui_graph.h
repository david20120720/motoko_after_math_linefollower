#ifndef _OPENGL_GRAPH_H_
#define _OPENGL_GRAPH_H_

#include "opengl_gui_item.h"


struct sOpenGLGuiGraphParams
{
  bool transparent;
  float px, py, pz;
  float width, height;
  void *font, *label_font;
  float frame_color_r, frame_color_g, frame_color_b;
  float label_color_r, label_color_g, label_color_b;
  float graph_color_r, graph_color_g, graph_color_b;

  std::string frame_label;

  float x_min, x_max;
  float y_min, y_max;


  bool plot_grid;
  bool plot_values;
  bool plot_labels;
};


struct sOpenGlGraphPoint
{
  float x, y;
};

struct sOpenGlGraphFunction
{
  std::vector< sOpenGlGraphPoint> points;
  std::string label;
};

struct sOpenGLGuiGraphData
{
  std::vector<struct sOpenGlGraphFunction> functions;
};

class COpenGLGuiGraph: public COpenGLGuiItem
{
  private:
    struct sOpenGLGuiGraphParams params;
    struct sOpenGLGuiGraphData *data;

  public:
    COpenGLGuiGraph(struct sOpenGLGuiGraphParams params, struct sOpenGLGuiGraphData *data);
    ~COpenGLGuiGraph();
    void process();

    void mouse_click_event(int button, int state, float x, float y);

};



#endif
