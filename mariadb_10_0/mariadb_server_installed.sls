
include:
    - mariadb_10_0.repo_installed
    - mysql.default_mysql_removed

mariadb_server_installed:
    pkg.installed:
        - pkgs:
            - MariaDB-client
            - MariaDB-server
        - require:
            - pkg: default_mysql_removed
            - pkgrepo: repo_installed