# alive-monitoring-for-own-free-domains

無料のドメインが1日1回アクセスしづけないと無効化されてしまうこと防ぐため、launchd向けの死活監視ツールを作る。

## How to use

1. 本リポジトリをクローンする
2. `/Library/LaunchDaemon` にplistファイルをコピーする

    ```sh
    sudo cp com.gmail.bumpbumpbump.v.domain.alive.monitoring.plist Library/LaunchDaemons
    ```

3. 権限と所有者を変更する

    ```sh
    sudo chmod 644 /Library/LaunchDaemons/com.gmail.bumpbumpbump.v.domainalive.monitoring.plist
    sudo chown root:wheel /Library/LaunchDaemons/com.gmail.bumpbumpbump.vdomain.alive.monitoring.plist
    ```

4. `/Library/Scripts/tkm/DomainAliveMonitoring` を新しく作成する

    ```sh
    sudo mkdir -p Scripts/tkm/DomainAliveMonitoring
    ```

5. `/Library/Scripts/tkm/DomainAliveMonitoring` にスクリプトをコピーする

    ```sh
    sudo cp alive_monitoring.sh /Library/Scripts/tkm/DomainAliveMonitoring
    ```

6. 権限と所有者を変更する

    ```sh
    sudo chmod 544 /Library/Scripts/tkm/DomainAliveMonitoring/alive_monitoring.sh
    sudo chown root:wheel /Library/Scripts/tkm/DomainAliveMonitoring/alive_monitoring.sh
    ```

## 参考資料

1. https://qiita.com/spc_gmorimoto/items/b7ba5d69a00e277bb259
2. https://support.apple.com/ja-jp/guide/terminal/apdc6c1077b-5d5d-4d35-9c19-60f2397b2369/mac
3. https://www.launchd.info/
4. https://qiita.com/koara-local/items/185838ea3fa37d9007f7
