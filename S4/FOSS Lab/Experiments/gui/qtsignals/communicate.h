//communicate.h
#include <QWidget>
#include <QApplication>
#include <QPushButton>
#include <QLabel>
class Communicate : public QWidget
{
	//The Q_OBJECT macro causes the moc tool to initialise
	//code for signals and slots, run time type information
	//and dynamic property system
	Q_OBJECT
	public:
		Communicate(QWidget *parent = 0);
	//add a lot which allows widget communications
	private slots:
		void add();
	private:
		QLabel *label;
};
