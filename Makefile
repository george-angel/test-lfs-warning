hooks-install:
	-rm .git/hooks/pre-commit
	(cd .git/hooks/ && ln -s ../../scripts/pre-commit pre-commit)

hooks-pre-commit-run:
	@AGAINST="origin/master" \
	./scripts/pre-commit
