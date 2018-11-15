#!/bin/bash

read -p "Are you sure to remove all chain data? Type 'yes' to confirm." ans
if [ $ans == 'yes' ]
then
	rm -rfv parity/data/authority0/*
	rm -rfv parity/data/authority1/*
	rm -rfv parity/data/authority2/*
	rm -rfv parity/data/member0/*
fi
