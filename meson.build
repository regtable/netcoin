
project('netcoin', 'cpp',
  version : '1.0',
  default_options : ['cpp_std=c++17'])

# Dependencies with exact versions
boost_dep = dependency('boost', version : '1.64.0', modules : ['system', 'filesystem', 'thread', 'program_options', 'chrono'])
openssl_dep = dependency('openssl', version : '1.0.2u')
berkeleydb_dep = dependency('db', version : '>=5.3')
qrencode_dep = dependency('qrencode', version : '>=3.4')
upnp_dep = dependency('libupnp', version : '>=1.6')

# Detecting platform-specific build flags
host_machine = host_machine.system()

# Windows-specific settings
if host_machine == 'windows'
  add_project_arguments('-DWIN32', language: 'cpp')
  add_project_link_arguments('-lws2_32', language: 'cpp')  # Linking with winsock
  add_project_link_arguments('-lssl -lcrypto', language: 'cpp')  # OpenSSL on Windows
endif

# List of all source files extracted from the .pro file
src = files(
  'src/netcoin.cpp',
  'src/wallet.cpp',
  'src/blockchain.cpp',
  'src/main.cpp',
  'src/util.cpp',
  'src/key.cpp',
  'src/keystore.cpp',
  'src/net.cpp',
  'src/txdb.cpp',
  'src/init.cpp',
  'src/walletdb.cpp',
  'src/rpcserver.cpp',
  'src/rpcclient.cpp',
  'src/rpcrawtransaction.cpp',
  'src/bitcoinrpc.cpp',
  'src/qt/bitcoin.cpp',
  'src/qt/optionsdialog.cpp',
  'src/qt/walletview.cpp',
  'src/qt/walletmodel.cpp',
  'src/qt/transactiontablemodel.cpp',
  'src/qt/addresstablemodel.cpp',
  'src/qt/bitcoinamountfield.cpp',
  'src/qt/bitcoingui.cpp'
)

# Build the executable
executable('netcoin', src, dependencies : [boost_dep, openssl_dep, berkeleydb_dep, qrencode_dep, upnp_dep])
