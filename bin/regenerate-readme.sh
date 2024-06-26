#!/usr/bin/env bash

BASEPATH=$(cd `dirname $0`; cd ../src/; pwd)
REPOS=$(ls $BASEPATH)

# https://poser.pugx.org/show/hyperf-component/components

function github_actions() {
    echo "[![Latest Test](https://github.com/hyperf-component/$1/workflows/tests/badge.svg)](https://github.com/hyperf-component/$1/actions)"
}

function repository() {
    echo "[$1](https://github.com/hyperf-component/$1)"
}

function latest_stable_version() {
    echo "[![Latest Stable Version](https://poser.pugx.org/hyperf-component/$1/v)](https://packagist.org/packages/hyperf-component/$1)"
}

function latest_unstable_version() {
    echo "[![Latest Unstable Version](https://poser.pugx.org/hyperf-component/$1/v/unstable)](https://packagist.org/packages/hyperf-component/$1)"
}

function total_downloads() {
    echo "[![Total Downloads](https://poser.pugx.org/hyperf-component/$1/downloads)](https://packagist.org/packages/hyperf-component/$1)"
}

function monthly_downloads() {
    echo "[![Monthly Downloads](https://poser.pugx.org/hyperf-component/$1/d/monthly)](https://packagist.org/packages/hyperf-component/$1)"
}

function daily_downloads() {
    echo "[![Daily Downloads](https://poser.pugx.org/hyperf-component/$1/d/daily)](https://packagist.org/packages/hyperf-component/$1)"
}

function php_version_require() {
    echo "[![PHP Version Require](https://poser.pugx.org/hyperf-component/$1/require/php)](https://packagist.org/packages/hyperf-component/$1)"
}

function license() {
    echo "[![License](https://poser.pugx.org/hyperf-component/$1/license)](https://packagist.org/packages/hyperf-component/$1)"
}

echo "# hyperf-component/components"
echo 
printf "%s %s %s %s\n" \
    "$(github_actions components)" \
    "$(latest_stable_version components)" \
    "$(license components)" \
    "$(php_version_require components)"
echo
echo "Components for Hyperf."
echo 
echo "## Repositories"
echo
echo "|Repository|Stable Version|"
echo "|--|--|"

for REPO in ${REPOS}; do
    printf "|%s|%s|%s|%s|%s|\n" \
        "$(repository ${REPO})"
done

echo
