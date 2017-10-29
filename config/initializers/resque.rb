# (c) goodprogrammer.ru
# Логгирование воркеров resque в папку с логами rails приложения
#
# config/initializers/resque.rb
Resque.logger = Logger.new(Rails.root.join('log', "#{Rails.env}_resque.log"))

# По умолчанию уровень логированя DEBUG, очень подробный
# Если проблем с фоновыми задачами нет, можете раскомментировать строку
# И понизить до INFO или WARN
Resque.logger.level = Logger::INFO