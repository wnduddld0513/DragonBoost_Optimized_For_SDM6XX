SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

REPLACE="
"

print_modname() {
  ui_print "******************************************"
  ui_print "     DragonBoost_Optimized_For_SDM6XX     "
  ui_print " Boost Your Qcomm 630/636/660/662/665/680 "
  ui_print "******************************************"
  ui_print " Original Author: @Zyarexx (Telegram)     "
  ui_print " Moddfied by Elaina(Dcinside, Korea site) "
  ui_print "        - a Headphone Minor Gallery User  "
  ui_print " WARNING: Only for Rooted SDM6XX Devices  "
  ui_print "******************************************"
  ui_print ""
}

on_install() {
  ui_print "🚀 Preparing Installation of DragonBoost..."
  sleep 1
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  ui_print "🔥 Injecting Performance Tweaks..."
  sleep 1
  ui_print "✨ DragonBoost Activation In Progress..."
  sleep 2
  ui_print "✔ Installation Successful!"
  ui_print ""
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
