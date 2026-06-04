#!/system/bin/sh
CFG="/data/user/0/com.tencent.mm/shared_prefs/Module_Config_HostLocal.xml"

if [ ! -f "$CFG" ]; then
  echo "配置文件不存在: $CFG"
  exit 1
fi

sed -i '/name="float_[^"]*"/d' "$CFG"
chmod 660 "$CFG"
chown 10134:10134 "$CFG" 2>/dev/null
am force-stop com.tencent.mm

echo "0恢复完成，请重新打开微信进入聊天页。"
