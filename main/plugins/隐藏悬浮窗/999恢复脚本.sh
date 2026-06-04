#!/system/bin/sh
CFG="/data/user/999/com.tencent.mm/shared_prefs/Module_Config_HostLocal.xml"

if [ ! -f "$CFG" ]; then
  echo "配置文件不存在: $CFG"
  exit 1
fi

sed -i '/name="float_[^"]*"/d' "$CFG"
chmod 660 "$CFG"
chown 99910353:99910353 "$CFG" 2>/dev/null
am force-stop --user 999 com.tencent.mm

echo "999恢复完成，请重新打开微信进入聊天页。"
