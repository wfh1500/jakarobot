/****************************************************************************
** Meta object code from reading C++ file 'main_window.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jaka_jog_panel/include/jaka_jog_panel/main_window.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'main_window.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Jaka_jog_panel__MainWindow_t {
    QByteArrayData data[41];
    char stringdata0[903];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Jaka_jog_panel__MainWindow_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Jaka_jog_panel__MainWindow_t qt_meta_stringdata_Jaka_jog_panel__MainWindow = {
    {
QT_MOC_LITERAL(0, 0, 26), // "Jaka_jog_panel::MainWindow"
QT_MOC_LITERAL(1, 27, 21), // "on_joint1Left_pressed"
QT_MOC_LITERAL(2, 49, 0), // ""
QT_MOC_LITERAL(3, 50, 22), // "on_joint1Right_pressed"
QT_MOC_LITERAL(4, 73, 21), // "on_joint2Left_pressed"
QT_MOC_LITERAL(5, 95, 22), // "on_joint2Right_pressed"
QT_MOC_LITERAL(6, 118, 21), // "on_joint3Left_pressed"
QT_MOC_LITERAL(7, 140, 22), // "on_joint3Right_pressed"
QT_MOC_LITERAL(8, 163, 21), // "on_joint4Left_pressed"
QT_MOC_LITERAL(9, 185, 22), // "on_joint4Right_pressed"
QT_MOC_LITERAL(10, 208, 21), // "on_joint5Left_pressed"
QT_MOC_LITERAL(11, 230, 22), // "on_joint5Right_pressed"
QT_MOC_LITERAL(12, 253, 21), // "on_joint6Left_pressed"
QT_MOC_LITERAL(13, 275, 22), // "on_joint6Right_pressed"
QT_MOC_LITERAL(14, 298, 22), // "on_joint1Left_released"
QT_MOC_LITERAL(15, 321, 23), // "on_joint1Right_released"
QT_MOC_LITERAL(16, 345, 22), // "on_joint2Left_released"
QT_MOC_LITERAL(17, 368, 23), // "on_joint2Right_released"
QT_MOC_LITERAL(18, 392, 22), // "on_joint3Left_released"
QT_MOC_LITERAL(19, 415, 23), // "on_joint3Right_released"
QT_MOC_LITERAL(20, 439, 22), // "on_joint4Left_released"
QT_MOC_LITERAL(21, 462, 23), // "on_joint4Right_released"
QT_MOC_LITERAL(22, 486, 22), // "on_joint5Left_released"
QT_MOC_LITERAL(23, 509, 23), // "on_joint5Right_released"
QT_MOC_LITERAL(24, 533, 22), // "on_joint6Left_released"
QT_MOC_LITERAL(25, 556, 23), // "on_joint6Right_released"
QT_MOC_LITERAL(26, 580, 28), // "on_joint1Slider_valueChanged"
QT_MOC_LITERAL(27, 609, 5), // "value"
QT_MOC_LITERAL(28, 615, 28), // "on_joint2Slider_valueChanged"
QT_MOC_LITERAL(29, 644, 28), // "on_joint3Slider_valueChanged"
QT_MOC_LITERAL(30, 673, 28), // "on_joint4Slider_valueChanged"
QT_MOC_LITERAL(31, 702, 28), // "on_joint5Slider_valueChanged"
QT_MOC_LITERAL(32, 731, 28), // "on_joint6Slider_valueChanged"
QT_MOC_LITERAL(33, 760, 13), // "timer_timeout"
QT_MOC_LITERAL(34, 774, 20), // "Jog_Command_Callback"
QT_MOC_LITERAL(35, 795, 15), // "ros::Publisher&"
QT_MOC_LITERAL(36, 811, 7), // "Publish"
QT_MOC_LITERAL(37, 819, 25), // "on_connect_button_pressed"
QT_MOC_LITERAL(38, 845, 28), // "on_disconnect_button_pressed"
QT_MOC_LITERAL(39, 874, 23), // "on_lineEdit_textChanged"
QT_MOC_LITERAL(40, 898, 4) // "arg1"

    },
    "Jaka_jog_panel::MainWindow\0"
    "on_joint1Left_pressed\0\0on_joint1Right_pressed\0"
    "on_joint2Left_pressed\0on_joint2Right_pressed\0"
    "on_joint3Left_pressed\0on_joint3Right_pressed\0"
    "on_joint4Left_pressed\0on_joint4Right_pressed\0"
    "on_joint5Left_pressed\0on_joint5Right_pressed\0"
    "on_joint6Left_pressed\0on_joint6Right_pressed\0"
    "on_joint1Left_released\0on_joint1Right_released\0"
    "on_joint2Left_released\0on_joint2Right_released\0"
    "on_joint3Left_released\0on_joint3Right_released\0"
    "on_joint4Left_released\0on_joint4Right_released\0"
    "on_joint5Left_released\0on_joint5Right_released\0"
    "on_joint6Left_released\0on_joint6Right_released\0"
    "on_joint1Slider_valueChanged\0value\0"
    "on_joint2Slider_valueChanged\0"
    "on_joint3Slider_valueChanged\0"
    "on_joint4Slider_valueChanged\0"
    "on_joint5Slider_valueChanged\0"
    "on_joint6Slider_valueChanged\0timer_timeout\0"
    "Jog_Command_Callback\0ros::Publisher&\0"
    "Publish\0on_connect_button_pressed\0"
    "on_disconnect_button_pressed\0"
    "on_lineEdit_textChanged\0arg1"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Jaka_jog_panel__MainWindow[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      35,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,  189,    2, 0x08 /* Private */,
       3,    0,  190,    2, 0x08 /* Private */,
       4,    0,  191,    2, 0x08 /* Private */,
       5,    0,  192,    2, 0x08 /* Private */,
       6,    0,  193,    2, 0x08 /* Private */,
       7,    0,  194,    2, 0x08 /* Private */,
       8,    0,  195,    2, 0x08 /* Private */,
       9,    0,  196,    2, 0x08 /* Private */,
      10,    0,  197,    2, 0x08 /* Private */,
      11,    0,  198,    2, 0x08 /* Private */,
      12,    0,  199,    2, 0x08 /* Private */,
      13,    0,  200,    2, 0x08 /* Private */,
      14,    0,  201,    2, 0x08 /* Private */,
      15,    0,  202,    2, 0x08 /* Private */,
      16,    0,  203,    2, 0x08 /* Private */,
      17,    0,  204,    2, 0x08 /* Private */,
      18,    0,  205,    2, 0x08 /* Private */,
      19,    0,  206,    2, 0x08 /* Private */,
      20,    0,  207,    2, 0x08 /* Private */,
      21,    0,  208,    2, 0x08 /* Private */,
      22,    0,  209,    2, 0x08 /* Private */,
      23,    0,  210,    2, 0x08 /* Private */,
      24,    0,  211,    2, 0x08 /* Private */,
      25,    0,  212,    2, 0x08 /* Private */,
      26,    1,  213,    2, 0x08 /* Private */,
      28,    1,  216,    2, 0x08 /* Private */,
      29,    1,  219,    2, 0x08 /* Private */,
      30,    1,  222,    2, 0x08 /* Private */,
      31,    1,  225,    2, 0x08 /* Private */,
      32,    1,  228,    2, 0x08 /* Private */,
      33,    0,  231,    2, 0x08 /* Private */,
      34,    1,  232,    2, 0x08 /* Private */,
      37,    0,  235,    2, 0x08 /* Private */,
      38,    0,  236,    2, 0x08 /* Private */,
      39,    1,  237,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   27,
    QMetaType::Void, QMetaType::Int,   27,
    QMetaType::Void, QMetaType::Int,   27,
    QMetaType::Void, QMetaType::Int,   27,
    QMetaType::Void, QMetaType::Int,   27,
    QMetaType::Void, QMetaType::Int,   27,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 35,   36,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   40,

       0        // eod
};

void Jaka_jog_panel::MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MainWindow *_t = static_cast<MainWindow *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->on_joint1Left_pressed(); break;
        case 1: _t->on_joint1Right_pressed(); break;
        case 2: _t->on_joint2Left_pressed(); break;
        case 3: _t->on_joint2Right_pressed(); break;
        case 4: _t->on_joint3Left_pressed(); break;
        case 5: _t->on_joint3Right_pressed(); break;
        case 6: _t->on_joint4Left_pressed(); break;
        case 7: _t->on_joint4Right_pressed(); break;
        case 8: _t->on_joint5Left_pressed(); break;
        case 9: _t->on_joint5Right_pressed(); break;
        case 10: _t->on_joint6Left_pressed(); break;
        case 11: _t->on_joint6Right_pressed(); break;
        case 12: _t->on_joint1Left_released(); break;
        case 13: _t->on_joint1Right_released(); break;
        case 14: _t->on_joint2Left_released(); break;
        case 15: _t->on_joint2Right_released(); break;
        case 16: _t->on_joint3Left_released(); break;
        case 17: _t->on_joint3Right_released(); break;
        case 18: _t->on_joint4Left_released(); break;
        case 19: _t->on_joint4Right_released(); break;
        case 20: _t->on_joint5Left_released(); break;
        case 21: _t->on_joint5Right_released(); break;
        case 22: _t->on_joint6Left_released(); break;
        case 23: _t->on_joint6Right_released(); break;
        case 24: _t->on_joint1Slider_valueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 25: _t->on_joint2Slider_valueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 26: _t->on_joint3Slider_valueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 27: _t->on_joint4Slider_valueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 28: _t->on_joint5Slider_valueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 29: _t->on_joint6Slider_valueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 30: _t->timer_timeout(); break;
        case 31: _t->Jog_Command_Callback((*reinterpret_cast< ros::Publisher(*)>(_a[1]))); break;
        case 32: _t->on_connect_button_pressed(); break;
        case 33: _t->on_disconnect_button_pressed(); break;
        case 34: _t->on_lineEdit_textChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject Jaka_jog_panel::MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_Jaka_jog_panel__MainWindow.data,
      qt_meta_data_Jaka_jog_panel__MainWindow,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *Jaka_jog_panel::MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Jaka_jog_panel::MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Jaka_jog_panel__MainWindow.stringdata0))
        return static_cast<void*>(this);
    return QMainWindow::qt_metacast(_clname);
}

int Jaka_jog_panel::MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 35)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 35;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 35)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 35;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
