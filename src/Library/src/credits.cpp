#include "credits.h"
#include <QQmlContext>
#include <QQmlApplicationEngine>

namespace QuasarAppCredits {

bool init(QQmlApplicationEngine * engine) {

    if (!engine)
        return false;

    auto root = engine->rootContext();
    if (!root)
        return false;

    initCreditsResources();

    engine->addImportPath(":/");


    return true;
}
}
