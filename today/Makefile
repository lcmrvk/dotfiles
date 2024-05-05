.PHONY: edit
edit:
	vim -O yesterday today tomorrow

.PHONY: plans
plans:
	./scripts/make-plans.sh

.PHONY: find_all
find_all:
	grep --color -Hirn "\[ \]" *.md
	
.PHONY: find_today
find_today:
	grep --color -Hirn "\[ \]" today || true

.PHONY: find_yesterday
find_yesterday:
	grep --color -Hin "\[ \]" yesterday || true

.PHONY: find_tomorrow
find_tomorrow:
	grep --color -Hin "\[ \]" tomorrow || true

.PHONY: find
find: find_today

.PHONY: all
all: plans
