#include "common.h"
#include "serial_port.h"
#include "parse_telemetry.h"
#include "opengl_gui/opengl_gui.h"

std::vector<class COpenGLGuiItem *> items;

struct sOpenGLGuiTextFieldData	textfield_terminal_data;
struct sOpenGLGuiSliderFieldData	sliderfield_controller_data;
struct sOpenGLGuiBarFieldData	  barfield_sensor_data;
struct sOpenGLGuiImuData				imu_data;
struct sOpenGLGuiGraphData			graph_data;

void init_opengl_gui_items()
{
	u32 i;

	struct sOpenGLGuiTextFieldParams	textfield_terminal_param;

	textfield_terminal_param.transparent = true;
	textfield_terminal_param.px = -0.25;
	textfield_terminal_param.py = -0.3;
	textfield_terminal_param.pz = 0.0;

	textfield_terminal_param.width = 0.9;
	textfield_terminal_param.height = 0.2;

	textfield_terminal_param.label_font = GLUT_BITMAP_HELVETICA_18;
	textfield_terminal_param.font = GLUT_BITMAP_HELVETICA_18;

	textfield_terminal_param.frame_color_r = 0.3;
	textfield_terminal_param.frame_color_g = 0.3;
	textfield_terminal_param.frame_color_b = 0.3;

	textfield_terminal_param.label_color_r = 0.8;
	textfield_terminal_param.label_color_g = 0.8;
	textfield_terminal_param.label_color_b = 0.8;

	textfield_terminal_param.font_color_r = 1.0;
	textfield_terminal_param.font_color_g = 1.0;
	textfield_terminal_param.font_color_b = 1.0;

	textfield_terminal_param.frame_label = "terminal output";

	for (i = 0; i < 7; i++)
		textfield_terminal_data.lines.push_back(" ");
	items.push_back(new COpenGLGuiTextField(textfield_terminal_param, &textfield_terminal_data));









	struct sOpenGLGuiSliderFieldParams	sliderfield_controller_param;

	sliderfield_controller_param.transparent = true;
	sliderfield_controller_param.px = -0.25;
	sliderfield_controller_param.py = -0.015;
	sliderfield_controller_param.pz = 0.0;

	sliderfield_controller_param.width = 0.9;
	sliderfield_controller_param.height = 0.29;

	sliderfield_controller_param.label_font = GLUT_BITMAP_HELVETICA_18;
	sliderfield_controller_param.font = GLUT_BITMAP_HELVETICA_18;

	sliderfield_controller_param.frame_color_r = 0.3;
	sliderfield_controller_param.frame_color_g = 0.3;
	sliderfield_controller_param.frame_color_b = 0.3;

	sliderfield_controller_param.color_r = 0.3;
	sliderfield_controller_param.color_g = 0.7;
	sliderfield_controller_param.color_b = 1.0;

	sliderfield_controller_param.font_color_r = 1.0;
	sliderfield_controller_param.font_color_g = 1.0;
	sliderfield_controller_param.font_color_b = 1.0;

	sliderfield_controller_param.frame_label = "controller parameters";

	sliderfield_controller_param.min_value = 0.0;
	sliderfield_controller_param.max_value = 100.0;


	struct sSlider slider;


	slider.label = "Kp";
	slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
	sliderfield_controller_data.sliders.push_back(slider);

	slider.label = "Kd";
	slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
	sliderfield_controller_data.sliders.push_back(slider);

	slider.label = "Ks1";
	slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
	sliderfield_controller_data.sliders.push_back(slider);


	slider.label = "Ks2";
	slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
	sliderfield_controller_data.sliders.push_back(slider);

	slider.label = "speed max";
	slider.value = sliderfield_controller_param.max_value*abs_(rnd_());
	sliderfield_controller_data.sliders.push_back(slider);

	items.push_back(new COpenGLGuiSliderField(sliderfield_controller_param, &sliderfield_controller_data));






	struct sOpenGLGuiBarFieldParams	barfield_sensor_param;

	barfield_sensor_param.transparent = true;
	barfield_sensor_param.px = -0.35;
	barfield_sensor_param.py = 0.27;
	barfield_sensor_param.pz = 0.0;

	barfield_sensor_param.width = 0.7;
	barfield_sensor_param.height = 0.2;

	barfield_sensor_param.label_font = GLUT_BITMAP_HELVETICA_18;
	barfield_sensor_param.font = GLUT_BITMAP_HELVETICA_10;

	barfield_sensor_param.frame_color_r = 0.7;
	barfield_sensor_param.frame_color_g = 0.0;
	barfield_sensor_param.frame_color_b = 0.0;

	barfield_sensor_param.label_color_r = 0.8;
	barfield_sensor_param.label_color_g = 0.8;
	barfield_sensor_param.label_color_b = 0.8;

	barfield_sensor_param.bar_color_r = 0.7;
	barfield_sensor_param.bar_color_g = 0.0;
	barfield_sensor_param.bar_color_b = 0.0;



	barfield_sensor_param.frame_label = "line sensors";

	barfield_sensor_param.max_value = 700.0;
	barfield_sensor_param.min_value = -700.0;
	barfield_sensor_param.bars_count = LINE_SENSORS_COUNT;
	barfield_sensor_param.bars_values = true;

	for (i = 0; i < barfield_sensor_param.bars_count; i++)
		barfield_sensor_data.values.push_back(barfield_sensor_param.max_value*rnd_());

	items.push_back(new COpenGLGuiBarField(barfield_sensor_param, &barfield_sensor_data));



	struct sOpenGLGuiGraphParams	graph_data_param;

	graph_data_param.transparent = true;
	graph_data_param.px = 0.37;
	graph_data_param.py = 0.27;
	graph_data_param.pz = 0.0;

	graph_data_param.width = 0.7;
	graph_data_param.height = 0.2;

	graph_data_param.label_font = GLUT_BITMAP_HELVETICA_18;
	graph_data_param.font =  GLUT_BITMAP_HELVETICA_10;

	graph_data_param.label_color_r = 0.8;
	graph_data_param.label_color_g = 0.8;
	graph_data_param.label_color_b = 0.8;

	graph_data_param.frame_color_r = 0.0;
	graph_data_param.frame_color_g = 0.5;
	graph_data_param.frame_color_b = 0.8;

	graph_data_param.graph_color_r = 0.0;
	graph_data_param.graph_color_g = 0.7;
	graph_data_param.graph_color_b = 1.0;

	graph_data_param.frame_label = "line position";


	graph_data_param.x_min = 0.0;
	graph_data_param.x_max = 100.0;

	graph_data_param.y_max = 256.0;
	graph_data_param.y_min = -256.0;


	graph_data_param.plot_grid = true;
	graph_data_param.plot_values = true;
	graph_data_param.plot_labels = true;


		u32 j;
		struct sOpenGlGraphFunction function;
		function.label = "line position";
		for (j = 0; j < 100; j++)
		{
			struct sOpenGlGraphPoint point;

			point.x = j;
			point.y = graph_data_param.y_max*rnd_();

			function.points.push_back(point);
		}

		graph_data.functions.push_back(function);

	items.push_back(new COpenGLGuiGraph(graph_data_param, &graph_data));






	struct sOpenGLGuiImuParams	imu_param;

	imu_param.transparent = true;
	imu_param.px = 0.47;
	imu_param.py = -0.135;
	imu_param.pz = 0.0;

	imu_param.width = 0.5;
	imu_param.height = 0.53;

	imu_param.label_font = GLUT_BITMAP_HELVETICA_18;
	imu_param.font = GLUT_BITMAP_HELVETICA_10;

	imu_param.frame_color_r = 0.3;
	imu_param.frame_color_g = 0.3;
	imu_param.frame_color_b = 0.3;

	imu_param.label_color_r = 0.8;
	imu_param.label_color_g = 0.8;
	imu_param.label_color_b = 0.8;

	imu_param.imu_color_r = 0.7;
	imu_param.imu_color_g = 0.0;
	imu_param.imu_color_b = 1.0;

	imu_param.frame_label = "gyroscope";
	imu_param.angles_values_labels = true;

	imu_data.roll = 0.0;
	imu_data.pitch = 0.0;
	imu_data.yaw = rnd_()*PI;

	items.push_back(new COpenGLGuiImu(imu_param, &imu_data));


}



int main()
{
	u32 i;
	srand(time(NULL));

	class CSerialPort *sp;
	class CParseTelemetry *parse_telemetry;


	init_opengl_gui_items();


	class COpenGLGui	*opengl_gui;
	u32 width =  1024;
	u32 height = (width*9)/16;

	opengl_gui = new COpenGLGui(width, height, &items);


	while (getch() != 27)
	{
		opengl_gui->process();
		usleep(1000*100);
	}


	for (i = 0; i < items.size(); i++)
		delete items[i];

	return 0;


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



	printf("program done\n");
	return 0;
}
