https://getgrav.org/blog/macos-bigsur-apache-multiple-php-versions

https://getgrav.org/blog/macos-bigsur-apache-mysql-vhost-apc

```shell
pecl uninstall -r imagick && pecl install imagick && \
pecl uninstall -r yaml    && pecl install yaml && \
pecl uninstall -r xdebug  && pecl install xdebug && \
pecl uninstall -r apcu    && pecl install apcu
````

However, Xdebug version 3.0 (ie, PHP 7.2+) has a simplified syntax and should look like this:

[xdebug]
zend_extension="xdebug.so"
xdebug.mode=debug
