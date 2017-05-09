# Called by startnode
if [ ! -e $STARTUP ]; then
  echo "H:" >> $STARTUP.tmp
  echo "cd ADF" >> $STARTUP.tmp
  echo "lh adf COM1 3F8  4 115200 8192  8192  8" >> $STARTUP.tmp
  echo "G:" >> $STARTUP.tmp
  echo "cd rg" >> $STARTUP.tmp
  echo "renegade /N$FOUNDNODE -Q -B115200" >> $STARTUP.tmp
  echo "exitemu" >> $STARTUP.tmp
  unix2dos $STARTUP.tmp &> /dev/null
  mv $STARTUP.tmp $STARTUP
fi

