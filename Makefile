BUNDLE=$(shell which bundle)

install:
	$(BUNDLE) install

run_unicorn: log
	$(BUNDLE) exec unicorn -c unicorn.rb

log:
	mkdir -p $@

run_puma:
	$(BUNDLE) exec puma ./app.rb 
