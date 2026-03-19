# Fish completions for cmux CLI
# https://github.com/grahamannett/cmux.fish

# Disable file completions by default for cmux (re-enabled for specific subcommands)
complete -c cmux -f

# ---------------------------------------------------------------------------
# Helper: list subcommands so we can use conditions like
#   __fish_seen_subcommand_from browser
# ---------------------------------------------------------------------------

set -l cmux_commands \
    version welcome shortcuts feedback themes claude-teams ping capabilities \
    identify list-windows current-window new-window focus-window close-window \
    move-workspace-to-window reorder-workspace workspace-action list-workspaces \
    new-workspace new-split list-panes list-pane-surfaces tree focus-pane \
    new-pane new-surface close-surface move-surface reorder-surface tab-action \
    rename-tab drag-surface-to-split refresh-surfaces surface-health trigger-flash \
    list-panels focus-panel close-workspace select-workspace rename-workspace \
    rename-window current-workspace read-screen send send-key send-panel \
    send-key-panel notify list-notifications clear-notifications claude-hook \
    set-status clear-status list-status set-progress clear-progress \
    log clear-log list-log sidebar-state set-app-focus simulate-app-active \
    capture-pane resize-pane pipe-pane wait-for swap-pane break-pane join-pane \
    next-window previous-window last-window last-pane find-window clear-history \
    set-hook popup bind-key unbind-key copy-mode set-buffer list-buffers \
    paste-buffer respawn-pane display-message markdown browser help

# ---------------------------------------------------------------------------
# Global options (available before any subcommand)
# ---------------------------------------------------------------------------
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -l password -d 'Socket authentication password'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -l id-format -d 'Output format for IDs' -xa 'refs uuids both'

# ---------------------------------------------------------------------------
# Top-level subcommands
# ---------------------------------------------------------------------------
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a version -d 'Show version'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a welcome -d 'Show welcome screen'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a shortcuts -d 'Show keyboard shortcuts'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a feedback -d 'Send feedback'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a themes -d 'List, set, or clear themes'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a claude-teams -d 'Launch Claude Teams'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a ping -d 'Ping the cmux socket'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a capabilities -d 'List supported capabilities'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a identify -d 'Identify current context'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a help -d 'Show help'

# Window commands
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a list-windows -d 'List all windows'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a current-window -d 'Show current window'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a new-window -d 'Create new window'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a focus-window -d 'Focus a window'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a close-window -d 'Close a window'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a next-window -d 'Switch to next window'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a previous-window -d 'Switch to previous window'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a last-window -d 'Switch to last window'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a find-window -d 'Find a window by query'

# Workspace commands
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a list-workspaces -d 'List all workspaces'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a new-workspace -d 'Create new workspace'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a close-workspace -d 'Close a workspace'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a select-workspace -d 'Select a workspace'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a rename-workspace -d 'Rename a workspace'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a current-workspace -d 'Show current workspace'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a workspace-action -d 'Trigger workspace action'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a move-workspace-to-window -d 'Move workspace to window'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a reorder-workspace -d 'Reorder a workspace'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a rename-window -d 'Rename a window'

# Pane commands
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a list-panes -d 'List panes'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a new-pane -d 'Create new pane'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a focus-pane -d 'Focus a pane'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a list-panels -d 'List panels'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a focus-panel -d 'Focus a panel'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a last-pane -d 'Switch to last pane'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a resize-pane -d 'Resize a pane'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a swap-pane -d 'Swap two panes'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a break-pane -d 'Break pane into workspace'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a join-pane -d 'Join pane into target'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a respawn-pane -d 'Respawn a pane'

# Surface commands
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a new-surface -d 'Create new surface'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a close-surface -d 'Close a surface'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a move-surface -d 'Move a surface'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a reorder-surface -d 'Reorder a surface'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a list-pane-surfaces -d 'List surfaces in pane'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a refresh-surfaces -d 'Refresh all surfaces'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a surface-health -d 'Show surface health'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a trigger-flash -d 'Flash a surface'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a drag-surface-to-split -d 'Drag surface to split direction'

# Split and tab commands
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a new-split -d 'Create new split'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a tab-action -d 'Trigger tab action'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a rename-tab -d 'Rename a tab'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a tree -d 'Show workspace tree'

# Terminal I/O commands
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a read-screen -d 'Read screen content'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a send -d 'Send text to surface'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a send-key -d 'Send key to surface'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a send-panel -d 'Send text to panel'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a send-key-panel -d 'Send key to panel'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a capture-pane -d 'Capture pane content'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a clear-history -d 'Clear scrollback history'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a pipe-pane -d 'Pipe pane output to command'

# Notification commands
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a notify -d 'Send notification'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a list-notifications -d 'List notifications'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a clear-notifications -d 'Clear notifications'

# Sidebar metadata commands
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a set-status -d 'Set sidebar status key'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a clear-status -d 'Clear sidebar status key'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a list-status -d 'List sidebar status'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a set-progress -d 'Set progress bar (0.0-1.0)'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a clear-progress -d 'Clear progress bar'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a log -d 'Write to sidebar log'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a clear-log -d 'Clear sidebar log'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a list-log -d 'List sidebar log entries'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a sidebar-state -d 'Show sidebar state'

# Claude / hook commands
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a claude-hook -d 'Trigger Claude hook event'

# Buffer commands
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a set-buffer -d 'Set buffer content'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a list-buffers -d 'List buffers'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a paste-buffer -d 'Paste buffer to surface'

# Misc commands
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a set-app-focus -d 'Set app focus state'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a simulate-app-active -d 'Simulate app active'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a wait-for -d 'Wait for signal'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a set-hook -d 'Set event hook'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a popup -d 'Show popup'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a bind-key -d 'Bind a key'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a unbind-key -d 'Unbind a key'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a copy-mode -d 'Enter copy mode'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a display-message -d 'Display a message'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a markdown -d 'Open markdown viewer'
complete -c cmux -n "not __fish_seen_subcommand_from $cmux_commands" -a browser -d 'Browser automation commands'

# ---------------------------------------------------------------------------
# Common options for subcommands
# ---------------------------------------------------------------------------

# --workspace is used by many commands
for cmd in identify list-panes list-pane-surfaces tree focus-pane new-pane new-surface close-surface \
    move-surface tab-action rename-tab surface-health trigger-flash list-panels focus-panel \
    close-workspace select-workspace rename-workspace rename-window read-screen send send-key \
    send-panel send-key-panel notify claude-hook set-status clear-status list-status set-progress \
    clear-progress log clear-log list-log sidebar-state capture-pane resize-pane pipe-pane \
    swap-pane break-pane join-pane last-pane clear-history paste-buffer respawn-pane \
    reorder-workspace workspace-action new-split move-workspace-to-window reorder-surface
    complete -c cmux -n "__fish_seen_subcommand_from $cmd" -l workspace -d 'Workspace ID or ref'
end

# --surface
for cmd in identify new-split close-surface tab-action rename-tab trigger-flash read-screen \
    send send-key notify claude-hook capture-pane pipe-pane break-pane join-pane clear-history \
    paste-buffer respawn-pane move-surface reorder-surface
    complete -c cmux -n "__fish_seen_subcommand_from $cmd" -l surface -d 'Surface ID or ref'
end

# --pane
for cmd in new-split list-pane-surfaces focus-pane new-surface move-surface break-pane join-pane \
    resize-pane swap-pane
    complete -c cmux -n "__fish_seen_subcommand_from $cmd" -l pane -d 'Pane ID or ref'
end

# --panel
for cmd in new-split focus-panel send-panel send-key-panel
    complete -c cmux -n "__fish_seen_subcommand_from $cmd" -l panel -d 'Panel ID or ref'
end

# --window
for cmd in focus-window close-window move-workspace-to-window reorder-workspace move-surface
    complete -c cmux -n "__fish_seen_subcommand_from $cmd" -l window -d 'Window ID or ref'
end

# --tab
for cmd in tab-action rename-tab
    complete -c cmux -n "__fish_seen_subcommand_from $cmd" -l tab -d 'Tab ID or ref'
end

# ---------------------------------------------------------------------------
# Subcommand-specific options
# ---------------------------------------------------------------------------

# feedback
complete -c cmux -n "__fish_seen_subcommand_from feedback" -l email -d 'Email address'
complete -c cmux -n "__fish_seen_subcommand_from feedback" -l body -d 'Feedback body text'
complete -c cmux -n "__fish_seen_subcommand_from feedback" -l image -rF -d 'Image path'

# themes
complete -c cmux -n "__fish_seen_subcommand_from themes" -a 'list set clear'

# identify
complete -c cmux -n "__fish_seen_subcommand_from identify" -l no-caller -d 'Exclude caller info'

# new-workspace
complete -c cmux -n "__fish_seen_subcommand_from new-workspace" -l cwd -rF -d 'Working directory'
complete -c cmux -n "__fish_seen_subcommand_from new-workspace" -l command -d 'Command to run'

# new-split / drag-surface-to-split
complete -c cmux -n "__fish_seen_subcommand_from new-split drag-surface-to-split" -a 'left right up down'

# new-pane
complete -c cmux -n "__fish_seen_subcommand_from new-pane" -l type -d 'Pane type' -xa 'terminal browser'
complete -c cmux -n "__fish_seen_subcommand_from new-pane" -l direction -d 'Split direction' -xa 'left right up down'
complete -c cmux -n "__fish_seen_subcommand_from new-pane" -l url -d 'URL for browser pane'

# new-surface
complete -c cmux -n "__fish_seen_subcommand_from new-surface" -l type -d 'Surface type' -xa 'terminal browser'
complete -c cmux -n "__fish_seen_subcommand_from new-surface" -l url -d 'URL for browser surface'

# move-surface
complete -c cmux -n "__fish_seen_subcommand_from move-surface" -l before -d 'Place before ID or ref'
complete -c cmux -n "__fish_seen_subcommand_from move-surface" -l after -d 'Place after ID or ref'
complete -c cmux -n "__fish_seen_subcommand_from move-surface" -l index -d 'Target index'
complete -c cmux -n "__fish_seen_subcommand_from move-surface" -l focus -d 'Focus after move' -xa 'true false'

# reorder-workspace / reorder-surface
for cmd in reorder-workspace reorder-surface
    complete -c cmux -n "__fish_seen_subcommand_from $cmd" -l index -d 'Target index'
    complete -c cmux -n "__fish_seen_subcommand_from $cmd" -l before -d 'Place before ID or ref'
    complete -c cmux -n "__fish_seen_subcommand_from $cmd" -l after -d 'Place after ID or ref'
end

# workspace-action / tab-action
complete -c cmux -n "__fish_seen_subcommand_from workspace-action tab-action" -l action -d 'Action name'
complete -c cmux -n "__fish_seen_subcommand_from workspace-action tab-action" -l title -d 'Title text'
complete -c cmux -n "__fish_seen_subcommand_from tab-action" -l url -d 'URL'

# tree
complete -c cmux -n "__fish_seen_subcommand_from tree" -l all -d 'Show all windows'

# read-screen / capture-pane
for cmd in read-screen capture-pane
    complete -c cmux -n "__fish_seen_subcommand_from $cmd" -l scrollback -d 'Include scrollback'
    complete -c cmux -n "__fish_seen_subcommand_from $cmd" -l lines -d 'Number of lines'
end

# notify
complete -c cmux -n "__fish_seen_subcommand_from notify" -l title -d 'Notification title'
complete -c cmux -n "__fish_seen_subcommand_from notify" -l subtitle -d 'Notification subtitle'
complete -c cmux -n "__fish_seen_subcommand_from notify" -l body -d 'Notification body'

# claude-hook
complete -c cmux -n "__fish_seen_subcommand_from claude-hook" -a 'session-start stop notification'

# set-status
complete -c cmux -n "__fish_seen_subcommand_from set-status" -l icon -d 'Icon name'
complete -c cmux -n "__fish_seen_subcommand_from set-status" -l color -d 'Color hex value'

# set-progress
# (takes a float 0.0-1.0 as positional arg)
complete -c cmux -n "__fish_seen_subcommand_from set-progress" -l label -d 'Progress label'

# log
complete -c cmux -n "__fish_seen_subcommand_from log" -l level -d 'Log level'
complete -c cmux -n "__fish_seen_subcommand_from log" -l source -d 'Source name'

# list-log
complete -c cmux -n "__fish_seen_subcommand_from list-log" -l limit -d 'Max entries'

# set-app-focus
complete -c cmux -n "__fish_seen_subcommand_from set-app-focus" -a 'active inactive clear'

# resize-pane
complete -c cmux -n "__fish_seen_subcommand_from resize-pane" -l amount -d 'Resize amount'
complete -c cmux -n "__fish_seen_subcommand_from resize-pane" -s L -d 'Resize left'
complete -c cmux -n "__fish_seen_subcommand_from resize-pane" -s R -d 'Resize right'
complete -c cmux -n "__fish_seen_subcommand_from resize-pane" -s U -d 'Resize up'
complete -c cmux -n "__fish_seen_subcommand_from resize-pane" -s D -d 'Resize down'

# pipe-pane
complete -c cmux -n "__fish_seen_subcommand_from pipe-pane" -l command -d 'Shell command'

# wait-for
complete -c cmux -n "__fish_seen_subcommand_from wait-for" -s S -l signal -d 'Signal the channel'
complete -c cmux -n "__fish_seen_subcommand_from wait-for" -l timeout -d 'Timeout in seconds'

# swap-pane
complete -c cmux -n "__fish_seen_subcommand_from swap-pane" -l target-pane -d 'Target pane ID or ref'

# break-pane / join-pane
complete -c cmux -n "__fish_seen_subcommand_from break-pane join-pane" -l no-focus -d 'Do not focus after'
complete -c cmux -n "__fish_seen_subcommand_from join-pane" -l target-pane -d 'Target pane ID or ref'

# find-window
complete -c cmux -n "__fish_seen_subcommand_from find-window" -l content -d 'Search content'
complete -c cmux -n "__fish_seen_subcommand_from find-window" -l select -d 'Auto-select match'

# set-hook
complete -c cmux -n "__fish_seen_subcommand_from set-hook" -l list -d 'List hooks'
complete -c cmux -n "__fish_seen_subcommand_from set-hook" -l unset -d 'Unset hook for event'

# set-buffer
complete -c cmux -n "__fish_seen_subcommand_from set-buffer paste-buffer" -l name -d 'Buffer name'

# respawn-pane
complete -c cmux -n "__fish_seen_subcommand_from respawn-pane" -l command -d 'Command to run'

# display-message
complete -c cmux -n "__fish_seen_subcommand_from display-message" -s p -l print -d 'Print to stdout'

# markdown -- enable file completions
complete -c cmux -n "__fish_seen_subcommand_from markdown" -a open -d 'Open markdown file'
complete -c cmux -n "__fish_seen_subcommand_from markdown" -F

# ---------------------------------------------------------------------------
# browser subcommands
# ---------------------------------------------------------------------------
set -l browser_commands \
    open open-split goto navigate back forward reload url get-url snapshot eval \
    wait click dblclick hover focus check uncheck scroll-into-view type fill \
    press keydown keyup select scroll screenshot get is find frame dialog \
    download cookies storage tab console errors highlight state addinitscript \
    addscript addstyle identify

complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a open -d 'Open browser (or navigate existing)'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a open-split -d 'Open browser in split'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a goto -d 'Navigate to URL'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a navigate -d 'Navigate to URL'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a back -d 'Go back'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a forward -d 'Go forward'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a reload -d 'Reload page'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a url -d 'Get current URL'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a get-url -d 'Get current URL'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a snapshot -d 'Take DOM snapshot'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a eval -d 'Evaluate JavaScript'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a wait -d 'Wait for condition'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a click -d 'Click element'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a dblclick -d 'Double-click element'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a hover -d 'Hover over element'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a focus -d 'Focus element'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a check -d 'Check checkbox'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a uncheck -d 'Uncheck checkbox'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a scroll-into-view -d 'Scroll element into view'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a type -d 'Type text into element'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a fill -d 'Fill input element'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a press -d 'Press key'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a keydown -d 'Key down event'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a keyup -d 'Key up event'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a select -d 'Select option'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a scroll -d 'Scroll page'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a screenshot -d 'Take screenshot'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a get -d 'Get page property'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a is -d 'Check element state'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a find -d 'Find element by role/text'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a frame -d 'Switch iframe context'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a dialog -d 'Handle dialog'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a download -d 'Download file'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a cookies -d 'Manage cookies'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a storage -d 'Manage storage'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a tab -d 'Manage browser tabs'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a console -d 'View console output'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a errors -d 'View page errors'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a highlight -d 'Highlight element'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a state -d 'Save/load browser state'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a addinitscript -d 'Add init script'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a addscript -d 'Add script'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a addstyle -d 'Add CSS style'
complete -c cmux -n "__fish_seen_subcommand_from browser; and not __fish_seen_subcommand_from $browser_commands" -a identify -d 'Identify browser surface'

# browser --surface (global for browser subcommand)
complete -c cmux -n "__fish_seen_subcommand_from browser" -l surface -d 'Browser surface ID or ref'

# browser snapshot options
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from snapshot" -s i -l interactive -d 'Interactive mode'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from snapshot" -l cursor -d 'Include cursor'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from snapshot" -l compact -d 'Compact output'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from snapshot" -l max-depth -d 'Max DOM depth'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from snapshot" -l selector -d 'CSS selector scope'

# browser wait options
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from wait" -l selector -d 'Wait for CSS selector'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from wait" -l text -d 'Wait for text'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from wait" -l url-contains -d 'Wait for URL substring'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from wait" -l load-state -d 'Wait for load state' -xa 'interactive complete'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from wait" -l function -d 'Wait for JS function'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from wait" -l timeout-ms -d 'Timeout in milliseconds'

# browser --snapshot-after (shared by many interaction commands)
for cmd in goto navigate back forward reload click dblclick hover focus check uncheck scroll-into-view type fill press keydown keyup select scroll
    complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from $cmd" -l snapshot-after -d 'Snapshot after action'
end

# browser screenshot
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from screenshot" -l out -rF -d 'Output path'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from screenshot" -l json -d 'Output as JSON'

# browser scroll
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from scroll" -l selector -d 'Element to scroll'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from scroll" -l dx -d 'Horizontal scroll amount'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from scroll" -l dy -d 'Vertical scroll amount'

# browser get subcommands
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from get" -a 'url title text html value attr count box styles'

# browser is subcommands
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from is" -a 'visible enabled checked'

# browser find subcommands
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from find" -a 'role text label placeholder alt title testid first last nth'

# browser dialog subcommands
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from dialog" -a 'accept dismiss'

# browser download
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from download" -a wait -d 'Wait for download'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from download" -l path -rF -d 'Download path'
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from download" -l timeout-ms -d 'Timeout in milliseconds'

# browser cookies subcommands
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from cookies" -a 'get set clear'

# browser storage subcommands
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from storage" -a 'local session'

# browser tab subcommands
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from tab" -a 'new list switch close'

# browser console/errors subcommands
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from console errors" -a 'list clear'

# browser state subcommands
complete -c cmux -n "__fish_seen_subcommand_from browser; and __fish_seen_subcommand_from state" -a 'save load'
