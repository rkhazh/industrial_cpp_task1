.PHONY: build test lcov del rebuild start integration_test
build:
	mkdir build
	cd build && cmake ../
	cd build && make
test:
	cd build/test && ./test_graph_calc
lcov:
	cd build && 											\
	lcov -t "test/test_graph_calc" -o Cov.info -c -d . &&		\
	genhtml -o report Cov.info
del:
	rm -rf build
rebuild:
	make del
	make build
start:
	cd build && ./solution
integration_test:
	python3 test/test.py ./inp/test.txt
