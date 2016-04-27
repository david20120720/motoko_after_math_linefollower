#ifndef _OPENGL_IMU_H_
#define _OPENGL_IMU_H_

#include "opengl_gui_item.h"


struct sOpenGLGuiImuParams
{
  bool transparent;
  float px, py, pz;
  float width, height;
  void *font, *label_font;
  float frame_color_r, frame_color_g, frame_color_b;
  float label_color_r, label_color_g, label_color_b;
  float imu_color_r, imu_color_g, imu_color_b;

  std::string frame_label;

  bool angles_values_labels;
};


struct sOpenGLGuiImuData
{
  float roll, pitch, yaw;
};

class COpenGLGuiImu: public COpenGLGuiItem
{
  private:
    struct sOpenGLGuiImuParams params;
    struct sOpenGLGuiImuData *data;

  public:
    COpenGLGuiImu(struct sOpenGLGuiImuParams params, struct sOpenGLGuiImuData *data);
    ~COpenGLGuiImu();
    void process();

};



#endif
