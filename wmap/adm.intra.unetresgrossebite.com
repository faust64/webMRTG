HTMLSTYLE overlib
HEIGHT 865
WIDTH 800
HTMLOUTPUTFILE index.html
IMAGEOUTPUTFILE weathermap.png
FONTDEFINE 42 /var/www/wmap/fonts/VerilySerifMono.otf 10
FONTDEFINE 43 /var/www/wmap/fonts/VerilySerifMono.otf 6

SCALE  0   5 140  32 255 <5%
SCALE  5  10 140   0 255 <10%
SCALE 10  15  32  64 255 <15%
SCALE 15  20  32 128 255 <20%
SCALE 20  25   0 168 255 <25%
SCALE 25  30   0 192 255 <30%
SCALE 30  35   0 204 192 <35%
SCALE 35  40   0 216 128 <40%
SCALE 40  45   0 228  64 <45%
SCALE 45  50   0 240   0 <50%
SCALE 50  55  80 240   0 <55%
SCALE 55  60 112 240   0 <60%
SCALE 60  65 144 240   0 <65%
SCALE 65  70 176 240   0 <70%
SCALE 70  75 208 240   0 <75%
SCALE 75  80 240 240   0 <80%
SCALE 80  85 255 224   0 <85%
SCALE 85  90 255 192   0 <90%
SCALE 90  95 255 160   0 <95%
SCALE 95 100 255   0   0  mucho
KEYPOS DEFAULT 155 780 Resources Usage
KEYSTYLE DEFAULT horizontal

NODE adsl
    POSITION 250 40
    LABEL Free
    LABELFONT 42
    ICON 80 80 /var/www/wmap/images/cloud.png

NODE sdsl
    POSITION 550 40
    LABEL Ovh
    LABELFONT 42
    ICON 80 80 /var/www/wmap/images/cloud.png

NODE fw1
    POSITION 100 150
    LABEL Dysnomia
    LABELFONT 42
    LABELOFFSET E
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/fw.png

NODE fw2
    POSITION 300 150
    LABEL Androktasiai
    LABELFONT 42
    LABELOFFSET E
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/fw.png

NODE fw3
    POSITION 500 150
    LABEL Phonoi
    LABELFONT 42
    LABELOFFSET E
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/fw.png

NODE fw4
    POSITION 700 150
    LABEL Makhai
    LABELFONT 42
    LABELOFFSET E
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/fw.png

NODE sw1
    POSITION 330 300
    LABEL Ponos
    LABELFONT 42
    LABELOFFSET N
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/sw.png

NODE sw2
    POSITION 197 300
    LABEL Ate
    LABELFONT 42
    LABELOFFSET N
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/sw.png

NODE sw3
    POSITION 603 300
    LABEL Nikea
    LABELFONT 42
    LABELOFFSET N
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/sw.png

NODE sw4
    POSITION 470 300
    LABEL Amphilogiai
    LABELFONT 42
    LABELOFFSET N
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/sw.png

NODE sw5
    POSITION 740 300
    LABEL Lethe
    LABELFONT 42
    LABELOFFSET N
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/hub.png

NODE sw6
    POSITION 60 300
    LABEL Algea
    LABELFONT 42
    LABELOFFSET N
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/hub.png

NODE sw7
    POSITION 665 700
    LABEL Pseudologoi
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/hub.png

NODE cam1
    POSITION 495 670
    LABEL cam1
    LABELFONT 42
    LABELOFFSET W
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/camera.png

NODE cam2
    POSITION 495 730
    LABEL cam2
    LABELFONT 42
    LABELOFFSET W
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/camera.png

NODE vs1
    POSITION 536 480
    LABEL Nemesis
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/server.png

NODE vs2
    POSITION 264 480
    LABEL Thanatos
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/server.png

NODE vs3
    POSITION 400 480
    LABEL Momos
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/server.png

NODE vs4
    POSITION 128 480
    LABEL Moros
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/server.png

NODE vs5
    POSITION 672 480
    LABEL Oneiroi
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/server.png

NODE store1
    POSITION 60 510
    LABEL Hesperus
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/disk.png

NODE ceph1
    POSITION 604 510
    LABEL Helios
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/disk.png

NODE ceph1disk1
    LABEL ceph-15
    POSITION ceph1 0 60
    TARGET gauge:/var/www/mrtg/helios/10.42.242.14.disk.46.rrd:ds0:ds1
    MAXVALUE 1.9T

NODE ceph1disk2
    LABEL ceph-16
    POSITION ceph1 0 80
    TARGET gauge:/var/www/mrtg/helios/10.42.242.14.disk.47.rrd:ds0:ds1
    MAXVALUE 920G

NODE ceph1disk3
    LABEL ceph-17
    POSITION ceph1 0 100
    TARGET gauge:/var/www/mrtg/helios/10.42.242.14.disk.48.rrd:ds0:ds1
    MAXVALUE 920G

NODE ceph2
    POSITION 196 510
    LABEL Selene
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/disk.png

NODE ceph2disk1
    LABEL ceph-12
    POSITION ceph2 0 60
    TARGET gauge:/var/www/mrtg/selene/10.42.242.16.disk.46.rrd:ds0:ds1
    MAXVALUE 1.9T

NODE ceph2disk2
    LABEL ceph-13
    POSITION ceph2 0 80
    TARGET gauge:/var/www/mrtg/selene/10.42.242.16.disk.47.rrd:ds0:ds1
    MAXVALUE 2.8T

NODE ceph2disk3
    LABEL ceph-14
    POSITION ceph2 0 100
    TARGET gauge:/var/www/mrtg/selene/10.42.242.16.disk.48.rrd:ds0:ds1
    MAXVALUE 920G

NODE ceph3
    POSITION 332 510
    LABEL Eos
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/disk.png

NODE ceph3disk1
    LABEL ceph-4
    POSITION ceph3 0 60
    TARGET gauge:/var/www/mrtg/eos/10.42.242.18.disk.46.rrd:ds0:ds1
    MAXVALUE 470G

NODE ceph3disk2
    LABEL ceph-5
    POSITION ceph3 0 80
    TARGET gauge:/var/www/mrtg/eos/10.42.242.18.disk.47.rrd:ds0:ds1
    MAXVALUE 3.7T

NODE ceph3disk3
    LABEL ceph-6
    POSITION ceph3 0 100
    TARGET gauge:/var/www/mrtg/eos/10.42.242.18.disk.48.rrd:ds0:ds1
    MAXVALUE 3.7T

NODE ceph3disk4
    LABEL ceph-7
    POSITION ceph3 0 120
    TARGET gauge:/var/www/mrtg/eos/10.42.242.18.disk.49.rrd:ds0:ds1
    MAXVALUE 3.7T

NODE ceph4
    POSITION 468 510
    LABEL Hemara
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/disk.png

NODE ceph4disk1
    LABEL ceph-8
    POSITION ceph4 0 60
    TARGET gauge:/var/www/mrtg/hemara/10.42.242.19.disk.46.rrd:ds0:ds1
    MAXVALUE 460G

NODE ceph4disk2
    LABEL ceph-9
    POSITION ceph4 0 80
    TARGET gauge:/var/www/mrtg/hemara/10.42.242.19.disk.47.rrd:ds0:ds1
    MAXVALUE 3.7T

NODE ceph4disk3
    LABEL ceph-10
    POSITION ceph4 0 100
    TARGET gauge:/var/www/mrtg/hemara/10.42.242.19.disk.48.rrd:ds0:ds1
    MAXVALUE 3.7T

NODE ceph4disk4
    LABEL ceph-11
    POSITION ceph4 0 120
    TARGET gauge:/var/www/mrtg/hemara/10.42.242.19.disk.49.rrd:ds0:ds1
    MAXVALUE 2.8T

NODE ceph5
    POSITION 740 510
    LABEL Nyx
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/disk.png

NODE ceph5disk1
    LABEL ceph-0
    POSITION ceph5 0 60
    TARGET gauge:/var/www/mrtg/nyx/10.42.242.20.disk.46.rrd:ds0:ds1
    MAXVALUE 470G

NODE ceph5disk2
    LABEL ceph-1
    POSITION ceph5 0 80
    TARGET gauge:/var/www/mrtg/nyx/10.42.242.20.disk.47.rrd:ds0:ds1
    MAXVALUE 3.7T

NODE ceph5disk3
    LABEL ceph-2
    POSITION ceph5 0 100
    TARGET gauge:/var/www/mrtg/nyx/10.42.242.20.disk.48.rrd:ds0:ds1
    MAXVALUE 3.7T

NODE ceph5disk4
    LABEL ceph-3
    POSITION ceph5 0 120
    TARGET gauge:/var/www/mrtg/nyx/10.42.242.20.disk.49.rrd:ds0:ds1
    MAXVALUE 3.7T

NODE ap1
    POSITION 115 700
    LABEL Asteros
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 60 60 /var/www/wmap/images/ap.png

NODE guestwifi
    POSITION 345 670
    LABEL Guests VLAN
    LABELFONT 42
    LABELOFFSET N
    LABELOUTLINECOLOR 255 255 255
    ICON 30 30 /var/www/wmap/images/cloud.png

NODE userswifi
    POSITION 350 700
    LABEL WiFi VLAN
    LABELFONT 42
    LABELOFFSET E
    LABELOUTLINECOLOR 255 255 255
    ICON 30 30 /var/www/wmap/images/cloud.png

NODE faustwifi
    POSITION 345 730
    LABEL Faust VLAN
    LABELFONT 42
    LABELOFFSET S
    LABELOUTLINECOLOR 255 255 255
    ICON 30 30 /var/www/wmap/images/cloud.png

LINK fw1sdsl
    ARROWSTYLE 1 1
    BANDWIDTH 3024K 2320K
    BWFONT 43
    BWLABELPOS 25 10
    NODES fw1:NE85 sdsl
    TARGET /var/www/mrtg/dysnomia/10.42.242.2_11.rrd:ds0:ds1
    WIDTH 3

LINK fw2sdsl
    ARROWSTYLE 1 1
    BANDWIDTH 3024K 2320K
    BWFONT 43
    BWLABELPOS 25 10
    NODES fw2:NE85 sdsl
    TARGET /var/www/mrtg/androktasiai/10.42.242.3_11.rrd:ds0:ds1
    WIDTH 3

LINK fw3sdsl
    ARROWSTYLE 1 1
    BANDWIDTH 3024K 2320K
    BWFONT 43
    BWLABELPOS 60 25
    NODES fw3:N80 sdsl
    TARGET /var/www/mrtg/phonoi/10.42.242.4_11.rrd:ds0:ds1
    WIDTH 3

LINK fw4sdsl
    ARROWSTYLE 1 1
    BANDWIDTH 3024K 2320K
    BWFONT 43
    BWLABELPOS 60 30
    NODES fw4:N80 sdsl
    TARGET /var/www/mrtg/makhai/10.42.242.5_11.rrd:ds0:ds1
    WIDTH 3

LINK fw1adsl
    ARROWSTYLE 1 1
    BANDWIDTH 7049K 1066K
    BWFONT 43
    BWLABELPOS 60 30
    NODES fw1:NE85 adsl
    TARGET /var/www/mrtg/dysnomia/10.42.242.2_10.rrd:ds0:ds1
    WIDTH 3

LINK fw2adsl
    ARROWSTYLE 1 1
    BANDWIDTH 7049K 1066K
    BWFONT 43
    BWLABELPOS 60 25
    NODES fw2:NE85 adsl
    TARGET /var/www/mrtg/androktasiai/10.42.242.3_10.rrd:ds0:ds1
    WIDTH 3

LINK fw3adsl
    ARROWSTYLE 1 1
    BANDWIDTH 7049K 1066K
    BWFONT 43
    BWLABELPOS 30 10
    NODES fw3:NW71 adsl
    TARGET /var/www/mrtg/phonoi/10.42.242.4_10.rrd:ds0:ds1
    WIDTH 3

LINK fw4adsl
    ARROWSTYLE 1 1
    BANDWIDTH 7049K 1066K
    BWFONT 43
    BWLABELPOS 25 10
    NODES fw4:NW70 adsl
    TARGET /var/www/mrtg/makhai/10.42.242.5_10.rrd:ds0:ds1
    WIDTH 3

LINK fw1sync
    ARROWSTYLE 1 1
    BANDWIDTH 100M
    BWLABEL none
    NODES fw1:SE55 sw2:N56
    TARGET /var/www/mrtg/dysnomia/10.42.242.2_3.rrd:ds0:ds1
    WIDTH 1

LINK fw2sync
    ARROWSTYLE 1 1
    BANDWIDTH 100M
    BWLABEL none
    NODES fw2:S sw2:NE70
    TARGET /var/www/mrtg/androktasiai/10.42.242.3_3.rrd:ds0:ds1
    WIDTH 1

LINK fw3sync
    ARROWSTYLE 1 1
    BANDWIDTH 100M
    BWLABEL none
    NODES fw3:SE70 sw3:N52
    TARGET /var/www/mrtg/phonoi/10.42.242.4_3.rrd:ds0:ds1
    WIDTH 1

LINK fw4sync
    ARROWSTYLE 1 1
    BANDWIDTH 100M
    BWLABEL none
    NODES fw4:S sw3:NE70
    TARGET /var/www/mrtg/makhai/10.42.242.5_3.rrd:ds0:ds1
    WIDTH 1

LINK fw1lan
    ARROWSTYLE 1 1
    BANDWIDTH 100M
    BWFONT 43
    BWLABELPOS 40 20
    NODES fw1:S90 sw2:NW60
    TARGET /var/www/mrtg/dysnomia/10.42.242.2_2.rrd:ds0:ds1
    WIDTH 2

LINK fw2lan
    ARROWSTYLE 1 1
    BANDWIDTH 100M
    BWFONT 43
    BWLABELPOS 30 10
    NODES fw2:SW sw2:N60
    TARGET /var/www/mrtg/androktasiai/10.42.242.3_2.rrd:ds0:ds1
    WIDTH 2

LINK fw3lan
    ARROWSTYLE 1 1
    BANDWIDTH 100M
    BWFONT 43
    BWLABELPOS 30 10
    NODES fw3:S90 sw3:NW45
    TARGET /var/www/mrtg/phonoi/10.42.242.4_2.rrd:ds0:ds1
    WIDTH 2

LINK fw4lan
    ARROWSTYLE 1 1
    BANDWIDTH 100M
    BWFONT 43
    BWLABELPOS 40 20
    NODES fw4:SW85 sw3:N60
    TARGET /var/www/mrtg/makhai/10.42.242.5_2.rrd:ds0:ds1
    WIDTH 2

LINK tosw5
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWFONT 43
    NODES sw3:E sw5:W
    TARGET /var/www/mrtg/sw3/10.42.242.10_23.rrd:ds0:ds1
    WIDTH 2

LINK tosw6
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWFONT 43
    NODES sw2:W sw6:E
    TARGET /var/www/mrtg/sw2/10.42.242.9_24.rrd:ds0:ds1
    WIDTH 2

LINK tosw7
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWFONT 43
    BWLABELPOS 90 80
    NODES sw3:S sw7:N
    TARGET /var/www/mrtg/sw3/10.42.242.10_24.rrd:ds0:ds1
    WIDTH 2

#to-swup
LINK sw1lagg1
    ARROWSTYLE 1 1
    BANDWIDTH 5000M
    BWFONT 43
    NODES sw1:E sw4:W
    TARGET /var/www/mrtg/sw1/10.42.242.6_49.rrd:ds0:ds1
    WIDTH 2

#to-swdown
LINK sw1lagg2
    ARROWSTYLE 1 1
    BANDWIDTH 5000M
    BWFONT 43
    NODES sw1:W sw2:E
    TARGET /var/www/mrtg/sw1/10.42.242.6_50.rrd:ds0:ds1
    WIDTH 2

#g1/g2/g3/g4
LINK sw1lagg3
    ARROWSTYLE 1 1
    BANDWIDTH 4000M
    BWFONT 43
    BWLABELPOS 80 70
    NODES sw1:S ceph3:N
    TARGET /var/www/mrtg/sw1/10.42.242.6_51.rrd:ds0:ds1
    WIDTH 2

#g5/g6/g7/g8
LINK sw1lagg4
    ARROWSTYLE 1 1
    BANDWIDTH 4000M
    BWFONT 43
    BWLABELPOS 65 55
    NODES sw1:S vs2:N
    TARGET /var/www/mrtg/sw1/10.42.242.6_52.rrd:ds0:ds1
    WIDTH 2

#g9/g10/g11/g12
LINK sw1lagg5
    ARROWSTYLE 1 1
    BANDWIDTH 4000M
    BWFONT 43
    BWLABELPOS 87 55
    NODES sw1:S vs4:N
    TARGET /var/www/mrtg/sw1/10.42.242.6_53.rrd:ds0:ds1
    WIDTH 2

#g13/g14
LINK sw1lagg6
    ARROWSTYLE 1 1
    BANDWIDTH 2000M
    BWFONT 43
    BWLABELPOS 88 75
    NODES sw1:S ceph2:N
    TARGET /var/www/mrtg/sw1/10.42.242.6_54.rrd:ds0:ds1
    WIDTH 2

#to-swup
LINK sw2lagg1
    ARROWSTYLE 1 1
    BANDWIDTH 5000M
    BWFONT 43
    NODES sw2:E sw1:W
    TARGET /var/www/mrtg/sw2/10.42.242.9_25.rrd:ds0:ds1
    WIDTH 2

#to-swdown
LINK sw3lagg1
    ARROWSTYLE 1 1
    BANDWIDTH 5000M
    BWFONT 43
    NODES sw3:W sw4:E
    TARGET /var/www/mrtg/sw3/10.42.242.10_49.rrd:ds0:ds1
    WIDTH 2

#g15/g17
LINK sw3lagg4
    ARROWSTYLE 1 1
    BANDWIDTH 2000M
    BWFONT 43
    BWLABELPOS 90 80
    NODES sw3:S ceph4:N
    TARGET /var/www/mrtg/sw3/10.42.242.10_52.rrd:ds0:ds1
    WIDTH 2

#to-swup
LINK sw4lagg1
    ARROWSTYLE 1 1
    BANDWIDTH 5000M
    BWFONT 43
    NODES sw4:E sw3:W
    TARGET /var/www/mrtg/sw4/10.42.242.17_49.rrd:ds0:ds1
    WIDTH 2

#to-swdown
LINK sw4lagg2
    ARROWSTYLE 1 1
    BANDWIDTH 5000M
    BWFONT 43
    NODES sw4:W sw1:E
    TARGET /var/www/mrtg/sw4/10.42.242.17_50.rrd:ds0:ds1
    WIDTH 2

#g1/g2/g3/g4
LINK sw4lagg3
    ARROWSTYLE 1 1
    BANDWIDTH 4000M
    BWFONT 43
    BWLABELPOS 85 60
    NODES sw4:S vs5:N
    TARGET /var/www/mrtg/sw4/10.42.242.17_51.rrd:ds0:ds1
    WIDTH 2

#g5/g6/g7/g8
LINK sw4lagg4
    ARROWSTYLE 1 1
    BANDWIDTH 4000M
    BWFONT 43
    BWLABELPOS 80 65
    NODES sw4:S vs1:N
    TARGET /var/www/mrtg/sw4/10.42.242.17_52.rrd:ds0:ds1
    WIDTH 2

#g9/g10/g11/g12
LINK sw4lagg5
    ARROWSTYLE 1 1
    BANDWIDTH 4000M
    BWFONT 43
    BWLABELPOS 85 70
    NODES sw4:S vs3:N
    TARGET /var/www/mrtg/sw4/10.42.242.17_53.rrd:ds0:ds1
    WIDTH 2

#g13/g14
LINK sw4lagg6
    ARROWSTYLE 1 1
    BANDWIDTH 2000M
    BWFONT 43
    BWLABELPOS 90 78
    NODES sw4:S ceph1:N
    TARGET /var/www/mrtg/sw4/10.42.242.17_54.rrd:ds0:ds1
    WIDTH 2

LINK store1lagg
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWFONT 43
    BWLABELPOS 90 75
    NODES sw6:S store1:N
    TARGET /var/www/mrtg/hesperus/10.42.242.12_4.rrd:ds1:ds0
    WIDTH 1

LINK ceph5nolagg
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWFONT 43
    BWLABELPOS 85 70
    NODES sw3:S90 ceph5:N
    TARGET /var/www/mrtg/sw3/10.42.242.10_13.rrd:ds0:ds1
    WIDTH 2

LINK ceph1lan
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWLABEL none
    NODES sw3:S ceph1:N
    TARGET /var/www/mrtg/sw3/10.42.242.10_11.rrd:ds0:ds1
    WIDTH 1

LINK ceph2lan
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWLABEL none
    NODES sw2:S ceph2:N
    TARGET /var/www/mrtg/sw2/10.42.242.9_11.rrd:ds0:ds1
    WIDTH 1

LINK ceph3lan
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWLABEL none
    NODES sw2:S ceph3:N
    TARGET /var/www/mrtg/sw2/10.42.242.9_12.rrd:ds0:ds1
    WIDTH 1

LINK ceph4lan
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWLABEL none
    NODES sw2:S ceph4:N
    TARGET /var/www/mrtg/sw2/10.42.242.9_16.rrd:ds0:ds1
    WIDTH 1

LINK ceph5lan
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWLABEL none
    NODES sw3:S ceph5:NW78
    TARGET /var/www/mrtg/sw3/10.42.242.10_14.rrd:ds0:ds1
    WIDTH 1

LINK vs1lan
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWLABEL none
    NODES sw3:S vs1:N
    TARGET /var/www/mrtg/sw3/10.42.242.10_9.rrd:ds0:ds1
    WIDTH 1

LINK vs2lan
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWLABEL none
    NODES sw2:S vs2:N
    TARGET /var/www/mrtg/sw2/10.42.242.9_9.rrd:ds0:ds1
    WIDTH 1

LINK vs3lan
    ARROWSTYLE 1 1
    BANDWIDTH 2000M
    BWLABEL none
    NODES sw3:S vs3:N
    TARGET /var/www/mrtg/sw3/10.42.242.10_7.rrd:ds0:ds1 /var/www/mrtg/sw3/10.42.242.10_8.rrd:ds0:ds1
    WIDTH 1

LINK vs4lan
    ARROWSTYLE 1 1
    BANDWIDTH 2000M
    BWLABEL none
    NODES sw2:S vs4:N
    TARGET /var/www/mrtg/sw2/10.42.242.9_7.rrd:ds0:ds1 /var/www/mrtg/sw2/10.42.242.9_8.rrd:ds0:ds1
    WIDTH 1

LINK vs5lan
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWLABEL none
    NODES sw3:S vs5:N
    TARGET /var/www/mrtg/sw3/10.42.242.10_10.rrd:ds0:ds1
    WIDTH 1

LINK wifi
    ARROWSTYLE 1 1
    BANDWIDTH 1000M
    BWFONT 43
    BWLABELPOS 20 10
    NODES ap1:N sw2:S
    TARGET /var/www/mrtg/asteros/10.42.242.11_2.rrd:ds0:ds1
    WIDTH 2

LINK ssidguest
    ARROWSTYLE 1 1
    BANDWIDTH 56M
    BWFONT 43
    BWLABELPOS 78 35
    NODES ap1:E90 guestwifi
    TARGET /var/www/mrtg/asteros/10.42.242.11_3.rrd:ds0:ds1
    WIDTH 2

LINK ssidusers
    ARROWSTYLE 1 1
    BANDWIDTH 56M
    BWFONT 43
    BWLABELPOS 78 52
    NODES ap1:E90 userswifi
    TARGET /var/www/mrtg/asteros/10.42.242.11_14.rrd:ds0:ds1
    WIDTH 2

LINK ssidfaust
    ARROWSTYLE 1 1
    BANDWIDTH 56M
    BWFONT 43
    BWLABELPOS 78 35
    NODES ap1:E90 faustwifi
    TARGET /var/www/mrtg/asteros/10.42.242.11_13.rrd:ds0:ds1
    WIDTH 2

LINK tocam1
    ARROWSTYLE 1 1
    BANDWIDTH 100M
    BWFONT 43
    BWLABELPOS 70 25
    NODES cam1:E sw7:W
    TARGET /var/www/mrtg/cam1/10.42.40.100_2.rrd:ds0:ds1
    WIDTH 2

LINK tocam2
    ARROWSTYLE 1 1
    BANDWIDTH 100M
    BWFONT 43
    BWLABELPOS 70 25
    NODES cam2:E sw7:W
    TARGET /var/www/mrtg/cam2/10.42.40.101_2.rrd:ds0:ds1
    WIDTH 2
