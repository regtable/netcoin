// Copyright (c) 2009-2010 Satoshi Nakamoto
// Copyright (c) 2009-2012 The Bitcoin developers
// Copyright (c) 2011-2012 Litecoin Developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.
#ifndef BITCOIN_INIT_H
#define BITCOIN_INIT_H
#include <stdint.h>
#include "wallet.h"

namespace boost {
    class thread_group;
} // namespace boost

extern CWallet* pwalletMain;
extern std::string strWalletFileName;
void StartShutdown();
bool ShutdownRequested();
void Shutdown();
bool AppInit2(std::thread_group &threadGroup);
std::string HelpMessage();

#endif
