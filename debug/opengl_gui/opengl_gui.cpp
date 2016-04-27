#include "opengl_gui.h"

#include <stdio.h>
#include <signal.h>
#include <X11/X.h>
#include <X11/Xlib.h>
#include <GL/gl.h>
#include <GL/glx.h>
#include <GL/glu.h>
#include <GL/freeglut.h>
#include <GL/glut.h>



COpenGLGui::COpenGLGui(u32 width, u32 height, std::vector<class COpenGLGuiItem *> *items)
{
  this->width = width;
  this->height = height;

  visualise_init();

  this->items = items;
}


COpenGLGui::~COpenGLGui()
{

}


void COpenGLGui::process(struct sOpenGlGuiIOEvent *event)
{
  visualise_refresh();

}


void COpenGLGui::point_rotate(float *x_res, float *y_res, float x, float y, float angle)
{
  *x_res = cos(angle)*x - sin(angle)*y;
  *y_res = sin(angle)*x + cos(angle)*y;
}



void COpenGLGui::visualise_init()
{
  int num = 0;

  glutInit(&num, NULL);
  glutInitWindowSize(width, height);
  glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE);
  glutCreateWindow("robot visualise");

/*
  glutIdleFunc(visualise_idle);
  glutKeyboardFunc(visualise_process_keys);
*/

  glViewport(0, 0, width, height);
  glMatrixMode(GL_PROJECTION);
  glEnable(GL_DEPTH_TEST);
  gluPerspective(45, (float) width / height, 0.1, 100);
  glMatrixMode(GL_MODELVIEW);

//  rendering_thread = new std::thread(visualise_rendering_thread);
}


void COpenGLGui::visualise_refresh()
{
  glMatrixMode(GL_PROJECTION);
  glShadeModel(GL_SMOOTH);
  glEnable(GL_DEPTH_TEST);
  glMatrixMode(GL_MODELVIEW);

  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
  glLoadIdentity();

  glEnable(GL_DEPTH_TEST);
  glDepthFunc(GL_LEQUAL);

  glMatrixMode(GL_MODELVIEW);


  glTranslatef(0.0, 0.0, -1.0);
  glRotatef(0.0, 0.0, 0.0, 0.0);

  glClearColor(0.0, 0.0, 0.0, 0.0);

  float size_x = 1.6;
  float size_y = 1.0;
  float x = 0.0;
  float y = 0.0;




  glColor3f(0.0, 0.0, 0.0);


  glBegin(GL_QUADS);
  glVertex3f(x - 0.5*size_x, y - 0.5*size_y, 0.0);
  glVertex3f(x + 0.5*size_x, y - 0.5*size_y, 0.0);
  glVertex3f(x + 0.5*size_x, y + 0.5*size_y, 0.0);
  glVertex3f(x - 0.5*size_x, y + 0.5*size_y, 0.0);
  glEnd();

  glColor3f(0.0, 0.0, 0.0);

  u32 i;
  for (i = 0; i < items->size(); i++)
    (*items)[i]->process();

  glutSwapBuffers();
}
