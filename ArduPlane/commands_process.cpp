/// -*- tab-width: 4; Mode: C++; c-basic-offset: 4; indent-tabs-mode: nil -*-

#include "Plane.h"

// called by update navigation at 10Hz
// --------------------
void Plane::update_commands(void)
{
    gcs_send_text_fmt(PSTR("caling update_commands in commands_process"));
    //AlexCash - added flightmodes so that update commands get called
    if((control_mode == AUTO) || (control_mode == DUBINS_LEFT) || (control_mode == DUBINS_RIGHT) || (control_mode == DUBINS_STRAIGHT)) {
        if (home_is_set != HOME_UNSET) {
            if(mission.state() == AP_Mission::MISSION_RUNNING) {
                mission.update();
            } else {
                // auto_rtl_command should have been set to MAV_CMD_NAV_LOITER_UNLIM by exit_mission
                verify_command(auto_rtl_command);
            }
        }
    }
}

