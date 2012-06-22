# Completion for [xp-framework][xp]

This is a plugin for [oh-my-zsh][oh-my-zsh].

## Sample input

Input: 

```sh
$ xpcli -<TAB>
```

Result:

```sh
$ xpcli -                                                                                  ✘
option
-c   -- Add the path to the PropertyManager sources.
-cp  -- Add the path value to the class path.
-v   -- Enable verbosity.
```

Input:

```sh
$ xpcli d.m.<TAB>
```

Result:

```sh
$ xpcli de.matrixcode.experiments.scriptlet.
```

Input:

```sh
$ xpcli de.matrixcode.experiments.scriptlet.<TAB>
```

Result:

```sh
$ xpcli de.matrixcode.experiments.scriptlet.
xp-framework class
de.matrixcode.experiments.scriptlet.ExportScriptlet
de.matrixcode.experiments.scriptlet.WebsiteScriptlet
de.matrixcode.experiments.scriptlet.state.HomeState
de.matrixcode.experiments.scriptlet.state.StreamsState
```


[xp]: http://xp-framework.net/ "xp-framework"
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh "A community-driven framework for managing your zsh configuration."
