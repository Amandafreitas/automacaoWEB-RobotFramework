*** Settings ***

Library    SeleniumLibrary


### DATA
Resource    data/geral.robot

### PAGES
Resource    pages/auth_cellphone_page.robot
Resource    pages/block_page.robot
Resource    pages/login_page.robot

## SHARED
Resource    shared/setup_teardown.robot