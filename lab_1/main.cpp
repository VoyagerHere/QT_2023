#include <QApplication>
#include <QPushButton>
#include <QLabel>
#include <QVBoxLayout>
#include <QWidget>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QWidget window;

    QLabel *counterLabel = new QLabel("0");
    QPushButton *button = new QPushButton("Increase Counter");

    QObject::connect(button, &QPushButton::clicked, [counterLabel]() {
        int counter = counterLabel->text().toInt();
        counterLabel->setText(QString::number(counter + 1));
    });

    QVBoxLayout *layout = new QVBoxLayout;
    layout->addWidget(counterLabel);
    layout->addWidget(button);
    window.setLayout(layout);

    window.show();
    return app.exec();
}
