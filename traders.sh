. ../env.sh

./bisq-desktop --seedNodes=localhost:2002 --useLocalhostForP2P=true --useTorForBtc=false --baseCurrencyNetwork=BTC_REGTEST --useDevPrivilegeKeys=true  --nodePort=5555 --appName=bisq-BTC_REGTEST_Alice &
 ./bisq-desktop --seedNodes=localhost:2002 --useLocalhostForP2P=true --useTorForBtc=false --baseCurrencyNetwork=BTC_REGTEST --useDevPrivilegeKeys=true  --nodePort=6666 --appName=bisq-BTC_REGTEST_Bob &
