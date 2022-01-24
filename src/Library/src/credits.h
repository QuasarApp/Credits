//#
//# Copyright (C) 2018-2021 QuasarApp.
//# Distributed under the lgplv3 software license, see the accompanying
//# Everyone is permitted to copy and distribute verbatim copies
//# of this license document, but changing it is not allowed.
//#


#ifndef CREDITS_H
#define CREDITS_H

#include "credits_global.h"

class QQmlApplicationEngine;

inline void initCreditsResources() { Q_INIT_RESOURCE(QuasarAppCredits); }

/**
 * This name space contains classes for view credits page of the QuasarApp group.
 * Join the development fund and support QuasarApp to help with the development of our projects.
 *
 * <a href="https://www.patreon.com/bePatron?u=9304737">Join in patreon</a>
 *
 * If you would like to use bitcoins to support us, you can transfer coins to these address.
 * If you want to be included in the patron list, send an e-mail message - QuasarApp@yandex.by.
 *
 * @note You must send a message signed with address of the bitcoin wallet from which the payment was made.
 *
 * bitcoin:bc1q4wnp58plhx4fwnfnzz3e4slulv2gzzts89w2f7
 *
 *
 */
namespace QuasarAppCredits {

/**
 * @brief init This method inits Credits resources and credits models classes.
 * @return true if all resources inited successfull
 */
bool QUASARAPP_CREDITS_EXPORT init(QQmlApplicationEngine *engine);


}


#endif // CREDITS_H
