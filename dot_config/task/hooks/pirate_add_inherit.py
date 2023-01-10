#!/bin/python

from tasklib import TaskWarrior

def hook_inherit(task):
    if task['project'] and task['type'] != 'objective':
        tw = TaskWarrior('/home/fg94x/.local/share/data')
        try:
            obj_task = tw.tasks.filter(type='objective', project=task['project'])[0]
        except:
            return

        for field in ('due', 'priority'):
            if not task[field] and obj_task[field]:
                task[field] = obj_task[field]
