#!/bin/bash
export LANG=C.UTF-8


celery -A core worker -l INFO & celery -A core beat -l INFO 
