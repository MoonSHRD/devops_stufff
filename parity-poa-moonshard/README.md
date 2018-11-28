# parity-poa-moonshard

Внимание! В репозитории находится куча приватных ключей, которые можно использовать для тестирования!
Скелет взят из [этого репозитория](https://github.com/orbita-center/parity-poa-playground), все эти приватные ключи также лежат там.
Конфигурация сети лежит в `parity/config/chain.json`, приватные ключи к аккаунтам лежат в `parity/keys/`, эти аккаунты можно использовать как авторити-аккаунты и указывать в переменных AUTHORITY*_SIGNER_ACC.
В конфиге сети сейчас указаны:
 - AUTHORITY0_SIGNER_ACC=0x00bd138abd70e2f00903268f3db08f2d25677c9e
 - AUTHORITY1_SIGNER_ACC=0x00aa39d30f0d20ff03a22ccfc30b7efbfca597c2
 - AUTHORITY2_SIGNER_ACC=0x002e28950558fbede1a9675cb113f0bd20912019
Позднее будут стабильные скрипты генерации ключей и аккаунтов.

## Состав:
- [Parity](https://github.com/paritytech/parity-ethereum): Три Authority-ноды, одна Member-нода.
- Монитор и дэшборд для Ethereum-сети [eth-netstats](https://github.com/cubedro/eth-netstats)
- Блок-эксплорер [Etherchain-light](https://github.com/paritytech/etherchain-light)

## Сборка:
0. Установите Docker и Docker-Compose.
1. Создайте Linux-юзера `parity` в системе для запуска нод: `useradd -M parity`
2. Смените владельца директории данных parity: `chown parity:parity parity -R`
3. Создайте файл переменных `.env`, формата VARIABLE_NAME=VARIABLE_VALUE, по одной на строку, со следующими переменными:
  - `PARITY_VERSION` - укажите "stable" для последней стабильной, или гитхаб-тэг формата "v2.0.6" из [репозитория Parity](https://github.com/paritytech/parity-ethereum)
  - `PARITY_USER_ID` - укажите UID созданного Linux-юзера, команда `id -u parity`
  - `AUTHORITY0_SIGNER_ACC` - Ethereum-адрес для подписи authority-ноды authority0
  - `AUTHORITY1_SIGNER_ACC` - Ethereum-адрес для подписи authority-ноды authority1
  - `AUTHORITY2_SIGNER_ACC` - Ethereum-адрес для подписи authority-ноды authority2
4. Выполните `docker-compose up`, дождитесь сборки и наслаждайтесь сетапом.
