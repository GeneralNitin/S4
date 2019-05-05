//communicate.cpp
#include "communicate.h"
#include <QDesktopWidget>
Communicate::Communicate(QWidget *parent) : QWidget(parent)
{
	resize(180, 140);
	QPushButton *plus = new QPushButton("+", this);
	plus->setGeometry(50, 40, 50, 30);
	label = new QLabel("0", this);
	label->setGeometry(120, 40, 20, 30);
	//Connect the clicked event of the button to
	//the add method of the class
	connect(plus, SIGNAL(clicked()), this, SLOT(add()));
}
void Communicate::add()
{
	//Change the text displayed in the label
	int val = label->text().toInt();
	val++;
	label->setText(QString::number(val));
}
