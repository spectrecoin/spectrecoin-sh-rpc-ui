#!/bin/bash
# ============================================================================
# Set global variables for text output(i.e. for main menu).
#
# Interpret embedded "\Z" sequences in the dialog text by the following character,
# which tells dialog to set colors or video attributes: 0 through 7 are the ANSI
# used in curses: black, red, green, yellow, blue, magenta, cyan and white respectively.
# Bold is set by 'b', reset by 'B'.
# Reverse is set by 'r', reset by 'R'.
# Underline is set by 'u', reset by 'U'.
# The settings are cumulative,
# e.g., "\Zb\Z1" makes the following text bold (perhaps bright) red.
# Restore normal settings with "\Zn".
TITLE_BACK="Spectrecoin Bash RPC Wallet Interface (${VERSION})"
TITLE_TRANS="RECENT TRANSACTIONS"
TITLE_INFO=""
TITLE_MENU="${TITLE_BACK}"
TITLE_GAUGE="Please wait"
TITLE_ERROR="ERROR"
TITLE_STARTING_DAEMON="Starting Daemon"
TITEL_GOODBYE="GOODBYE"
TITEL_SEND="Send XSPEC"
TITEL_USERCOMMAND="Enter Command"
TITEL_CURL_RESULT="cURL result"
TITEL_RECEIVE="Wallet Addresses"
TITEL_SUGGESTION="Suggestion"
TITLE_PLACEHOLDER_FUNCTION="SRY"
TITLE_ENCRYPT_WALLET="Encrypt Wallet"
#
BUTTON_LABEL_ENCRYPT="Encrypt"
BUTTON_LABEL_RESTART_DAEMON="Restart daemon"
BUTTON_LABEL_ENTER="Enter"
BUTTON_LABEL_OK="OK"
BUTTON_LABEL_LEAVE="Leave"
BUTTON_LABEL_CONTINUE="Continue"
BUTTON_LABEL_PREVIOUS="Previous"
BUTTON_LABEL_NEXT="Next"
BUTTON_LABEL_SEND="Send"
BUTTON_LABEL_EXECUTE="Execute"
BUTTON_LABEL_HELP="Help"
BUTTON_LABEL_ADDRESS_BOOK="Address Book"
BUTTON_LABEL_MAIN_MENU="Main Menu"
BUTTON_LABEL_SHOW_STAKES="Show Stakes"
BUTTON_LABEL_HIDE_STAKES="Hide Stakes"
BUTTON_LABEL_JUST_LEAVE="No, just leave"
BUTTON_LABEL_STOP_DAEMON="Yes, stop daemon"
BUTTON_LABEL_I_HAVE_UNDERSTOOD="YES - I´ve understood"
#
CMD_MAIN_LOCK_WALLET="Lock"
CMD_MAIN_UNLOCK_WALLET="Unlock"
CMD_MAIN_ENCRYPT_WALLET="Encrypt"
CMD_MAIN_REFRESH="Update"
CMD_MAIN_TRANS="Transactions"
CMD_MAIN_SEND="Send"
CMD_MAIN_RECEIVE="Receive"
CMD_MAIN_COMMAND="Command"
CMD_MAIN_QUIT="Quit"
#
EXPL_CMD_MAIN_EXIT="Exit this interface."
EXPL_CMD_MAIN_USERCOMMAND="Sending commands to daemon."
EXPL_CMD_MAIN_SEND="Send XSPEC from wallet."
EXPL_CMD_MAIN_VIEWTRANS="View all transactions."
EXPL_CMD_MAIN_REFRESH="Update the interface."
EXPL_CMD_MAIN_WALLETLOCK="Lock the wallet, no more staking."
EXPL_CMD_MAIN_WALLETUNLOCK="Unlock wallet for staking only."
EXPL_CMD_MAIN_WALLETENCRYPT="Encrypt wallet, provides Security."
EXPL_CMD_MAIN_RECEIVE="Show wallet addresses."
#
ERROR_USERCOMMAND_FATAL="Unexpected fatal error in USER COMMAND dialog."
ERROR_PW_FATAL="Unexpected fatal error in password dialog."
ERROR_SEND_FATAL="Unexpected fatal error in send dialog."
ERROR_TRANS_FATAL="Unexpected fatal error in view all transactions dialog."
ERROR_GOODBYE_FATAL="Unexpected fatal error in daemon stop (goodbye) dialog."
ERROR_SEND_INVALID_ADDRESS="\Z1You entered an invalid address.\Zn\n\nA valid Spectrecoin address must be in the form:\n- beginning with \"S\"\n- length 27-34\n- uppercase letter \"O\", \"I\", lowercase letter \"l\", and the number \"0\" are never used to prevent visual ambiguity"
ERROR_SEND_INVALID_AMOUNT="Amount must be a number, with:\n- greater than 0\n- max. 8 digits behind decimal point"
ERROR_CURL_MSG_PROMPT="CURL error message:"
ERROR_401_UNAUTHORIZED="Error: RPC login failed.\nDid you change the password without restarting the daemon?\n"
ERROR_DAEMON_NO_CONNECT_FROM_REMOTE="No connection to sprectrecoind could be established.\nYou may need to check your config."
ERROR_DAEMON_NO_CONNECT="Daemon did not respond within 60 sec.\nNo connection to sprectrecoind could be established.\nYou may need to check your config."
#
# use \ for a new line - note: there will be no auto line breaking
ERROR_DAEMON_ALREADY_RUNNING="Spectrecoind (daemon) already running!\But no connection could be established.\This means the daemon was just started."
ERROR_DAEMON_STARTING="Spectrecoind is not running.\Starting Spectrecoind (daemon)..."
ERROR_DAEMON_WAITING_BEGIN="Daemon needs some time to initialize.\Waiting 1 minute for the daemon..."
ERROR_DAEMON_WAITING_MSG="seconds to go..."
ERROR_DAEMON_WAITING_MSG_SUCCESS="Daemon connected.\Everythings fine."
ERROR_DAEMON_WAITING_END="All done. Starting Interface..."
#
TEXT_HEADLINE_WALLET_INFO="Wallet Info"
TEXT_BALANCE="Balance"
TEXT_CURRENCY="XSPEC"
TEXT_WALLET_STATE="Wallet"
TEXT_WALLET_HAS_NO_PW="\Z1no PW\Zn"
TEXT_WALLET_IS_UNLOCKED="\Z4unlocked\Zn"
TEXT_WALLET_IS_LOCKED="\Z1locked\Zn"
#
TEXT_HEADLINE_CLIENT_INFO="Client info"
TEXT_DAEMON_VERSION="Daemon"
TEXT_DAEMON_ERRORS_DURING_RUNTIME="Errors"
TEXT_DAEMON_NO_ERRORS_DURING_RUNTIME="none"
TEXT_DAEMON_IP="IP"
TEXT_DAEMON_PEERS="Peers"
TEXT_DAEMON_DOWNLOADED_DATA="Download"
TEXT_DAEMON_UPLOADED_DATA="Upload"
#
TEXT_HEADLINE_STAKING_INFO="Staking Info"
TEXT_STAKING_STATE="Staking"
TEXT_STAKING_ON="\Z4ON\Zn"
TEXT_STAKING_OFF="\Z1OFF\Zn"
TEXT_STAKING_COINS="Coins"
TEXT_MATRUING_COINS="aging"
TEXT_EXP_TIME="Expected time"
#
TEXT_STAKE="\Z4STAKE\Zn"
TEXT_IMMATURE="\Z5STAKE Pending\Zn"
TEXT_RECEIVED="\Z2RECEIVED\Zn"
TEXT_TRANSFERRED="\Z1TRANSFERRED\Zn"
TEXT_CONFIRMATIONS="confirmations"
TEXT_ADDRESS="address"
TEXT_TXID="txid"
#
TEXT_CLIPBOARD_HINT="On Linux: Use \Z6[CTRL]\Zn + \Z6[SHIFT]\Zn + \Z6[V]\Zn to copy from clipboard."
TEXT_SEND_DESTINATION_ADDRESS_EXPL="Destination address"
TEXT_SEND_DESTINATION_ADDRESS="Address"
TEXT_SEND_AMOUNT_EXPL="Amount of XSPEC"
TEXT_SEND_AMOUNT="Amount"
TEXT_SEND_EXPL="Enter the destination address."
#
TEXT_PW_EXPL="Enter wallet password"
#
TEXT_USERCOMMAND_EXPL="Here you can enter commands that will be send to the Daemon."
TEXT_USERCOMMAND_CMD_EXPL="type help for info"
TEXT_USERCOMMAND_CMD="Command"
TEXT_USERCOMMAND_PARAMS_EXPL="seperated by spaces"
TEXT_USERCOMMAND_PARAMS="Parameter"
#
TEXT_GAUGE_ALLDONE="All done."
TEXT_GAUGE_DEFAULT="Getting data from daemon..."
TEXT_GAUGE_GET_INFO="Getting general info data from daemon..."
TEXT_GAUGE_PROCESS_INFO="Processing general info data..."
TEXT_GAUGE_GET_STAKING_DATA="Getting staking data from daemon..."
TEXT_GAUGE_PROCESS_STAKING_DATA="Processing staking data..."
TEXT_GAUGE_GET_TRANS="Getting transactions data from daemon..."
TEXT_GAUGE_PROCESS_TRANS="Processing transactions data..."
#
TEXT_GOODBYE_WARNING="\Z1If you plan to shutdown the system, daemon must be stopped before!\Zn\n\nDo you want to stop the daemon (no more staking) or just exit the UI?\n\n\Zn"
TEXT_GOODBYE_FEEDBACK_DAEMON_STILL_RUNNING="\n\Z2Daemon is still running.\Zn\n"
TEXT_GOODBYE_FEEDBACK_DAEMON_STOPPED="\n\Z1Daemon stopped.\Zn\n"
TEXT_GOODBYE_FEEDBACK_EXIT="\nHope you enjoyed.\n\n\Z4Please give feedback.\Zn\n"
#
TEXT_FEEDBACK_WALLET_LOCKED="Wallet successfully locked.\n\n\Z5You will not be able to stake anymore.\Zn\n\nUse Unlock in main menu to unlock the wallet for staking only again."
TEXT_FEEDBACK_RECEIVE="Marking the text will automatically copy it to clipboard.\nPress return to continue to main menu.\n\nDefault wallet addresses:"
#
TEXT_SEND_UNLOCK_WALLET_AGAIN="Notice\nPlease note:\nYou have to 'unlock' the wallet for staking again.\n"
TEXT_SUGGESTION_TO_INCREASE_TERMINAL_SIZE="\nIncrease the terminal size to at least"
TEXT_PLACEHOLDER_FUNCTION="\nUnder construction...\n\nSry right now this is a placeholder."
