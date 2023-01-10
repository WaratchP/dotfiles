#!/usr/bin/python3

from task_proj_stuck import get_stuck_proj_ids


class Keybinding:
    def replacements(self):
        def _custom_match(variable):
            if variable == "STUCK_PROJS":
                return [variable]

        def _custom_replace(task, arg):
            if arg == "STUCK_PROJS":
                return " ".join(list(get_stuck_proj_ids()))

        return [
            {
                "match_callback": _custom_match,
                "replacement_callback": _custom_replace,
            },
        ]
