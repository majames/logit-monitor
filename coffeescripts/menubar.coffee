$ = window.require('jquery')
nw = window.require('nw.gui')

$ ->

  # Create a system menubar object
  windowMenu = new nw.Menu { type: 'menubar' }

  # File menu
  fileMenu = new nw.Menu()

  fileMenu.append(new nw.MenuItem(
    label: 'Open'
    click: ->
      window.alert('Unimplemented Menu Option')
    )
  )

  fileMenu.append(new nw.MenuItem(
    label: 'Save As...'
    click: ->
      window.alert('Unimplemented Menu Option')
    )
  )

  fileMenu.append(new nw.MenuItem(
    label: 'Exit'
    click: ->
      window.alert('Unimplemented Menu Option')
    )
  )

  # View menu
  viewMenu = new nw.Menu()

  channelMenu = new nw.Menu()

  viewMenu.append(new nw.MenuItem(
    label: 'Channel Selection'
    submenu: channelMenu
    )
  )

  # Tools menu
  toolsMenu = new nw.Menu()

  # Cursors tool
  cursorMenu = new nw.Menu()

  cursorMenu.append(new nw.MenuItem(
    type: 'checkbox'
    label: 'Cursor 1'
    click: ->
      window.alert('Unimplemented Menu Option')
    )
  )

  cursorMenu.append(new nw.MenuItem(
    type: 'checkbox'
    label: 'Cursor 2'
    click: ->
      window.alert('Unimplemented Menu Option')
    )
  )

  toolsMenu.append(new nw.MenuItem(
    label: 'Cursors'
    submenu: cursorMenu
    )
  )

  # Battery monitor tool
  toolsMenu.append(new nw.MenuItem(
    label: 'Battery Monitor'
    click: ->
      window.alert('Unimplemented Menu Option')
    )
  )

  # Alarm tool
  toolsMenu.append(new nw.MenuItem(
    label: 'Alarms'
    click: ->
      window.alert('Unimplemented Menu Option')
    )
  )

  # Help menu
  helpMenu = new nw.Menu()

  helpMenu.append(new nw.MenuItem(
    label: 'About',
    click: ->
      window.alert('Unimplemented Menu Option')
    )
  )

  # Add the menus to the system menu bar
  windowMenu.append(new nw.MenuItem(
      label: 'File',
      submenu: fileMenu
    )
  )
  windowMenu.append(new nw.MenuItem(
      label: 'View',
      submenu: viewMenu
    )
  )
  windowMenu.append(new nw.MenuItem(
      label: 'Tools',
      submenu: toolsMenu
    )
  )
  windowMenu.append(new nw.MenuItem(
      label: 'Help',
      submenu: helpMenu
    )
  )

  # set the main menu bar
  nw.Window.get().menu = windowMenu
