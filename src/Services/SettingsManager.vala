/*
* Copyright (c) 2015-2016 elementary LLC (http://launchpad.net/wingpanel-indicator-network)
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU Library General Public License as published by
* the Free Software Foundation, either version 2.1 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU Library General Public License for more details.
*
* You should have received a copy of the GNU Library General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*
*/

public class Network.Services.SettingsManager : Granite.Services.Settings {
    private static SettingsManager? instance = null;

    public string desktopmanager_user {protected set; get;}

    public SettingsManager () {
        base ("org.pantheon.desktop.wingpanel.indicators.network");
    }

    public static SettingsManager get_default () {
        if (instance == null)
            instance = new SettingsManager ();

        return instance;
    }
}
