default: up

up:
	bundle exec rails s

c:
	bundle exec rails c

reset:
	bundle exec db:reset

migrate: 
	bundle exec rails db:migrate
