//mymenu.cpp
#include "mymenu.h"
#include <QMenu>
#include <QMenuBar>
#include <QApplication>
MyMenu::MyMenu(QWidget *parent) : QMainWindow(parent)
{
	//create the quit action object
	QAction *quit = new QAction("&Quit", this);
	//create the file menu
	QMenu *file;
	file = menuBar()->addMenu("&File");
	//add the quit action to the new menu
	file->addAction(quit);
	//connect the triggered signal from the quit action menu
	//to the global quit method which closes the application
	connect(quit, SIGNAL(triggered()), qApp, SLOT(quit()));
}
