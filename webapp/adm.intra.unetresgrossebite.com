var aps = {
    'asteros': {
	'alias': 'ap1',
	'ip': '10.42.242.11',
	'ifs': {
	    'Ethernet': '2',
	    'Guest': '3',
	    'Faust': '13',
	    'Users': '14'
	}
    }
};
var cams = {
    'cam1': {
	'alias': 'entrance',
	'ip': '10.42.40.100',
	'ifs': {
	    'Ethernet': '2'
	}
    },
    'cam2': {
	'alias': 'window',
	'ip': '10.42.40.101',
	'ifs': {
	    'Ethernet': '2'
	}
    }
};
var firewalls = {
    'dysnomia': {
	'alias': 'fw1',
	'ip': '10.42.242.2',
	'ifs': {
	    'WAN-global': '1',
	    'WAN-Free': '10',
	    'WAN-OVH': '11',
	    'SYNC': '3',
	    'VLANs': '2',
	    'Admin': '13',
	    'Ceph': '10',
	    'Faust': '16',
	    'Friends': '17',
	    'Guests': '9',
	    'Plaristote': '19',
	    'SIP': '20',
	    'Users': '14',
	    'VMs': '15',
	    'VideoSurveillance': '12',
	    'WiFi': '18'
	}
    },
    'androktasiai': {
	'alias': 'fw2',
	'ip': '10.42.242.3',
	'ifs': {
	    'WAN-global': '1',
	    'WAN-Free': '10',
	    'WAN-OVH': '11',
	    'SYNC': '3',
	    'VLANs': '2',
	    'Admin': '13',
	    'Ceph': '10',
	    'Faust': '16',
	    'Friends': '17',
	    'Guests': '9',
	    'Plaristote': '19',
	    'SIP': '20',
	    'Users': '14',
	    'VMs': '15',
	    'VideoSurveillance': '12',
	    'WiFi': '18'
	}
    },
    'phonoi': {
	'alias': 'fw3',
	'ip': '10.42.242.4',
	'ifs': {
	    'WAN-global': '1',
	    'WAN-Free': '10',
	    'WAN-OVH': '11',
	    'SYNC': '3',
	    'VLANs': '2',
	    'Admin': '13',
	    'Ceph': '10',
	    'Faust': '16',
	    'Friends': '17',
	    'Guests': '9',
	    'Plaristote': '19',
	    'SIP': '20',
	    'Users': '14',
	    'VMs': '15',
	    'VideoSurveillance': '12',
	    'WiFi': '18'
	}
    },
    'makhai': {
	'alias': 'fw4',
	'ip': '10.42.242.5',
	'ifs': {
	    'WAN-global': '1',
	    'WAN-Free': '10',
	    'WAN-OVH': '11',
	    'SYNC': '3',
	    'VLANs': '2',
	    'Admin': '13',
	    'Ceph': '10',
	    'Faust': '16',
	    'Friends': '17',
	    'Guests': '9',
	    'Plaristote': '19',
	    'SIP': '20',
	    'Users': '14',
	    'VMs': '15',
	    'VideoSurveillance': '12',
	    'WiFi': '18'
	}
    }
};
var sans = {
    'hesperus': {
	'alias': 'store1',
	'ip': '10.42.242.12',
	'ifs': {
	    'bge0': '1',
	    'bge1': '2',
	    'Admin': '5',
	    'VMs': '7',
	    'Faust': '6',
	    'Plaristote': '8',
	    'lagg0': '4'
	}
    }
};
var switches = {
    'sw1': {
	'alias': 'ponos',
	'ip': '10.42.242.6',
	'ifs': {
	    'eos LAGG3#1 (g1)': '1',
	    'eos LAGG3#2 (g2)': '2',
	    'eos LAGG3#3 (g3)': '3',
	    'eos LAGG3#4 (g4)': '4',
	    'thanatos LAGG4#1 (g5)': '5',
	    'thanatos LAGG4#2 (g6)': '6',
	    'thanatos LAGG4#3 (g7)': '7',
	    'thanatos LAGG4#4 (g8)': '8',
	    'moros LAGG5#1 (g9)': '9',
	    'moros LAGG5#2 (g10)': '10',
	    'moros LAGG5#3 (g11)': '11',
	    'moros LAGG5#4 (g12)': '12',
	    'selene LAGG6#1 (g13)': '13',
	    'selene LAGG6#2 (g14)': '14',
	    'to-amphilogiai LAGG1#1 (g15)': '15',
	    'to-ate LAGG2#1 (g16)': '16',
	    'to-amphilogiai LAGG1#2 (g17)': '17',
	    'to-ate LAGG2#2 (g18)': '18',
	    'to-amphilogiai LAGG1#3 (g19)': '19',
	    'to-ate LAGG2#3 (g20)': '20',
	    'to-amphilogiai LAGG1#4 (g21)': '21',
	    'to-ate LAGG2#4 (g22)': '22',
	    'to-amphilogiai LAGG1#5 (g23)': '23',
	    'to-ate LAGG2#5 (g24)': '24',
	    'to-amphilogiai total (ch1)': '49',
	    'to-ate total (ch2)': '50',
	    'eos total (ch3)': '51',
	    'thanatos total (ch4)': '52',
	    'moros total (ch5)': '53',
	    'selene total (ch6)': '54'
	}
    },
    'sw2': {
	'alias': 'ate',
	'ip': '10.42.242.9',
	'ifs': {
	    'WAN@fw2 (g1)': '1',
	    'WAN@fw4 (g2)': '2',
	    'VLANs@fw2 (g3)': '3',
	    'VLANs@fw4 (g4)': '4',
	    'SYNC@fw2 (g5)': '5',
	    'SYNC@fw4 (g6)': '6',
	    'moros BOND1#1 (g7)': '7',
	    'moros BOND1#2 (g8)': '8',
	    'thanatos ADM (g9)': '9',
	    'asteros (g10)': '10',
	    'selene ADM (g11)': '11',
	    'eos ADM (g12)': '12',
	    'selene iLO (g13)': '13',
	    'to-ponos LAGG1#1 (g15)': '15',
	    'hemara ADM (g16)': '16',
	    'to-ponos LAGG1#2 (g17)': '17',
	    'to-ponos LAGG1#3 (g19)': '19',
	    'to-ponos LAGG1#4 (g21)': '21',
	    'to-ponos LAGG1#5 (g23)': '23',
	    'to-algea (g24)': '24',
	    'to-ponos total (ch1)': '25'
	}
    },
    'sw3': {
	'alias': 'nikea',
	'ip': '10.42.242.10',
	'ifs': {
	    'WAN@fw1 (g1)': '1',
	    'WAN@fw3 (g2)': '2',
	    'VLANs@fw1 (g3)': '3',
	    'VLANs@fw3 (g4)': '4',
	    'SYNC@fw1 (g5)': '5',
	    'SYNC@fw3 (g6)': '6',
	    'momos BOND1#1 (g7)': '7',
	    'momos BOND1#2 (g8)': '8',
	    'nemesis ADM (g9)': '9',
	    'oneiroi ADM (g10)': '10',
	    'helios ADM (g11)': '11',
	    'helios iLO (g12)': '12',
	    'nyx BOND1#1 (g13)': '13',
	    'nyx ADM (g14)': '14',
	    'hemara LAGG4#1 (g15)': '15',
	    'to-amphilogiai LAGG1#1 (g16)': '16',
	    'hemara LAGG4#2 (g17)': '17',
	    'to-amphilogiai LAGG1#2 (g18)': '18',
	    'to-amphilogiai LAGG1#3 (g20)': '20',
	    'to-cameras (g21)': '21',
	    'to-amphilogiai LAGG1#4 (g22)': '22',
	    'to-lethe (g23)': '23',
	    'to-amphilogiai LAGG1#5 (g24)': '24',
	    'to-amphilogiai total (ch1)': '49',
	    'hemara total (ch4)': '52'
	}
    },
    'sw4': {
	'alias': 'amphilogiai',
	'ip': '10.42.242.17',
	'ifs': {
	    'oneiroi LAGG3#1 (g1)': '1',
	    'oneiroi LAGG3#2 (g2)': '2',
	    'oneiroi LAGG3#3 (g3)': '3',
	    'oneiroi LAGG3#4 (g4)': '4',
	    'nemesis LAGG4#1 (g5)': '5',
	    'nemesis LAGG4#2 (g6)': '6',
	    'nemesis LAGG4#3 (g7)': '7',
	    'nemesis LAGG4#4 (g8)': '8',
	    'momos LAGG5#1 (g9)': '9',
	    'momos LAGG5#2 (g10)': '10',
	    'momos LAGG5#3 (g11)': '11',
	    'momos LAGG5#4 (g12)': '12',
	    'helios LAGG6#1 (g13)': '13',
	    'helios LAGG6#2 (g14)': '14',
	    'to-nikea LAGG1#1 (g15)': '15',
	    'to-ponos LAGG2#1 (g16)': '16',
	    'to-nikea LAGG1#2 (g17)': '17',
	    'to-ponos LAGG2#2 (g18)': '18',
	    'to-nikea LAGG1#3 (g19)': '19',
	    'to-ponos LAGG2#3 (g20)': '20',
	    'to-nikea LAGG1#4 (g21)': '21',
	    'to-ponos LAGG2#4 (g22)': '22',
	    'to-nikea LAGG1#5 (g23)': '23',
	    'to-ponos LAGG2#5 (g24)': '24',
	    'to-nikea total (ch1)': '49',
	    'to-ponos total (ch2)': '50',
	    'oneiroi total (ch3)': '51',
	    'nemesis total (ch4)': '52',
	    'momos total (ch5)': '53',
	    'helios total (ch6)': '54'
	}
    }
};
