#!/bin/bash
# ============================================================================
#
# This is a component of the Spectrecoin shell rpc ui
#
# Author: 2019-03 HLXEasy
#
# ============================================================================

# ============================================================================
# Open a dialog tailbox and show debug.log
viewLog() {
    dialog --backtitle "${TITLE_BACK}" \
           --no-shadow \
           --colors \
           --begin 2 2 \
           --no-lines \
           --infobox "${TEXT_LOGFILE_HEADER}" ${LOG_TAIL_WINDOW_HEADER_X} ${LOG_TAIL_WINDOW_Y} \
           \
           --and-widget \
           --title " ${logfile} " \
           --no-shadow \
           --colors \
           --begin 6 2 \
           --ok-label "${BUTTON_LABEL_CLOSE}" \
           --tailbox "${logfile}" \
           ${LOG_TAIL_WINDOW_X} ${LOG_TAIL_WINDOW_Y}
}
