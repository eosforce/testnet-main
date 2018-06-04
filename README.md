# testnet-v0.5

Welcome to EOS Force Testnet v0.5!

EOS Force is an EOSIO software based blockchain focusing on the security and stablity of chain.

[Learn more about EOS Force](https://github.com/eosforce/System)(Chinese only).

## Run a node via Docker

- Clone this project:

    ```bash
    $ git clone https://github.com/eosforce/testnet-v0.5.git
    $ cd testnet-v0.5
    ```

- Modify the lines with `NOTE:` mark in `config.ini` accordingly, then copy the revised `config.ini` to `/data/eosforce`:

    ```bash
    $ mkdir -p /data/eosforce
    # Copy the modified config.ini to /data/eosforce
    $ cp config.ini /data/eosforce
    ```

- Copy `genesis.json` to `/data/eosforce`:

    ```bash
    $ cp genesis.json /data/eosforce
    ```

- Start a node with docker:

    ```bash
    $ mkdir -p /data/nodeos/eosforce
    $ docker run -d --restart=always --name eosforce -v /data/eosforce:/opt/eosio/bin/data-dir -v /data/nodeos/eosforce:/root/.local/share/eosio/nodeos -p 8888:8888 -p 9876:9876 eosforce/eos:20180603 nodeosd.sh
    ```

- Docker status:

    - `docker container ls`: check if the container is running.
    - `docker logs -f eosforce`: check the log of container `eosforce`.

## Register as a BP

Refer to [command reference](https://github.com/eosforce/System/tree/master/src#command-reference) for the related commands for BP registration.

## Contact

- Telegram: https://t.me/EOSForce
