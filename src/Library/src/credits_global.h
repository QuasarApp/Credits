//#
//# Copyright (C) 2018-2024 QuasarApp.
//# Distributed under the lgplv3 software license, see the accompanying
//# Everyone is permitted to copy and distribute verbatim copies
//# of this license document, but changing it is not allowed.
//#

#ifndef QUASARAPP_CREDITS_GLOBAL_H
#define QUASARAPP_CREDITS_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(QUASARAPP_CREDITS_LIBRARY)
#  define QUASARAPP_CREDITS_EXPORT Q_DECL_EXPORT
#else
#  define QUASARAPP_CREDITS_EXPORT Q_DECL_IMPORT
#endif

#endif //QUASARAPP_CREDITS_GLOBAL_H

