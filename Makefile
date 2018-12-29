BUNDLE=bundle

install:
	$(BUNDLE) install --path vendor/bundle

run_unicorn: log
	$(BUNDLE) exec unicorn -c unicorn.rb

log:
	mkdir -p $@

run_puma:
	$(BUNDLE) exec puma --config ./puma.rb
