#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    QLabel *redSquare = new QLabel(this);
    redSquare->setGeometry(50, 50, 50, 50);
    redSquare->setStyleSheet("background-color: red;");
}

MainWindow::~MainWindow()
{
    delete ui;
}

