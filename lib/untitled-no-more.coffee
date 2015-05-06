module.exports = UntitledNoMore =
  activate: (state) ->
    # solution from mpeterson2's save-session package
    # https://github.com/mpeterson2/save-session

    _open = atom.workspace.constructor.prototype.open

    tempFunc = (path, options) =>
      atom.workspace.constructor.prototype.open = _open
      atom.workspace.open(path, options) if path?

    atom.workspace.constructor.prototype.open = tempFunc
