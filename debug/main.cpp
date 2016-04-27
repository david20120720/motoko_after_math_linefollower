#include "common.h"
#include "serial_port.h"
#include "parse_telemetry.h"
#include "opengl_gui/opengl_gui.h"

std::vector<class COpenGLGuiItem *> items;

struct sOpenGLGuiTextFieldData	textfield_terminal_data;
struct sOpenGLGuiTextFieldData	textfield_controller_data;
struct sOpenGLGuiBarFieldData	  barfield_sensor_data;
struct sOpenGLGuiImuData			imu_data;

void init_opengl_gui_items()
{
	u32 i;

	struct sOpenGLGuiTextFieldParams	textfield_terminal_param;

	textfield_terminal_param.transparent = true;
	textfield_terminal_param.px = -0.35;
	textfield_terminal_param.py = -0.3;
	textfield_terminal_param.pz = 0.0;

	textfield_terminal_param.width = 0.7;
	textfield_terminal_param.height = 0.2;

	textfield_terminal_param.label_font = GLUT_BITMAP_HELVETICA_18;
	textfield_terminal_param.font = GLUT_BITMAP_HELVETICA_18;

	textfield_terminal_param.frame_color_r = 0.3;
	textfield_terminal_param.frame_color_g = 0.3;
	textfield_terminal_param.frame_color_b = 0.3;

	textfield_terminal_param.label_color_r = 1.0;
	textfield_terminal_param.label_color_g = 0.0;
	textfield_terminal_param.label_color_b = 0.0;

	textfield_terminal_param.font_color_r = 1.0;
	textfield_terminal_param.font_color_g = 1.0;
	textfield_terminal_param.font_color_b = 1.0;

	textfield_terminal_param.frame_label = "terminal output";

	for (i = 0; i < 7; i++)
		textfield_terminal_data.lines.push_back(" ");
	items.push_back(new COpenGLGuiTextField(textfield_terminal_param, &textfield_terminal_data));









	struct sOpenGLGuiTextFieldParams	textfield_controller_param;

	textfield_controller_param.transparent = true;
	textfield_controller_param.px = -0.35;
	textfield_controller_param.py = -0.0;
	textfield_controller_param.pz = 0.0;

	textfield_controller_param.width = 0.7;
	textfield_controller_param.height = 0.2;

	textfield_controller_param.label_font = GLUT_BITMAP_HELVETICA_18;
	textfield_controller_param.font = GLUT_BITMAP_HELVETICA_10;

	textfield_controller_param.frame_color_r = 0.3;
	textfield_controller_param.frame_color_g = 0.3;
	textfield_controller_param.frame_color_b = 0.3;

	textfield_controller_param.label_color_r = 1.0;
	textfield_controller_param.label_color_g = 0.0;
	textfield_controller_param.label_color_b = 0.0;

	textfield_controller_param.font_color_r = 1.0;
	textfield_controller_param.font_color_g = 1.0;
	textfield_controller_param.font_color_b = 1.0;

	textfield_controller_param.frame_label = "controller parameters";

	textfield_controller_data.lines.push_back("controller output debug");
	items.push_back(new COpenGLGuiTextField(textfield_controller_param, &textfield_controller_data));






	struct sOpenGLGuiBarFieldParams	barfield_sensor_param;

	barfield_sensor_param.transparent = true;
	barfield_sensor_param.px = -0.35;
	barfield_sensor_param.py = 0.27;
	barfield_sensor_param.pz = 0.0;

	barfield_sensor_param.width = 0.7;
	barfield_sensor_param.height = 0.2;

	barfield_sensor_param.label_font = GLUT_BITMAP_HELVETICA_18;
	barfield_sensor_param.font = GLUT_BITMAP_HELVETICA_10;

	barfield_sensor_param.frame_color_r = 0.3;
	barfield_sensor_param.frame_color_g = 0.3;
	barfield_sensor_param.frame_color_b = 0.3;

	barfield_sensor_param.label_color_r = 1.0;
	barfield_sensor_param.label_color_g = 0.0;
	barfield_sensor_param.label_color_b = 0.0;

	barfield_sensor_param.bar_color_r = 0.3;
	barfield_sensor_param.bar_color_g = 0.0;
	barfield_sensor_param.bar_color_b = 1.0;

	barfield_sensor_param.frame_label = "line sensors";

	barfield_sensor_param.max_value = 700.0; 
	barfield_sensor_param.min_value = -700.0;
	barfield_sensor_param.bars_count = LINE_SENSORS_COUNT;
	barfield_sensor_param.bars_values = true;

	for (i = 0; i < barfield_sensor_param.bars_count; i++)
		barfield_sensor_data.values.push_back(0.0);

	items.push_back(new COpenGLGuiBarField(barfield_sensor_param, &barfield_sensor_data));












	struct sOpenGLGuiImuParams	imu_param;

	imu_param.transparent = true;
	imu_param.px = 0.4;
	imu_param.py = 0.12;
	imu_param.pz = 0.0;

	imu_param.width = 0.5;
	imu_param.height = 0.5;

	imu_param.label_font = GLUT_BITMAP_HELVETICA_18;
	imu_param.font = GLUT_BITMAP_HELVETICA_10;

	imu_param.frame_color_r = 0.3;
	imu_param.frame_color_g = 0.3;
	imu_param.frame_color_b = 0.3;

	imu_param.label_color_r = 1.0;
	imu_param.label_color_g = 0.0;
	imu_param.label_color_b = 0.0;

	imu_param.imu_color_r = 0.3;
	imu_param.imu_color_g = 0.0;
	imu_param.imu_color_b = 1.0;

	imu_param.frame_label = "gyroscope";
	imu_param.angles_values_labels = true;

	imu_data.roll = rnd_()*PI;
	imu_data.pitch = rnd_()*PI;
	imu_data.yaw = rnd_()*PI;

	items.push_back(new COpenGLGuiImu(imu_param, &imu_data));
}



int main()
{
	srand(time(NULL));


	class CSerialPort *sp;
	sp = new CSerialPort((char*)"/dev/ttyUSB0");

	class CParseTelemetry *parse_telemetry;
	parse_telemetry = new CParseTelemetry();

	init_opengl_gui_items();
	class COpenGLGui	*opengl_gui;
	u32 width = 1024;
	u32 height = (width*9)/16;
	opengl_gui = new COpenGLGui(width, height, &items);
	opengl_gui->process(NULL);


	u32 i;
	while (getch() != 27)
	{

		char c = sp->serial_read();

		if (parse_telemetry->parse(c) != 0)
		{
			parse_telemetry->print();

			struct sRobotTelemetry telemetry = parse_telemetry->get();

			for (i = 0; i < LINE_SENSORS_COUNT; i++)
				barfield_sensor_data.values[i] = telemetry.line_sensor[i];

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

			opengl_gui->process(NULL);
		}
	}

	delete sp;
	delete parse_telemetry;

	delete opengl_gui;

	for (i = 0; i < items.size(); i++)
		delete items[i];



	printf("program done\n");
	return 0;
}
