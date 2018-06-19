# testnet-main

Welcome to EOS Force Testnet! Currently the testnet version is v0.7.

EOS Force is an EOSIO software based blockchain focusing on the security and stablity.

[Learn more about EOS Force](https://github.com/eosforce/System).

## Run a node via Docker

- Clone this project:

    ```bash
    $ git clone https://github.com/eosforce/testnet-main.git
    $ cd testnet-main
    ```

- Modify the lines with `NOTE:` mark in `config.ini` accordingly, then copy the revised `config.ini` to `/data/eosforce`:

    ```bash
    $ mkdir -p /data/eosforce
    # Copy the modified config.ini to /data/eosforce
    $ cp config.ini /data/eosforce
    ```

- Copy `genesis.json`, `System.abi` and `System.wasm` to `/data/eosforce`:

    ```bash
    $ cp genesis.json System.abi System.wasm /data/eosforce
    ```

- Start a node with docker:

    ```bash
    $ mkdir -p /data/nodeos/eosforce
    $ docker run -d --restart=always --name eosforce -v /data/eosforce:/opt/eosio/bin/data-dir -v /data/nodeos/eosforce:/root/.local/share/eosio/nodeos -p 8888:8888 -p 9876:9876 eosforce/eos:v0.7 nodeosd.sh
    ```

- Docker status:

    - `docker container ls`: check if the container is running.
    - `docker logs -f eosforce`: check the log of container `eosforce`.

## Register as a BP

- First of all, create an account and a pair of EOS keys for your BP, which will be used to fill in the `producer-name` and `private-key` items, respectively.

- Since EOS Force does not offer users free services like EOSIO, you may need some testnet token to start your journey. Post your account name in our telegram group to get some token:

  - English: https://t.me/eosforce_en
  - Chinese: https://t.me/eosforce01

- Then register as a BP via [`updatebp`](https://github.com/eosforce/System/tree/master/src#updatebp). Check out if you are on the BP list with `get table eosio eosio bps` when you have succeeded to finish the BP registration .

- Lastly, call on your supporters to [`vote`](https://github.com/eosforce/System/tree/master/src#vote) for you! With enough votes, you should be able to participate in producing blocks.

Refer to [command reference](https://github.com/eosforce/System/tree/master/src#command-reference) for all the related commands for BP registration.

## Contact

- Telegram: https://t.me/EOSForce
