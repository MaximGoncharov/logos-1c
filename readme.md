# Логирование в стиле log4j

Доработка проекта https://github.com/silverbulleters/logos-1c


## Изменено, добавлено

- У каждого пользователя базы 1С могут быть свои настройки логов, у пользователя может быть одновременно несколько разных логов 
- При выводе лог в файл изменен завхват файла, захват файла происходит только в момент добавления сообщения
- Добавлен пример работы менеджера логов как с одним экземпляром на сеанс (singleton)
- Добавлен конструктор(обработка) для формирования настроек логов
- Добавлено в описание настроек добавлены конструкции @tree для включение иерархического вывода
- Добавлено в описание настроек добавлены конструкции @DetailCollection для расшифровки содержимого коллекций, переданных в сообщение
- Добавлены методы в менеджер логов для построения многоуровневого списка сообщений логов
- Добавлена демо-обработка по работе встроенных в конфигурацию журналов логов

