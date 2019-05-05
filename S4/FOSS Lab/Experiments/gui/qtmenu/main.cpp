//main.cpp
#include "mymenu.h"
#include <QDesktopWidget>
#include <QApplication>
int main(int argc, char *argv[])
{
	QApplication app(argc, argv);
	MyMenu window;
	window.setWindowTitle("My menu");
	window.show();
	return app.exec();
}
