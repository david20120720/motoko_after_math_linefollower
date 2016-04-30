#include "common.h"
#include "serial_port.h"
#include "parse_telemetry.h"
#include "opengl_gui/opengl_gui.h"

#include "opengl_gui_tabs/menu.h"
#include "opengl_gui_tabs/debug_tab.h"
#include "opengl_gui_tabs/sensors_tab.h"
#include "opengl_gui_tabs/setup_tab.h"



extern struct sOpenGLGuiButtonFieldData	menu_data;

extern struct sOpenGLGuiTextFieldData	debug_tab_textfield_terminal_data;
extern struct sOpenGLGuiSliderFieldData	debug_tab_sliderfield_controller_data;
extern struct sOpenGLGuiBarFieldData	  debug_tab_barfield_sensor_data;
extern struct sOpenGLGuiImuData				debug_tab_imu_data;
extern struct sOpenGLGuiGraphData			debug_tab_graph_data;



std::vector<class CItemsContainer*> opengl_gui_containers;

void gui_init()
{
	opengl_gui_containers.push_back(new CItemsContainer());
	container_debug_tab_init(opengl_gui_containers[opengl_gui_containers.size()-1]);

	opengl_gui_containers.push_back(new CItemsContainer());
	container_sensors_tab_init(opengl_gui_containers[opengl_gui_containers.size()-1]);

	opengl_gui_containers.push_back(new CItemsContainer());
	container_setup_tab_init(opengl_gui_containers[opengl_gui_containers.size()-1]);


	opengl_gui_containers.push_back(new CItemsContainer());
	menu_tab_init(opengl_gui_containers[opengl_gui_containers.size()-1]);
}

void gui_uninit()
{
	u32 i;
	for (i = 0; i < opengl_gui_containers.size(); i++)
		delete opengl_gui_containers[i];
}


int main()
{
	u32 i;
	srand(time(NULL));


	class COpenGLGui	*opengl_gui;
	u32 width =  1024;
	u32 height = (width*9)/16;

	gui_init();
	opengl_gui = new COpenGLGui(width, height, &opengl_gui_containers);



	class CSerialPort *sp;
	class CParseTelemetry *parse_telemetry;



	sp = new CSerialPort((char*)"/dev/ttyUSB0");
	parse_telemetry = new CParseTelemetry();


	while (getch() != 27)
	{/*
		char c = sp->serial_read();

		if (parse_telemetry->parse(c) != 0)
		{
			parse_telemetry->print();

			struct sRobotTelemetry telemetry = parse_telemetry->get();

			for (i = 0; i < debug_tab_barfield_sensor_data.values.size(); i++)
			debug_tab_barfield_sensor_data.values[i] = telemetry.line_sensor[i];
		}
*/
		if (menu_data.buttons[0].flag)
		{
			for (i = 0; i < opengl_gui_containers.size()-1; i++)
				opengl_gui_containers[i]->clear_visible();

			opengl_gui_containers[0]->set_visible();

			menu_data.buttons[0].flag = 0;
		}


		if (menu_data.buttons[1].flag)
		{
			for (i = 0; i < opengl_gui_containers.size()-1; i++)
				opengl_gui_containers[i]->clear_visible();

			opengl_gui_containers[1]->set_visible();

			menu_data.buttons[1].flag = 0;
		}


		if (menu_data.buttons[2].flag)
		{
			for (i = 0; i < opengl_gui_containers.size()-1; i++)
				opengl_gui_containers[i]->clear_visible();

			opengl_gui_containers[2]->set_visible();

			menu_data.buttons[2].flag = 0;
		}

		opengl_gui->process();
		usleep(1000*100);
	}


	delete opengl_gui;
	gui_uninit();


/*
	sp = new CSerialPort((char*)"/dev/ttyUSB0");
	parse_telemetry = new CParseTelemetry();





	u32 ptr = 0;
	while (getch() != 27)
	{

		char c = sp->serial_read();

		if (parse_telemetry->parse(c) != 0)
		{
			parse_telemetry->print();

			struct sRobotTelemetry telemetry = parse_telemetry->get();

			for (i = 0; i < LINE_SENSORS_COUNT; i++)
				barfield_sensor_data.values[i] = telemetry.line_sensor[LINE_SENSORS_COUNT - 1 - i];

			imu_data.roll = telemetry.gx*2.0*PI/8192.0;
			imu_data.pitch = telemetry.gy*2.0*PI/8192.0;
			imu_data.yaw = telemetry.gz*2.0*PI/8192.0;

			char str[1024];

			sprintf(str, "line position  %i", telemetry.line_position);
			textfield_terminal_data.lines[0] = str;

			sprintf(str, "line state  %i", telemetry.line_state);
			textfield_terminal_data.lines[1] = str;


			sprintf(str, "gyroscope       %4i %4i %4i", telemetry.gx, telemetry.gy, telemetry.gz);
			textfield_terminal_data.lines[2] = str;

			sprintf(str, "magnetometer    %4i %4i %4i", telemetry.mx, telemetry.my, telemetry.mz);
			textfield_terminal_data.lines[3] = str;

			sprintf(str, "accelerometer  %4i %4i %4i", telemetry.ax, telemetry.ay, telemetry.az);
			textfield_terminal_data.lines[4] = str;


			graph_data.functions[0].points[ptr].y = telemetry.line_position;

			ptr = (ptr+1)%graph_data.functions[0].points.size();

			opengl_gui->process();
		}
	}

	delete sp;
	delete parse_telemetry;

	delete opengl_gui;

	for (i = 0; i < items.size(); i++)
		delete items[i];


		*/
	printf("program done\n");
	return 0;
}
