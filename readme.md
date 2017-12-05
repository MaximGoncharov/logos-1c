# Логирование в стиле log4j

Доработка проекта https://github.com/silverbulleters/logos-1c


## Изменено, добавлено

- У каждого пользователя базы 1С могут быть свои настройки логов, У пользователя может быть одновременно несколько разных логов 
- При выводе лог в файл изменено завхват файла, захват файла происходит только в момент добавлении сообщения
- Добавлен пример работы менеджера логов как с одним экземпляром на сеанс (singleton)
- Добавлен конструктор(обработка) для формирования настроек логов
- Добавлены методы в менеджер логов для построения многоуровневого списка сообщений логов
- Добавлена демо-обработка по работе встроенных в конфигурацию журналов логгов

