#!/bin/bash

. bunity

function test_equals_ok {
	local expected="Bunity is great!"
	local obtained=$(echo "Bunity is great!")
	assert_equals "${expected}" "${obtained}"
}

function test_equals_nok {
	local expected="Bunity is great!"
	local obtained=$(echo "Bunity is not so great...")
	assert_equals "${expected}" "${obtained}"
}

setup
test_equals_ok
test_equals_nok
teardown