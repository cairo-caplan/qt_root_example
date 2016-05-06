#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);


    m = new QMainCanvas();
    m->resize(m->sizeHint());
    m->setWindowTitle("Qt Example - Canvas");
    m->show();
    this->ui->horizontalLayout->addWidget(m);
}

MainWindow::~MainWindow()
{
    delete ui;
}
