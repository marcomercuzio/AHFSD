{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 35.0, 100.0, 1438.0, 983.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-310",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1412.363622903823853, 3670.0, 91.0, 22.0 ],
					"text" : "set_vel_norm 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-309",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1412.363622903823853, 3626.0, 109.0, 22.0 ],
					"text" : "set_var_norm 1.85"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-308",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1412.363622903823853, 3583.0, 109.0, 22.0 ],
					"text" : "set_var_norm 1.85"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-307",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1411.363622903823853, 3544.0, 156.0, 22.0 ],
					"text" : "set_disp_erosion_gate 0.65"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-306",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1411.363622903823853, 3501.0, 110.0, 22.0 ],
					"text" : "set_clust_norm 8.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-304",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 858.0, 3500.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-299",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 953.0, 3525.0, 107.0, 22.0 ],
					"text" : "set_log_verbose 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-261",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 606.75, 136.363635063171387, 29.5, 22.0 ],
					"text" : "init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-302",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 488.0, 1032.0, 61.0, 22.0 ],
					"text" : "verbose 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-301",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 488.0, 1001.0, 92.0, 22.0 ],
					"text" : "set_buffer 2500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-300",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 488.0, 973.0, 92.0, 22.0 ],
					"text" : "set_buffer 5000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-291",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 591.0, 443.0, 61.0, 22.0 ],
					"text" : "restore all"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-281",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 506.0, 443.0, 80.0, 22.0 ],
					"text" : "drop_random"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-280",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 591.0, 407.0, 56.0, 22.0 ],
					"text" : "restore 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-267",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 506.0, 407.0, 43.0, 22.0 ],
					"text" : "drop 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-289",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.172801166772842, 990.370337903499603, 83.0, 22.0 ],
					"text" : "print CULLED"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-282",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 285.0, 963.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-279",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 147.814810395240784, 1045.185150921344757, 70.0, 22.0 ],
					"text" : "set_now $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-257",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 147.814810395240784, 1014.074040830135345, 55.0, 22.0 ],
					"text" : "cpuclock"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-240",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 134.814810395240784, 982.962930738925934, 32.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-238",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 134.814810395240784, 954.81478351354599, 63.0, 22.0 ],
					"text" : "metro 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 134.814810395240784, 1074.814779579639435, 103.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_reaper.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_reaper.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-296",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 332.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-297",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 393.0, 411.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-298",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 350.0, 374.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-294",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 163.0, 3979.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-295",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 163.0, 3929.0, 100.0, 22.0 ],
					"text" : "o.route /8/send/B"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-293",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 53.375, 3804.0, 71.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-290",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 53.375, 3979.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-288",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 53.375, 3929.0, 100.0, 22.0 ],
					"text" : "o.route /1/send/B"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-284",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 147.0, 3804.0, 123.0, 35.0 ],
					"text" : ";\rmax clearmaxwindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-285",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 283.875, 3927.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-286",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 283.875, 3842.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-287",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 283.875, 3979.0, 85.0, 22.0 ],
					"text" : "print controller"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-283",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 53.375, 3843.0, 79.0, 22.0 ],
					"text" : "o.route /track"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-278",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 363.500005722045898, 3125.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-277",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 3125.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-276",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 316.0, 3092.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-275",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 264.0, 3125.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-274",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 213.0, 3092.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-273",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 163.0, 3125.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-272",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 112.0, 3092.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-271",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 54.5, 3184.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-266",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 699.0, 1546.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-256",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 699.0, 1604.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-254",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 699.0, 1631.0, 219.0, 790.68117892742157 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-243",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 667.0, 1546.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-232",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 543.0, 1229.5, 123.0, 35.0 ],
					"text" : ";\rmax clearmaxwindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.0, 198.0, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-270",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1972.641601145267487, 2566.0, 52.0, 22.0 ],
					"text" : "dac~ 64"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-269",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1972.641601145267487, 2357.428630352020264, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-268",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1972.641601145267487, 2313.207654714584351, 52.0, 22.0 ],
					"text" : "adc~ 33"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-263",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.954544901847839, 286.363633632659912, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-264",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 44.155843734741211, 243.882363200187683, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-265",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.954544901847839, 355.681814789772034, 92.0, 22.0 ],
					"text" : "print TRACKED"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-262",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 89.0, 244.882363200187683, 79.0, 22.0 ],
					"text" : "route tracked"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-258",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1411.363622903823853, 3380.681785941123962, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-259",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1368.18180513381958, 3344.318149924278259, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-260",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1411.363622903823853, 3449.999967098236084, 61.0, 22.0 ],
					"text" : "print OSC"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-255",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.233765602111816, 397.029428601264954, 123.0, 35.0 ],
					"text" : ";\rmax clearmaxwindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-250",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 363.636360168457031, 276.922075271606445, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-252",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.454542398452759, 240.558439254760742, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-248",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 252.272724866867065, 112.987011909484863, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-245",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 252.272724866867065, 61.481479465961456, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-234",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.0, 54.363636016845703, 104.0, 22.0 ],
					"text" : "udpreceive 10000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-236",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1526.0, 1051.0, 71.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-215",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1625.0, 1115.0, 55.0, 22.0 ],
					"text" : "print raw"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1625.0, 1011.0, 111.0, 39.0 ],
					"text" : "from the controller"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1617.0, 1083.0, 127.0, 22.0 ],
					"text" : "route /flock/coherence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-253",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1279.0, 3661.0, 71.0, 22.0 ],
					"text" : "mark chaos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-251",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1190.0, 3661.0, 75.0, 22.0 ],
					"text" : "mark spread"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-249",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1103.0, 3661.0, 71.0, 22.0 ],
					"text" : "mark bunch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-247",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1027.0, 3661.0, 58.0, 22.0 ],
					"text" : "mark fast"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-246",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 929.0, 3661.0, 88.0, 22.0 ],
					"text" : "mark scattered"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-244",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 859.0, 3661.0, 56.0, 22.0 ],
					"text" : "mark still"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-242",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1230.0, 3594.0, 99.0, 22.0 ],
					"text" : "set_var_norm $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-241",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1087.0, 3594.0, 107.0, 22.0 ],
					"text" : "set_clust_norm $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-239",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 953.0, 3594.0, 97.0, 22.0 ],
					"text" : "set_vel_norm $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-237",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 858.0, 3594.0, 52.0, 22.0 ],
					"text" : "mark $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-235",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1087.0, 3560.0, 62.0, 22.0 ],
					"text" : "log_range"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-233",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 953.0, 3560.0, 58.0, 22.0 ],
					"text" : "log_reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-216",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 858.0, 3560.0, 29.5, 22.0 ],
					"text" : "log"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 858.0, 3532.0, 69.0, 22.0 ],
					"text" : "metro 1000"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.972549, 0.462745, 0.501961, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-183",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 858.0, 3446.0, 354.5, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_value_bar2"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "NORM tuning",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-229",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 710.0, 3695.0, 119.0, 22.0 ],
					"text" : "set_low_pres_floor 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-230",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 710.0, 3661.0, 107.0, 22.0 ],
					"text" : "set_collapse_full 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-231",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 710.0, 3626.0, 106.0, 22.0 ],
					"text" : "set_max_bodies 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-226",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 589.0, 3695.0, 119.0, 22.0 ],
					"text" : "set_low_pres_floor 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-227",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 589.0, 3661.0, 107.0, 22.0 ],
					"text" : "set_collapse_full 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-228",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 589.0, 3626.0, 106.0, 22.0 ],
					"text" : "set_max_bodies 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 468.0, 3695.0, 119.0, 22.0 ],
					"text" : "set_low_pres_floor 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-224",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 468.0, 3661.0, 107.0, 22.0 ],
					"text" : "set_collapse_full 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-225",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 468.0, 3626.0, 113.0, 22.0 ],
					"text" : "set_max_bodies 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-220",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.500005722045898, 3695.0, 119.0, 22.0 ],
					"text" : "set_low_pres_floor 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-221",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.500005722045898, 3661.0, 107.0, 22.0 ],
					"text" : "set_collapse_full 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.500005722045898, 3626.0, 113.0, 22.0 ],
					"text" : "set_max_bodies 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-217",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 219.5, 3695.0, 119.0, 22.0 ],
					"text" : "set_low_pres_floor 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-218",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 219.5, 3661.0, 114.0, 22.0 ],
					"text" : "set_collapse_full 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-219",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 219.5, 3626.0, 113.0, 22.0 ],
					"text" : "set_max_bodies 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 91.0, 3695.0, 119.0, 22.0 ],
					"text" : "set_low_pres_floor 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 91.0, 3661.0, 114.0, 22.0 ],
					"text" : "set_collapse_full 15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-186",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 91.0, 3626.0, 113.0, 22.0 ],
					"text" : "set_max_bodies 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 710.0, 3556.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 589.0, 3556.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 468.0, 3556.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 344.500005722045898, 3556.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 3556.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 91.0, 3556.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-106",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 3507.0, 50.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "6",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811764705882353, 0.811764705882353, 0.811764705882353, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-104",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 589.0, 3507.0, 50.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_output_curve_outline_color"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "8",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.980392156862745, 0.63921568627451, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-103",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 468.0, 3507.0, 50.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_play"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "10",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-94",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 344.000005722045898, 3507.0, 50.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_display_handle_one"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "12",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.349019607843137, 0.372549019607843, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-85",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 3507.0, 50.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_record"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "16",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.745098, 0.596078, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 91.0, 3507.0, 50.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_scale_awareness"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "20",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.745098, 0.596078, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 91.0, 3446.0, 354.5, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_scale_awareness"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "RBs Number Presets",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 0,
					"id" : "obj-211",
					"linecount" : 31,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1461.363622426986694, 1686.0, 353.409087538719177, 441.0 ],
					"text" : "╔═══ ahfsd_spat5.js — MESSAGE MAP ═══╗\n\nINLET 0  (commands + dict taps)\n  /source/N/aed | /source/N/xyz  ← dict base positions (auto)\n  init          rebuild + emit all sources\n  status        print state (read sm_hicoh / sm_flock here)\n  bases         list captured base positions\n  reset         clear smoothing + flock override\n  ── flock mode ──\n  set_flock -1  AUTO — flock follows hicoh score  ← normal\n  set_flock 1   MANUAL force full flight (ignores hicoh)\n  set_flock 0   MANUAL force park at base (ignores hicoh)\n                → send set_flock -1 to hand control back to auto\n  ── tuning ──\n  set_flock_rise 0.08   glide-out speed\n  set_flock_fall 0.03   glide-home speed (slower = lingers)\n  set_flock_scale 2.5   metres per boid unit (excursion width)\n  set_flock_zoffset 1.2 lift boids off floor\n  set_attract N 0-1     source N leans into flock wake\n  set_collapse 0-1 / set_vertical 0-1\n\nINLET 1  (scores + boids — labelled messages only)\n  hicoh <0-1>   ← via [prepend hicoh], drives auto flock\n  boid <i> <x> <y> <z>  ← via [prepend boid i] from spat5.boids\n  (any other score: velocity / clustering / etc.)\n\n⚠ METRO MUST BE RUNNING or sm_hicoh freezes and the\n  flock glues near base. Toggle on before testing.\n⚠ AUTO vs MANUAL: if 23/24 won't stop, you're in AUTO\n  with hicoh held up → drag hicoh to 0, OR set_flock 0.\n╚════════════════════════════════════╝"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-210",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1746.0, 1011.0, 154.0, 133.0 ],
					"text" : "set_flock -1 → auto mode. The flock weight is driven by the incoming hi_coh score — when the room coheres, the boids release; set_flock 0 to set_flock 1 → manual override."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1888.0, 1181.0, 41.0, 22.0 ],
					"text" : "status"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1705.0, 1359.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1705.217335402965546, 1523.0, 70.0, 22.0 ],
					"text" : "set_flock -1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 0,
					"id" : "obj-101",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1665.217335402965546, 1551.0, 150.0, 133.0 ],
					"text" : "set_flock -1 → auto mode. The flock weight is driven by the incoming hi_coh score — when the room coheres, the boids release; set_flock 0 to set_flock 1 → manual override."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1711.0, 1221.0, 101.0, 22.0 ],
					"text" : "set_attract 7 0.15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1705.217335402965546, 1401.275253474712372, 85.0, 22.0 ],
					"text" : "prepend hicoh"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1836.290199518203735, 1221.0, 29.5, 22.0 ],
					"text" : "init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1888.0, 1221.0, 35.0, 22.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1709.0, 1181.0, 105.0, 22.0 ],
					"text" : "set_flock_fall 0.03"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1707.0, 1146.0, 109.0, 22.0 ],
					"text" : "set_flock_rise 0.08"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-214",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1705.217335402965546, 1488.0, 66.0, 22.0 ],
					"text" : "set_flock 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-213",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1705.217335402965546, 1454.0, 66.0, 22.0 ],
					"text" : "set_flock 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-209",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2129.0, 1155.0, 89.0, 22.0 ],
					"text" : "prepend boid 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2030.0, 1155.0, 89.0, 22.0 ],
					"text" : "prepend boid 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-207",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 2030.0, 1099.0, 217.0, 22.0 ],
					"text" : "o.route /point/1/xyz /point/2/xyz"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 124.0, 100.0, 1000.0, 755.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 380.0, 52.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 481.0, 286.0 ],
										"default_fontsize" : 11.0,
										"gridonopen" : 2,
										"gridsize" : [ 10.0, 10.0 ],
										"gridsnaponopen" : 2,
										"toolbarvisible" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-125",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 419.0, 28.0, 42.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-126",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.5, 28.0, 42.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-127",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 332.0, 28.0, 42.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-128",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 332.0, 58.0, 107.0, 21.0 ],
													"text" : "join 3 @triggers -1"
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-121",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 279.0, 28.0, 42.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-122",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 235.5, 28.0, 42.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-123",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 192.0, 28.0, 42.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-124",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 192.0, 58.0, 107.0, 21.0 ],
													"text" : "join 3 @triggers -1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-120",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 332.0, 88.0, 112.0, 21.0 ],
													"text" : "prepend /position/xyz"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-119",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 192.0, 88.0, 116.0, 21.0 ],
													"text" : "prepend /direction/xyz"
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-115",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 32.0, 58.0, 50.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-114",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 102.0, 88.0, 80.0, 21.0 ],
													"text" : "/speed/inverse"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-112",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 32.0, 138.0, 138.0, 21.0 ],
													"text" : "spat5.osc.prepend /point/1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-111",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 32.0, 88.0, 57.0, 21.0 ],
													"text" : "/speed $1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-130",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 32.0, 219.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 0 ],
													"midpoints" : [ 41.5, 123.0, 41.5, 123.0 ],
													"source" : [ "obj-111", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-130", 0 ],
													"source" : [ "obj-112", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 0 ],
													"midpoints" : [ 111.5, 123.0, 41.5, 123.0 ],
													"source" : [ "obj-114", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-111", 0 ],
													"source" : [ "obj-115", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 0 ],
													"midpoints" : [ 201.5, 123.0, 41.5, 123.0 ],
													"source" : [ "obj-119", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 0 ],
													"midpoints" : [ 341.5, 123.0, 41.5, 123.0 ],
													"source" : [ "obj-120", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-124", 2 ],
													"source" : [ "obj-121", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-124", 1 ],
													"source" : [ "obj-122", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-124", 0 ],
													"source" : [ "obj-123", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-119", 0 ],
													"source" : [ "obj-124", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-128", 2 ],
													"source" : [ "obj-125", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-128", 1 ],
													"source" : [ "obj-126", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-128", 0 ],
													"source" : [ "obj-127", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-120", 0 ],
													"source" : [ "obj-128", 0 ]
												}

											}
 ],
										"originid" : "pat-8"
									}
,
									"patching_rect" : [ 776.0, 244.5, 130.0, 22.0 ],
									"saved_object_attributes" : 									{
										"fontsize" : 11.0
									}
,
									"text" : "p individual_messages"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-129",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 954.25, 362.5, 91.0, 62.0 ],
									"text" : "reset boids randomly inside the flyrect",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 790.0, 293.5, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-108",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 790.0, 320.5, 35.0, 22.0 ],
									"text" : "0 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 790.0, 343.5, 149.500000000000114, 22.0 ],
									"text" : "unjoin 3"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-106",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 877.0, 373.5, 42.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-103",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 833.5, 373.5, 42.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-94",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 790.0, 373.5, 42.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-92",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 854.25, 283.0, 87.5, 62.0 ],
									"text" : "point to which boids are attracted (x/y/z)",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 790.0, 403.5, 107.0, 22.0 ],
									"text" : "join 3 @triggers -1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 790.0, 426.5, 114.0, 22.0 ],
									"text" : "prepend /attract/xyz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 670.0, 244.5, 91.0, 22.0 ],
									"text" : "prepend /flyrect"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 670.0, 105.5, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 670.0, 132.5, 77.0, 22.0 ],
									"text" : "-1 1 1 -1 1 -1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-102",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 7,
									"outlettype" : [ "", "", "", "", "", "", "" ],
									"patching_rect" : [ 670.0, 161.5, 259.0, 22.0 ],
									"text" : "unjoin 6"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-101",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 760.0, 100.0, 189.0, 50.0 ],
									"text" : "bounding box (walls) in which to fly (left/top/right/bottom/front/back)",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-100",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 870.0, 184.5, 42.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-99",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 830.0, 184.5, 42.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-98",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 790.0, 184.5, 42.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-97",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 750.0, 184.5, 42.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-96",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 710.0, 184.5, 42.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-95",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 670.0, 184.5, 42.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 670.0, 214.5, 219.0, 22.0 ],
									"text" : "join 6 @triggers -1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 81.0, 343.5, 29.5, 22.0 ],
									"text" : "20"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 343.5, 29.5, 22.0 ],
									"text" : "10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 373.5, 99.0, 22.0 ],
									"text" : "/point/number $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 980.0, 426.5, 39.0, 22.0 ],
									"text" : "/reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 578.5, 191.5, 87.0, 22.0 ],
									"text" : "loadmess 0.01"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 499.5, 191.5, 80.0, 22.0 ],
									"text" : "loadmess 0.2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 694.0, 373.5, 80.0, 22.0 ],
									"text" : "loadmess 3.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 624.0, 373.5, 70.0, 22.0 ],
									"text" : "loadmess 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 545.0, 373.5, 70.0, 22.0 ],
									"text" : "loadmess 5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 463.0, 373.5, 87.0, 22.0 ],
									"text" : "loadmess 0.01"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 386.0, 373.5, 70.0, 22.0 ],
									"text" : "loadmess 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 373.5, 70.0, 22.0 ],
									"text" : "loadmess 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 211.0, 373.5, 87.0, 22.0 ],
									"text" : "loadmess 0.25"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 426.5, 191.5, 70.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 338.5, 191.5, 70.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 248.5, 191.5, 70.0, 22.0 ],
									"text" : "loadmess 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 191.5, 70.0, 22.0 ],
									"text" : "loadmess 5"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-70",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 684.5, 299.5, 70.0, 75.0 ],
									"text" : "preferred distance from neighbors",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-71",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 694.0, 396.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 694.0, 426.5, 68.0, 22.0 ],
									"text" : "/prefdist $1"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-66",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 573.5, 130.0, 60.0, 62.0 ],
									"text" : "speed of acceleration",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-67",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 578.5, 214.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 578.5, 244.5, 57.0, 22.0 ],
									"text" : "/accel $1"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-63",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 608.0, 299.5, 70.0, 75.0 ],
									"text" : "willingness to change speed and direction",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-64",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 624.0, 396.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 624.0, 426.5, 61.0, 22.0 ],
									"text" : "/inertia $1"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-47",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 548.5, 324.5, 50.0, 50.0 ],
									"text" : "overall speed",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-48",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 545.0, 396.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 545.0, 426.5, 61.0, 22.0 ],
									"text" : "/speed $1"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-50",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 447.5, 299.5, 82.0, 75.0 ],
									"text" : "distance of vision for avoiding wall edges",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-52",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 463.0, 396.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 463.0, 426.5, 74.0, 22.0 ],
									"text" : "/edgedist $1"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-54",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 378.5, 299.5, 67.0, 75.0 ],
									"text" : "strengh of wall avoidance instinct",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-55",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 386.0, 396.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 386.0, 426.5, 55.0, 22.0 ],
									"text" : "/repel $1"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-57",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 289.5, 293.5, 82.0, 75.0 ],
									"text" : "strength of neighbor avoidance instinct",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-58",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 302.0, 396.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 426.5, 57.0, 22.0 ],
									"text" : "/avoid $1"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-60",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 198.5, 293.5, 82.0, 87.0 ],
									"text" : "strength of neighbor speed matching instinct",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-61",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 211.0, 396.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 211.0, 426.5, 61.0, 22.0 ],
									"text" : "/match $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 473.5, 29.0, 21.0 ],
									"text" : "thru"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-27",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 490.5, 130.0, 76.0, 62.0 ],
									"text" : "strength of attraction to 'attractpt'",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-26",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 499.5, 214.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 499.5, 244.5, 62.0, 22.0 ],
									"text" : "/attract $1"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-24",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 414.5, 130.0, 74.0, 62.0 ],
									"text" : "strength of centering instinct",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-22",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 426.5, 214.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 426.5, 244.5, 62.0, 22.0 ],
									"text" : "/center $1"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-21",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 240.0, 130.0, 76.0, 62.0 ],
									"text" : "maximum speed of speed range",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-20",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 324.5, 130.0, 76.0, 62.0 ],
									"text" : "minimum speed of speed range",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-19",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 127.0, 117.0, 107.0, 75.0 ],
									"text" : "number of neighbors each boid consults when flocking",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-14",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 338.5, 214.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 338.5, 244.5, 81.0, 22.0 ],
									"text" : "/minspeed $1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-13",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 248.5, 214.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 248.5, 244.5, 84.0, 22.0 ],
									"text" : "/maxspeed $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "number",
									"minimum" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 150.0, 214.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 244.5, 81.0, 22.0 ],
									"text" : "/neighbors $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 303.5, 29.0, 21.0 ],
									"text" : "thru"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 150.0, 554.5, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 5 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-102", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-102", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"source" : [ "obj-102", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"source" : [ "obj-102", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"source" : [ "obj-102", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 1 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 2 ],
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"source" : [ "obj-109", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-109", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"source" : [ "obj-109", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 258.0, 284.0, 159.5, 284.0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 785.5, 283.5, 159.5, 283.5 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 348.0, 284.0, 159.5, 284.0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"order" : 4,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 2,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"order" : 12,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"order" : 10,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"order" : 8,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"order" : 6,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"order" : 11,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 9,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"order" : 7,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"order" : 5,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"order" : 3,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 436.0, 284.0, 159.5, 284.0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 509.0, 284.0, 159.5, 284.0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 989.5, 460.0, 159.5, 460.0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 159.5, 398.5, 159.5, 398.5 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 554.5, 460.0, 159.5, 460.0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 472.5, 460.0, 159.5, 460.0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 395.5, 460.0, 159.5, 460.0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 311.5, 460.0, 159.5, 460.0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 220.5, 460.0, 159.5, 460.0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 633.5, 460.0, 159.5, 460.0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 588.0, 284.0, 159.5, 284.0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 703.5, 460.0, 159.5, 460.0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 159.5, 284.0, 159.5, 284.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 679.5, 284.0, 159.5, 284.0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 799.5, 460.0, 159.5, 460.0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 1 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 2 ],
									"source" : [ "obj-97", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 3 ],
									"source" : [ "obj-98", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 4 ],
									"source" : [ "obj-99", 0 ]
								}

							}
 ],
						"originid" : "pat-6"
					}
,
					"patching_rect" : [ 2091.0, 986.0, 61.0, 22.0 ],
					"text" : "p controls"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2141.0, 770.0, 77.0, 22.0 ],
					"text" : "loadmess 15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2030.0, 944.0, 41.0, 22.0 ],
					"text" : "/move"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2141.0, 869.0, 92.0, 22.0 ],
					"text" : "expr 1000. / $f1"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"id" : "obj-197",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2141.0, 796.0, 82.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_longname" : "live.dial[9]",
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "rate",
							"parameter_type" : 0,
							"parameter_unitstyle" : 3
						}

					}
,
					"varname" : "live.dial[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2030.0, 895.0, 15.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.toggle[24]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.toggle",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2030.0, 914.0, 56.0, 22.0 ],
					"text" : "metro 33"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2030.0, 1052.0, 217.0, 22.0 ],
					"text" : "spat5.boids @initwith \"/point/number 2\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1949.0, 1293.0, 63.0, 22.0 ],
					"text" : "metro 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1832.540199518203735, 1146.0, 85.0, 22.0 ],
					"text" : "set_collapse 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1898.540199518203735, 1518.0, 65.0, 22.0 ],
					"text" : "print spat5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1835.4654860496521, 1181.0, 41.0, 22.0 ],
					"text" : "bases"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2106.425517320632935, 2249.0, 54.0, 22.0 ],
					"text" : "mc.dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2126.425517320632935, 2022.551844775676727, 161.0, 20.0 ],
					"text" : "version for binaural mockup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"lastchannelcount" : 2,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2106.425517320632935, 2094.0, 140.0, 125.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -100 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "mc.live.gain~[4]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "mc.live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 2106.425517320632935, 2046.0, 251.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.virtualspeakers~ @speakers 32 @mc 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3038.297850608825684, 1475.743338048458099, 32.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2846.80849027633667, 1079.998660027980804, 222.436122000217438, 222.436122000217438 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2970.21274471282959, 2022.551844775676727, 326.086986064910889, 357.608728051185608 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2797.872320413589478, 1554.466741740703583, 50.0, 22.0 ],
					"text" : "/dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2851.063809394836426, 1292.764615952968597, 42.0, 22.0 ],
					"text" : "import"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3038.297850608825684, 1716.168868243694305, 42.0, 22.0 ],
					"text" : "export"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2712.76593804359436, 1237.445467412471771, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2731.914874076843262, 1367.232700526714325, 61.0, 22.0 ],
					"text" : "o.atomize"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 2731.914874076843262, 1320.42419022321701, 639.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict source_pos_import \"/Users/marcomercuzio/Documents/ZHdK/Thesis/Live/Max tools I Need/sources_position.json\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 2346.808493852615356, 1211.913552701473236, 42.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2346.808493852615356, 1173.615680634975433, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2344.680834293365479, 1137.445468127727509, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2268.085090160369873, 1284.253977715969086, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 2224.06381368637085, 1721.424187362194061, 129.0, 22.0 ],
					"text" : "o.select /speakers/aed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2970.21274471282959, 1720.424187362194061, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 3055.319127082824707, 1967.232696235179901, 100.0, 22.0 ],
					"text" : "o.var"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"source/number" : 32,
						"source/1/visible" : 1,
						"source/1/editable" : 1,
						"source/1/select" : 0,
						"source/1/hidewhenmute" : 0,
						"source/1/aed" : [ -44.020000457763672, 46.819999694824219, 0.660000026226044 ],
						"source/1/constraint/circular" : 0,
						"source/1/coordinates/visible" : 1,
						"source/1/orientation/mode" : "default",
						"source/1/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/1/orientation/visible" : 1,
						"source/1/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/1/proportion" : 100.0,
						"source/1/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/1/image" : "",
						"source/1/label" : "1",
						"source/1/label/visible" : 1,
						"source/1/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/1/label/justification" : "centred",
						"source/1/vumeter/visible" : 0,
						"source/1/vumeter/level" : -60.0,
						"source/1/aperture" : 138.800003051757812,
						"source/1/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/1/radius/visible" : 0,
						"source/1/history/visible" : 0,
						"source/1/history/size" : 100,
						"source/1/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/1/history/thickness" : 1.0,
						"source/2/visible" : 1,
						"source/2/editable" : 1,
						"source/2/select" : 0,
						"source/2/hidewhenmute" : 0,
						"source/2/aed" : [ 51.569999694824219, 24.610000610351562, 0.670000016689301 ],
						"source/2/constraint/circular" : 0,
						"source/2/coordinates/visible" : 1,
						"source/2/orientation/mode" : "default",
						"source/2/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/2/orientation/visible" : 1,
						"source/2/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/2/proportion" : 100.0,
						"source/2/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/2/image" : "",
						"source/2/label" : "2",
						"source/2/label/visible" : 1,
						"source/2/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/2/label/justification" : "centred",
						"source/2/vumeter/visible" : 0,
						"source/2/vumeter/level" : -60.0,
						"source/2/aperture" : 146.199996948242188,
						"source/2/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/2/radius/visible" : 0,
						"source/2/history/visible" : 0,
						"source/2/history/size" : 100,
						"source/2/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/2/history/thickness" : 1.0,
						"source/3/visible" : 1,
						"source/3/editable" : 1,
						"source/3/select" : 0,
						"source/3/hidewhenmute" : 0,
						"source/3/aed" : [ -124.489997863769531, 9.590000152587891, 1.350000023841858 ],
						"source/3/constraint/circular" : 0,
						"source/3/coordinates/visible" : 1,
						"source/3/orientation/mode" : "default",
						"source/3/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/3/orientation/visible" : 1,
						"source/3/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/3/proportion" : 100.0,
						"source/3/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/3/image" : "",
						"source/3/label" : "3",
						"source/3/label/visible" : 1,
						"source/3/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/3/label/justification" : "centred",
						"source/3/vumeter/visible" : 0,
						"source/3/vumeter/level" : -60.0,
						"source/3/aperture" : 80.0,
						"source/3/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/3/radius/visible" : 0,
						"source/3/history/visible" : 0,
						"source/3/history/size" : 100,
						"source/3/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/3/history/thickness" : 1.0,
						"source/4/visible" : 1,
						"source/4/editable" : 1,
						"source/4/select" : 0,
						"source/4/hidewhenmute" : 0,
						"source/4/aed" : [ -60.659999847412109, 24.790000915527344, 1.379999995231628 ],
						"source/4/constraint/circular" : 0,
						"source/4/coordinates/visible" : 1,
						"source/4/orientation/mode" : "default",
						"source/4/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/4/orientation/visible" : 1,
						"source/4/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/4/proportion" : 100.0,
						"source/4/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/4/image" : "",
						"source/4/label" : "4",
						"source/4/label/visible" : 1,
						"source/4/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/4/label/justification" : "centred",
						"source/4/vumeter/visible" : 0,
						"source/4/vumeter/level" : -60.0,
						"source/4/aperture" : 80.0,
						"source/4/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/4/radius/visible" : 0,
						"source/4/history/visible" : 0,
						"source/4/history/size" : 100,
						"source/4/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/4/history/thickness" : 1.0,
						"source/5/visible" : 1,
						"source/5/editable" : 1,
						"source/5/select" : 0,
						"source/5/hidewhenmute" : 0,
						"source/5/aed" : [ 60.849998474121094, 57.619998931884766, 1.120000004768372 ],
						"source/5/constraint/circular" : 0,
						"source/5/coordinates/visible" : 1,
						"source/5/orientation/mode" : "default",
						"source/5/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/5/orientation/visible" : 1,
						"source/5/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/5/proportion" : 100.0,
						"source/5/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/5/image" : "",
						"source/5/label" : "5",
						"source/5/label/visible" : 1,
						"source/5/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/5/label/justification" : "centred",
						"source/5/vumeter/visible" : 0,
						"source/5/vumeter/level" : -60.0,
						"source/5/aperture" : 47.0,
						"source/5/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/5/radius/visible" : 0,
						"source/5/history/visible" : 0,
						"source/5/history/size" : 100,
						"source/5/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/5/history/thickness" : 1.0,
						"source/6/visible" : 1,
						"source/6/editable" : 1,
						"source/6/select" : 0,
						"source/6/hidewhenmute" : 0,
						"source/6/aed" : [ 129.339996337890625, 50.869998931884766, 0.949999988079071 ],
						"source/6/constraint/circular" : 0,
						"source/6/coordinates/visible" : 1,
						"source/6/orientation/mode" : "default",
						"source/6/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/6/orientation/visible" : 1,
						"source/6/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/6/proportion" : 100.0,
						"source/6/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/6/image" : "",
						"source/6/label" : "6",
						"source/6/label/visible" : 1,
						"source/6/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/6/label/justification" : "centred",
						"source/6/vumeter/visible" : 0,
						"source/6/vumeter/level" : -60.0,
						"source/6/aperture" : 44.400001525878906,
						"source/6/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/6/radius/visible" : 0,
						"source/6/history/visible" : 0,
						"source/6/history/size" : 100,
						"source/6/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/6/history/thickness" : 1.0,
						"source/7/visible" : 1,
						"source/7/editable" : 1,
						"source/7/select" : 0,
						"source/7/hidewhenmute" : 0,
						"source/7/aed" : [ -94.989303588867188, 62.761459350585938, 0.470311135053635 ],
						"source/7/constraint/circular" : 0,
						"source/7/coordinates/visible" : 1,
						"source/7/orientation/mode" : "default",
						"source/7/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/7/orientation/visible" : 1,
						"source/7/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/7/proportion" : 100.0,
						"source/7/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/7/image" : "",
						"source/7/label" : "7",
						"source/7/label/visible" : 1,
						"source/7/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/7/label/justification" : "centred",
						"source/7/vumeter/visible" : 0,
						"source/7/vumeter/level" : -60.0,
						"source/7/aperture" : 80.0,
						"source/7/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/7/radius/visible" : 0,
						"source/7/history/visible" : 0,
						"source/7/history/size" : 100,
						"source/7/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/7/history/thickness" : 1.0,
						"source/8/visible" : 1,
						"source/8/editable" : 1,
						"source/8/select" : 0,
						"source/8/hidewhenmute" : 0,
						"source/8/aed" : [ 92.319618225097656, 73.622512817382812, 0.669238567352295 ],
						"source/8/constraint/circular" : 0,
						"source/8/coordinates/visible" : 1,
						"source/8/orientation/mode" : "default",
						"source/8/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/8/orientation/visible" : 1,
						"source/8/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/8/proportion" : 100.0,
						"source/8/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/8/image" : "",
						"source/8/label" : "8",
						"source/8/label/visible" : 1,
						"source/8/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/8/label/justification" : "centred",
						"source/8/vumeter/visible" : 0,
						"source/8/vumeter/level" : -60.0,
						"source/8/aperture" : 80.0,
						"source/8/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/8/radius/visible" : 0,
						"source/8/history/visible" : 0,
						"source/8/history/size" : 100,
						"source/8/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/8/history/thickness" : 1.0,
						"source/9/visible" : 1,
						"source/9/editable" : 1,
						"source/9/select" : 0,
						"source/9/hidewhenmute" : 0,
						"source/9/aed" : [ 4.0, 0.0, 0.419999986886978 ],
						"source/9/constraint/circular" : 0,
						"source/9/coordinates/visible" : 1,
						"source/9/orientation/mode" : "default",
						"source/9/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/9/orientation/visible" : 1,
						"source/9/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/9/proportion" : 100.0,
						"source/9/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/9/image" : "",
						"source/9/label" : "9",
						"source/9/label/visible" : 1,
						"source/9/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/9/label/justification" : "centred",
						"source/9/vumeter/visible" : 0,
						"source/9/vumeter/level" : -60.0,
						"source/9/aperture" : 80.0,
						"source/9/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/9/radius/visible" : 0,
						"source/9/history/visible" : 0,
						"source/9/history/size" : 100,
						"source/9/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/9/history/thickness" : 1.0,
						"source/10/visible" : 1,
						"source/10/editable" : 1,
						"source/10/select" : 0,
						"source/10/hidewhenmute" : 0,
						"source/10/aed" : [ -4.0, 0.0, 1.299999952316284 ],
						"source/10/constraint/circular" : 0,
						"source/10/coordinates/visible" : 1,
						"source/10/orientation/mode" : "default",
						"source/10/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/10/orientation/visible" : 1,
						"source/10/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/10/proportion" : 100.0,
						"source/10/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/10/image" : "",
						"source/10/label" : "10",
						"source/10/label/visible" : 1,
						"source/10/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/10/label/justification" : "centred",
						"source/10/vumeter/visible" : 0,
						"source/10/vumeter/level" : -60.0,
						"source/10/aperture" : 80.0,
						"source/10/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/10/radius/visible" : 0,
						"source/10/history/visible" : 0,
						"source/10/history/size" : 100,
						"source/10/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/10/history/thickness" : 1.0,
						"source/11/visible" : 1,
						"source/11/editable" : 1,
						"source/11/select" : 0,
						"source/11/hidewhenmute" : 0,
						"source/11/aed" : [ 112.5, 0.0, 1.0 ],
						"source/11/constraint/circular" : 0,
						"source/11/coordinates/visible" : 1,
						"source/11/orientation/mode" : "default",
						"source/11/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/11/orientation/visible" : 1,
						"source/11/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/11/proportion" : 100.0,
						"source/11/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/11/image" : "",
						"source/11/label" : "11",
						"source/11/label/visible" : 1,
						"source/11/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/11/label/justification" : "centred",
						"source/11/vumeter/visible" : 0,
						"source/11/vumeter/level" : -60.0,
						"source/11/aperture" : 80.0,
						"source/11/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/11/radius/visible" : 0,
						"source/11/history/visible" : 0,
						"source/11/history/size" : 100,
						"source/11/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/11/history/thickness" : 1.0,
						"source/12/visible" : 1,
						"source/12/editable" : 1,
						"source/12/select" : 0,
						"source/12/hidewhenmute" : 0,
						"source/12/aed" : [ 123.75, 0.0, 1.0 ],
						"source/12/constraint/circular" : 0,
						"source/12/coordinates/visible" : 1,
						"source/12/orientation/mode" : "default",
						"source/12/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/12/orientation/visible" : 1,
						"source/12/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/12/proportion" : 100.0,
						"source/12/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/12/image" : "",
						"source/12/label" : "12",
						"source/12/label/visible" : 1,
						"source/12/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/12/label/justification" : "centred",
						"source/12/vumeter/visible" : 0,
						"source/12/vumeter/level" : -60.0,
						"source/12/aperture" : 80.0,
						"source/12/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/12/radius/visible" : 0,
						"source/12/history/visible" : 0,
						"source/12/history/size" : 100,
						"source/12/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/12/history/thickness" : 1.0,
						"source/13/visible" : 1,
						"source/13/editable" : 1,
						"source/13/select" : 0,
						"source/13/hidewhenmute" : 0,
						"source/13/aed" : [ 92.839996337890625, 2.529999971389771, 0.389999985694885 ],
						"source/13/constraint/circular" : 0,
						"source/13/coordinates/visible" : 1,
						"source/13/orientation/mode" : "default",
						"source/13/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/13/orientation/visible" : 1,
						"source/13/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/13/proportion" : 100.0,
						"source/13/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/13/image" : "",
						"source/13/label" : "13",
						"source/13/label/visible" : 1,
						"source/13/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/13/label/justification" : "centred",
						"source/13/vumeter/visible" : 0,
						"source/13/vumeter/level" : -60.0,
						"source/13/aperture" : 80.0,
						"source/13/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/13/radius/visible" : 0,
						"source/13/history/visible" : 0,
						"source/13/history/size" : 100,
						"source/13/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/13/history/thickness" : 1.0,
						"source/14/visible" : 1,
						"source/14/editable" : 1,
						"source/14/select" : 0,
						"source/14/hidewhenmute" : 0,
						"source/14/aed" : [ -94.80999755859375, 0.0, 0.370000004768372 ],
						"source/14/constraint/circular" : 0,
						"source/14/coordinates/visible" : 1,
						"source/14/orientation/mode" : "default",
						"source/14/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/14/orientation/visible" : 1,
						"source/14/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/14/proportion" : 100.0,
						"source/14/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/14/image" : "",
						"source/14/label" : "14",
						"source/14/label/visible" : 1,
						"source/14/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/14/label/justification" : "centred",
						"source/14/vumeter/visible" : 0,
						"source/14/vumeter/level" : -60.0,
						"source/14/aperture" : 80.0,
						"source/14/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/14/radius/visible" : 0,
						"source/14/history/visible" : 0,
						"source/14/history/size" : 100,
						"source/14/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/14/history/thickness" : 1.0,
						"source/15/visible" : 1,
						"source/15/editable" : 1,
						"source/15/select" : 0,
						"source/15/hidewhenmute" : 0,
						"source/15/aed" : [ 130.438995361328125, 39.371757507324219, 0.339492529630661 ],
						"source/15/constraint/circular" : 0,
						"source/15/coordinates/visible" : 1,
						"source/15/orientation/mode" : "default",
						"source/15/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/15/orientation/visible" : 1,
						"source/15/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/15/proportion" : 100.0,
						"source/15/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/15/image" : "",
						"source/15/label" : "15",
						"source/15/label/visible" : 1,
						"source/15/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/15/label/justification" : "centred",
						"source/15/vumeter/visible" : 0,
						"source/15/vumeter/level" : -60.0,
						"source/15/aperture" : 80.0,
						"source/15/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/15/radius/visible" : 0,
						"source/15/history/visible" : 0,
						"source/15/history/size" : 100,
						"source/15/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/15/history/thickness" : 1.0,
						"source/16/visible" : 1,
						"source/16/editable" : 1,
						"source/16/select" : 0,
						"source/16/hidewhenmute" : 0,
						"source/16/aed" : [ -137.56256103515625, 42.681327819824219, 0.329867094755173 ],
						"source/16/constraint/circular" : 0,
						"source/16/coordinates/visible" : 1,
						"source/16/orientation/mode" : "default",
						"source/16/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/16/orientation/visible" : 1,
						"source/16/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/16/proportion" : 100.0,
						"source/16/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/16/image" : "",
						"source/16/label" : "16",
						"source/16/label/visible" : 1,
						"source/16/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/16/label/justification" : "centred",
						"source/16/vumeter/visible" : 0,
						"source/16/vumeter/level" : -60.0,
						"source/16/aperture" : 80.0,
						"source/16/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/16/radius/visible" : 0,
						"source/16/history/visible" : 0,
						"source/16/history/size" : 100,
						"source/16/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/16/history/thickness" : 1.0,
						"source/17/visible" : 1,
						"source/17/editable" : 1,
						"source/17/select" : 0,
						"source/17/hidewhenmute" : 0,
						"source/17/aed" : [ 151.923187255859375, 20.930000305175781, 1.439408421516418 ],
						"source/17/constraint/circular" : 0,
						"source/17/coordinates/visible" : 1,
						"source/17/orientation/mode" : "default",
						"source/17/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/17/orientation/visible" : 1,
						"source/17/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/17/proportion" : 100.0,
						"source/17/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/17/image" : "",
						"source/17/label" : "17",
						"source/17/label/visible" : 1,
						"source/17/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/17/label/justification" : "centred",
						"source/17/vumeter/visible" : 0,
						"source/17/vumeter/level" : -60.0,
						"source/17/aperture" : 80.0,
						"source/17/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/17/radius/visible" : 0,
						"source/17/history/visible" : 0,
						"source/17/history/size" : 100,
						"source/17/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/17/history/thickness" : 1.0,
						"source/18/visible" : 1,
						"source/18/editable" : 1,
						"source/18/select" : 0,
						"source/18/hidewhenmute" : 0,
						"source/18/aed" : [ -157.699996948242188, 23.579999923706055, 1.429999947547913 ],
						"source/18/constraint/circular" : 0,
						"source/18/coordinates/visible" : 1,
						"source/18/orientation/mode" : "default",
						"source/18/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/18/orientation/visible" : 1,
						"source/18/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/18/proportion" : 100.0,
						"source/18/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/18/image" : "",
						"source/18/label" : "18",
						"source/18/label/visible" : 1,
						"source/18/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/18/label/justification" : "centred",
						"source/18/vumeter/visible" : 0,
						"source/18/vumeter/level" : -60.0,
						"source/18/aperture" : 80.0,
						"source/18/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/18/radius/visible" : 0,
						"source/18/history/visible" : 0,
						"source/18/history/size" : 100,
						"source/18/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/18/history/thickness" : 1.0,
						"source/19/visible" : 1,
						"source/19/editable" : 1,
						"source/19/select" : 0,
						"source/19/hidewhenmute" : 0,
						"source/19/aed" : [ 14.380000114440918, 28.200000762939453, 1.769999980926514 ],
						"source/19/constraint/circular" : 0,
						"source/19/coordinates/visible" : 1,
						"source/19/orientation/mode" : "default",
						"source/19/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/19/orientation/visible" : 1,
						"source/19/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/19/proportion" : 100.0,
						"source/19/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/19/image" : "",
						"source/19/label" : "19",
						"source/19/label/visible" : 1,
						"source/19/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/19/label/justification" : "centred",
						"source/19/vumeter/visible" : 0,
						"source/19/vumeter/level" : -60.0,
						"source/19/aperture" : 80.0,
						"source/19/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/19/radius/visible" : 0,
						"source/19/history/visible" : 0,
						"source/19/history/size" : 100,
						"source/19/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/19/history/thickness" : 1.0,
						"source/20/visible" : 1,
						"source/20/editable" : 1,
						"source/20/select" : 0,
						"source/20/hidewhenmute" : 0,
						"source/20/aed" : [ -13.210000038146973, 25.209999084472656, 1.789999961853027 ],
						"source/20/constraint/circular" : 0,
						"source/20/coordinates/visible" : 1,
						"source/20/orientation/mode" : "default",
						"source/20/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/20/orientation/visible" : 1,
						"source/20/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/20/proportion" : 100.0,
						"source/20/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/20/image" : "",
						"source/20/label" : "20",
						"source/20/label/visible" : 1,
						"source/20/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/20/label/justification" : "centred",
						"source/20/vumeter/visible" : 0,
						"source/20/vumeter/level" : -60.0,
						"source/20/aperture" : 80.0,
						"source/20/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/20/radius/visible" : 0,
						"source/20/history/visible" : 0,
						"source/20/history/size" : 100,
						"source/20/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/20/history/thickness" : 1.0,
						"source/21/visible" : 1,
						"source/21/editable" : 1,
						"source/21/select" : 0,
						"source/21/hidewhenmute" : 0,
						"source/21/aed" : [ 60.0, 25.0, 1.0 ],
						"source/21/constraint/circular" : 0,
						"source/21/coordinates/visible" : 1,
						"source/21/orientation/mode" : "default",
						"source/21/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/21/orientation/visible" : 1,
						"source/21/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/21/proportion" : 100.0,
						"source/21/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/21/image" : "",
						"source/21/label" : "21",
						"source/21/label/visible" : 1,
						"source/21/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/21/label/justification" : "centred",
						"source/21/vumeter/visible" : 0,
						"source/21/vumeter/level" : -60.0,
						"source/21/aperture" : 80.0,
						"source/21/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/21/radius/visible" : 0,
						"source/21/history/visible" : 0,
						"source/21/history/size" : 100,
						"source/21/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/21/history/thickness" : 1.0,
						"source/22/visible" : 1,
						"source/22/editable" : 1,
						"source/22/select" : 0,
						"source/22/hidewhenmute" : 0,
						"source/22/aed" : [ -60.0, 25.0, 1.0 ],
						"source/22/constraint/circular" : 0,
						"source/22/coordinates/visible" : 1,
						"source/22/orientation/mode" : "default",
						"source/22/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/22/orientation/visible" : 1,
						"source/22/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/22/proportion" : 100.0,
						"source/22/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/22/image" : "",
						"source/22/label" : "22",
						"source/22/label/visible" : 1,
						"source/22/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/22/label/justification" : "centred",
						"source/22/vumeter/visible" : 0,
						"source/22/vumeter/level" : -60.0,
						"source/22/aperture" : 80.0,
						"source/22/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/22/radius/visible" : 0,
						"source/22/history/visible" : 0,
						"source/22/history/size" : 100,
						"source/22/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/22/history/thickness" : 1.0,
						"source/23/visible" : 1,
						"source/23/editable" : 1,
						"source/23/select" : 0,
						"source/23/hidewhenmute" : 0,
						"source/23/aed" : [ -134.378326416015625, 0.0, 1.001867055892944 ],
						"source/23/constraint/circular" : 0,
						"source/23/coordinates/visible" : 1,
						"source/23/orientation/mode" : "default",
						"source/23/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/23/orientation/visible" : 1,
						"source/23/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/23/proportion" : 100.0,
						"source/23/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/23/image" : "",
						"source/23/label" : "23",
						"source/23/label/visible" : 1,
						"source/23/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/23/label/justification" : "centred",
						"source/23/vumeter/visible" : 0,
						"source/23/vumeter/level" : -60.0,
						"source/23/aperture" : 80.0,
						"source/23/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/23/radius/visible" : 0,
						"source/23/history/visible" : 0,
						"source/23/history/size" : 100,
						"source/23/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/23/history/thickness" : 1.0,
						"source/24/visible" : 1,
						"source/24/editable" : 1,
						"source/24/select" : 1,
						"source/24/hidewhenmute" : 0,
						"source/24/aed" : [ 46.014553070068359, 0.0, 1.014928936958313 ],
						"source/24/constraint/circular" : 0,
						"source/24/coordinates/visible" : 1,
						"source/24/orientation/mode" : "default",
						"source/24/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/24/orientation/visible" : 1,
						"source/24/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/24/proportion" : 100.0,
						"source/24/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/24/image" : "",
						"source/24/label" : "24",
						"source/24/label/visible" : 1,
						"source/24/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/24/label/justification" : "centred",
						"source/24/vumeter/visible" : 0,
						"source/24/vumeter/level" : -60.0,
						"source/24/aperture" : 80.0,
						"source/24/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/24/radius/visible" : 0,
						"source/24/history/visible" : 0,
						"source/24/history/size" : 100,
						"source/24/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/24/history/thickness" : 1.0,
						"source/25/visible" : 1,
						"source/25/editable" : 1,
						"source/25/select" : 0,
						"source/25/hidewhenmute" : 0,
						"source/25/aed" : [ -90.0, 0.0, 1.0 ],
						"source/25/constraint/circular" : 0,
						"source/25/coordinates/visible" : 1,
						"source/25/orientation/mode" : "default",
						"source/25/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/25/orientation/visible" : 1,
						"source/25/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/25/proportion" : 100.0,
						"source/25/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/25/image" : "",
						"source/25/label" : "25",
						"source/25/label/visible" : 1,
						"source/25/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/25/label/justification" : "centred",
						"source/25/vumeter/visible" : 0,
						"source/25/vumeter/level" : -60.0,
						"source/25/aperture" : 80.0,
						"source/25/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/25/radius/visible" : 0,
						"source/25/history/visible" : 0,
						"source/25/history/size" : 100,
						"source/25/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/25/history/thickness" : 1.0,
						"source/26/visible" : 1,
						"source/26/editable" : 1,
						"source/26/select" : 0,
						"source/26/hidewhenmute" : 0,
						"source/26/aed" : [ -78.75, 0.0, 1.0 ],
						"source/26/constraint/circular" : 0,
						"source/26/coordinates/visible" : 1,
						"source/26/orientation/mode" : "default",
						"source/26/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/26/orientation/visible" : 1,
						"source/26/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/26/proportion" : 100.0,
						"source/26/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/26/image" : "",
						"source/26/label" : "26",
						"source/26/label/visible" : 1,
						"source/26/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/26/label/justification" : "centred",
						"source/26/vumeter/visible" : 0,
						"source/26/vumeter/level" : -60.0,
						"source/26/aperture" : 80.0,
						"source/26/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/26/radius/visible" : 0,
						"source/26/history/visible" : 0,
						"source/26/history/size" : 100,
						"source/26/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/26/history/thickness" : 1.0,
						"source/27/visible" : 1,
						"source/27/editable" : 1,
						"source/27/select" : 0,
						"source/27/hidewhenmute" : 0,
						"source/27/aed" : [ -67.5, 0.0, 1.0 ],
						"source/27/constraint/circular" : 0,
						"source/27/coordinates/visible" : 1,
						"source/27/orientation/mode" : "default",
						"source/27/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/27/orientation/visible" : 1,
						"source/27/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/27/proportion" : 100.0,
						"source/27/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/27/image" : "",
						"source/27/label" : "27",
						"source/27/label/visible" : 1,
						"source/27/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/27/label/justification" : "centred",
						"source/27/vumeter/visible" : 0,
						"source/27/vumeter/level" : -60.0,
						"source/27/aperture" : 80.0,
						"source/27/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/27/radius/visible" : 0,
						"source/27/history/visible" : 0,
						"source/27/history/size" : 100,
						"source/27/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/27/history/thickness" : 1.0,
						"source/28/visible" : 1,
						"source/28/editable" : 1,
						"source/28/select" : 0,
						"source/28/hidewhenmute" : 0,
						"source/28/aed" : [ -56.25, 0.0, 1.0 ],
						"source/28/constraint/circular" : 0,
						"source/28/coordinates/visible" : 1,
						"source/28/orientation/mode" : "default",
						"source/28/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/28/orientation/visible" : 1,
						"source/28/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/28/proportion" : 100.0,
						"source/28/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/28/image" : "",
						"source/28/label" : "28",
						"source/28/label/visible" : 1,
						"source/28/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/28/label/justification" : "centred",
						"source/28/vumeter/visible" : 0,
						"source/28/vumeter/level" : -60.0,
						"source/28/aperture" : 80.0,
						"source/28/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/28/radius/visible" : 0,
						"source/28/history/visible" : 0,
						"source/28/history/size" : 100,
						"source/28/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/28/history/thickness" : 1.0,
						"source/29/visible" : 1,
						"source/29/editable" : 1,
						"source/29/select" : 0,
						"source/29/hidewhenmute" : 0,
						"source/29/aed" : [ -45.0, 0.0, 1.0 ],
						"source/29/constraint/circular" : 0,
						"source/29/coordinates/visible" : 1,
						"source/29/orientation/mode" : "default",
						"source/29/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/29/orientation/visible" : 1,
						"source/29/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/29/proportion" : 100.0,
						"source/29/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/29/image" : "",
						"source/29/label" : "29",
						"source/29/label/visible" : 1,
						"source/29/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/29/label/justification" : "centred",
						"source/29/vumeter/visible" : 0,
						"source/29/vumeter/level" : -60.0,
						"source/29/aperture" : 80.0,
						"source/29/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/29/radius/visible" : 0,
						"source/29/history/visible" : 0,
						"source/29/history/size" : 100,
						"source/29/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/29/history/thickness" : 1.0,
						"source/30/visible" : 1,
						"source/30/editable" : 1,
						"source/30/select" : 0,
						"source/30/hidewhenmute" : 0,
						"source/30/aed" : [ -33.75, 0.0, 1.0 ],
						"source/30/constraint/circular" : 0,
						"source/30/coordinates/visible" : 1,
						"source/30/orientation/mode" : "default",
						"source/30/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/30/orientation/visible" : 1,
						"source/30/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/30/proportion" : 100.0,
						"source/30/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/30/image" : "",
						"source/30/label" : "30",
						"source/30/label/visible" : 1,
						"source/30/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/30/label/justification" : "centred",
						"source/30/vumeter/visible" : 0,
						"source/30/vumeter/level" : -60.0,
						"source/30/aperture" : 80.0,
						"source/30/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/30/radius/visible" : 0,
						"source/30/history/visible" : 0,
						"source/30/history/size" : 100,
						"source/30/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/30/history/thickness" : 1.0,
						"source/31/visible" : 1,
						"source/31/editable" : 1,
						"source/31/select" : 0,
						"source/31/hidewhenmute" : 0,
						"source/31/aed" : [ 139.889999389648438, 37.310001373291016, 0.819999992847443 ],
						"source/31/constraint/circular" : 0,
						"source/31/coordinates/visible" : 1,
						"source/31/orientation/mode" : "default",
						"source/31/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/31/orientation/visible" : 1,
						"source/31/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/31/proportion" : 100.0,
						"source/31/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/31/image" : "",
						"source/31/label" : "31",
						"source/31/label/visible" : 1,
						"source/31/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/31/label/justification" : "centred",
						"source/31/vumeter/visible" : 0,
						"source/31/vumeter/level" : -60.0,
						"source/31/aperture" : 137.699996948242188,
						"source/31/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/31/radius/visible" : 0,
						"source/31/history/visible" : 0,
						"source/31/history/size" : 100,
						"source/31/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/31/history/thickness" : 1.0,
						"source/32/visible" : 1,
						"source/32/editable" : 1,
						"source/32/select" : 0,
						"source/32/hidewhenmute" : 0,
						"source/32/aed" : [ -136.916488647460938, 16.051275253295898, 0.579431772232056 ],
						"source/32/constraint/circular" : 0,
						"source/32/coordinates/visible" : 1,
						"source/32/orientation/mode" : "default",
						"source/32/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/32/orientation/visible" : 1,
						"source/32/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"source/32/proportion" : 100.0,
						"source/32/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/32/image" : "",
						"source/32/label" : "32",
						"source/32/label/visible" : 1,
						"source/32/label/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"source/32/label/justification" : "centred",
						"source/32/vumeter/visible" : 0,
						"source/32/vumeter/level" : -60.0,
						"source/32/aperture" : 129.0,
						"source/32/aperture/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"source/32/radius/visible" : 0,
						"source/32/history/visible" : 0,
						"source/32/history/size" : 100,
						"source/32/history/color" : [ 0.490196079015732, 1.0, 0.0, 1.0 ],
						"source/32/history/thickness" : 1.0,
						"speaker/number" : 32,
						"speakers/aed" : [ -21.605010986328125, 11.701999664306641, 11.093999862670898, 0.0, 12.559000015258789, 10.347999572753906, 21.604999542236328, 11.701999664306641, 11.093999862670898, 43.646999359130859, 14.062000274658203, 9.260000228881836, 64.179000854492188, 18.090999603271484, 7.245999813079834, 94.611000061035156, 19.886999130249023, 6.614999771118164, 122.829002380371094, 16.958999633789062, 7.714000225067139, 140.421005249023438, 13.019000053405762, 9.98799991607666, 158.393997192382812, 11.701999664306641, 11.093999862670898, -180.0, 12.559000015258789, 10.347999572753906, -158.393997192382812, 11.701999664306641, 11.093999862670898, -140.421005249023438, 13.019000053405762, 9.98799991607666, -122.828994750976562, 16.958999633789062, 7.714000225067139, -94.610992431640625, 19.886999130249023, 6.614999771118164, -64.178985595703125, 18.090999603271484, 7.245999813079834, -43.647003173828125, 14.062000274658203, 9.260000228881836, -21.605010986328125, 25.14900016784668, 12.00100040435791, 0.0, 26.791999816894531, 11.314999580383301, 21.604999542236328, 25.14900016784668, 12.00100040435791, 64.179000854492188, 36.518001556396484, 8.569999694824219, 122.829002380371094, 34.652999877929688, 8.968999862670898, 158.393997192382812, 25.14900016784668, 12.00100040435791, -180.0, 26.791999816894531, 11.314999580383301, -158.393997192382812, 25.14900016784668, 12.00100040435791, -122.828994750976562, 34.652999877929688, 8.968999862670898, -64.178985595703125, 36.518001556396484, 8.569999694824219, -24.774993896484375, 43.443000793457031, 9.859999656677246, 24.774999618530273, 43.443000793457031, 9.859999656677246, -99.462005615234375, 65.839996337890625, 7.431000232696533, 99.461997985839844, 65.839996337890625, 7.431000232696533, -158.199005126953125, 40.007999420166016, 10.545999526977539, 158.199005126953125, 40.007999420166016, 10.545999526977539 ],
						"speaker/1/visible" : 1,
						"speaker/1/editable" : 0,
						"speaker/1/select" : 0,
						"speaker/1/aed" : [ -21.605010986328125, 11.701999664306641, 11.093999862670898 ],
						"speaker/1/constraint/circular" : 0,
						"speaker/1/coordinates/visible" : 1,
						"speaker/1/orientation/mode" : "default",
						"speaker/1/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/1/orientation/visible" : 0,
						"speaker/1/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/1/proportion" : 100.0,
						"speaker/1/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/1/image" : "",
						"speaker/1/label" : "1",
						"speaker/1/label/visible" : 1,
						"speaker/1/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/1/label/justification" : "centred",
						"speaker/1/vumeter/visible" : 0,
						"speaker/1/vumeter/level" : -60.0,
						"speaker/2/visible" : 1,
						"speaker/2/editable" : 0,
						"speaker/2/select" : 0,
						"speaker/2/aed" : [ 0.0, 12.559000015258789, 10.347999572753906 ],
						"speaker/2/constraint/circular" : 0,
						"speaker/2/coordinates/visible" : 1,
						"speaker/2/orientation/mode" : "default",
						"speaker/2/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/2/orientation/visible" : 0,
						"speaker/2/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/2/proportion" : 100.0,
						"speaker/2/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/2/image" : "",
						"speaker/2/label" : "2",
						"speaker/2/label/visible" : 1,
						"speaker/2/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/2/label/justification" : "centred",
						"speaker/2/vumeter/visible" : 0,
						"speaker/2/vumeter/level" : -60.0,
						"speaker/3/visible" : 1,
						"speaker/3/editable" : 0,
						"speaker/3/select" : 0,
						"speaker/3/aed" : [ 21.604999542236328, 11.701999664306641, 11.093999862670898 ],
						"speaker/3/constraint/circular" : 0,
						"speaker/3/coordinates/visible" : 1,
						"speaker/3/orientation/mode" : "default",
						"speaker/3/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/3/orientation/visible" : 0,
						"speaker/3/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/3/proportion" : 100.0,
						"speaker/3/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/3/image" : "",
						"speaker/3/label" : "3",
						"speaker/3/label/visible" : 1,
						"speaker/3/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/3/label/justification" : "centred",
						"speaker/3/vumeter/visible" : 0,
						"speaker/3/vumeter/level" : -60.0,
						"speaker/4/visible" : 1,
						"speaker/4/editable" : 0,
						"speaker/4/select" : 0,
						"speaker/4/aed" : [ 43.646999359130859, 14.062000274658203, 9.260000228881836 ],
						"speaker/4/constraint/circular" : 0,
						"speaker/4/coordinates/visible" : 1,
						"speaker/4/orientation/mode" : "default",
						"speaker/4/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/4/orientation/visible" : 0,
						"speaker/4/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/4/proportion" : 100.0,
						"speaker/4/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/4/image" : "",
						"speaker/4/label" : "4",
						"speaker/4/label/visible" : 1,
						"speaker/4/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/4/label/justification" : "centred",
						"speaker/4/vumeter/visible" : 0,
						"speaker/4/vumeter/level" : -60.0,
						"speaker/5/visible" : 1,
						"speaker/5/editable" : 0,
						"speaker/5/select" : 0,
						"speaker/5/aed" : [ 64.179000854492188, 18.090999603271484, 7.245999813079834 ],
						"speaker/5/constraint/circular" : 0,
						"speaker/5/coordinates/visible" : 1,
						"speaker/5/orientation/mode" : "default",
						"speaker/5/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/5/orientation/visible" : 0,
						"speaker/5/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/5/proportion" : 100.0,
						"speaker/5/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/5/image" : "",
						"speaker/5/label" : "5",
						"speaker/5/label/visible" : 1,
						"speaker/5/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/5/label/justification" : "centred",
						"speaker/5/vumeter/visible" : 0,
						"speaker/5/vumeter/level" : -60.0,
						"speaker/6/visible" : 1,
						"speaker/6/editable" : 0,
						"speaker/6/select" : 0,
						"speaker/6/aed" : [ 94.611000061035156, 19.886999130249023, 6.614999771118164 ],
						"speaker/6/constraint/circular" : 0,
						"speaker/6/coordinates/visible" : 1,
						"speaker/6/orientation/mode" : "default",
						"speaker/6/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/6/orientation/visible" : 0,
						"speaker/6/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/6/proportion" : 100.0,
						"speaker/6/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/6/image" : "",
						"speaker/6/label" : "6",
						"speaker/6/label/visible" : 1,
						"speaker/6/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/6/label/justification" : "centred",
						"speaker/6/vumeter/visible" : 0,
						"speaker/6/vumeter/level" : -60.0,
						"speaker/7/visible" : 1,
						"speaker/7/editable" : 0,
						"speaker/7/select" : 0,
						"speaker/7/aed" : [ 122.829002380371094, 16.958999633789062, 7.714000225067139 ],
						"speaker/7/constraint/circular" : 0,
						"speaker/7/coordinates/visible" : 1,
						"speaker/7/orientation/mode" : "default",
						"speaker/7/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/7/orientation/visible" : 0,
						"speaker/7/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/7/proportion" : 100.0,
						"speaker/7/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/7/image" : "",
						"speaker/7/label" : "7",
						"speaker/7/label/visible" : 1,
						"speaker/7/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/7/label/justification" : "centred",
						"speaker/7/vumeter/visible" : 0,
						"speaker/7/vumeter/level" : -60.0,
						"speaker/8/visible" : 1,
						"speaker/8/editable" : 0,
						"speaker/8/select" : 0,
						"speaker/8/aed" : [ 140.421005249023438, 13.019000053405762, 9.98799991607666 ],
						"speaker/8/constraint/circular" : 0,
						"speaker/8/coordinates/visible" : 1,
						"speaker/8/orientation/mode" : "default",
						"speaker/8/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/8/orientation/visible" : 0,
						"speaker/8/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/8/proportion" : 100.0,
						"speaker/8/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/8/image" : "",
						"speaker/8/label" : "8",
						"speaker/8/label/visible" : 1,
						"speaker/8/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/8/label/justification" : "centred",
						"speaker/8/vumeter/visible" : 0,
						"speaker/8/vumeter/level" : -60.0,
						"speaker/9/visible" : 1,
						"speaker/9/editable" : 0,
						"speaker/9/select" : 0,
						"speaker/9/aed" : [ 158.393997192382812, 11.701999664306641, 11.093999862670898 ],
						"speaker/9/constraint/circular" : 0,
						"speaker/9/coordinates/visible" : 1,
						"speaker/9/orientation/mode" : "default",
						"speaker/9/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/9/orientation/visible" : 0,
						"speaker/9/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/9/proportion" : 100.0,
						"speaker/9/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/9/image" : "",
						"speaker/9/label" : "9",
						"speaker/9/label/visible" : 1,
						"speaker/9/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/9/label/justification" : "centred",
						"speaker/9/vumeter/visible" : 0,
						"speaker/9/vumeter/level" : -60.0,
						"speaker/10/visible" : 1,
						"speaker/10/editable" : 0,
						"speaker/10/select" : 0,
						"speaker/10/aed" : [ -180.0, 12.559000015258789, 10.347999572753906 ],
						"speaker/10/constraint/circular" : 0,
						"speaker/10/coordinates/visible" : 1,
						"speaker/10/orientation/mode" : "default",
						"speaker/10/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/10/orientation/visible" : 0,
						"speaker/10/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/10/proportion" : 100.0,
						"speaker/10/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/10/image" : "",
						"speaker/10/label" : "10",
						"speaker/10/label/visible" : 1,
						"speaker/10/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/10/label/justification" : "centred",
						"speaker/10/vumeter/visible" : 0,
						"speaker/10/vumeter/level" : -60.0,
						"speaker/11/visible" : 1,
						"speaker/11/editable" : 0,
						"speaker/11/select" : 0,
						"speaker/11/aed" : [ -158.393997192382812, 11.701999664306641, 11.093999862670898 ],
						"speaker/11/constraint/circular" : 0,
						"speaker/11/coordinates/visible" : 1,
						"speaker/11/orientation/mode" : "default",
						"speaker/11/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/11/orientation/visible" : 0,
						"speaker/11/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/11/proportion" : 100.0,
						"speaker/11/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/11/image" : "",
						"speaker/11/label" : "11",
						"speaker/11/label/visible" : 1,
						"speaker/11/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/11/label/justification" : "centred",
						"speaker/11/vumeter/visible" : 0,
						"speaker/11/vumeter/level" : -60.0,
						"speaker/12/visible" : 1,
						"speaker/12/editable" : 0,
						"speaker/12/select" : 0,
						"speaker/12/aed" : [ -140.421005249023438, 13.019000053405762, 9.98799991607666 ],
						"speaker/12/constraint/circular" : 0,
						"speaker/12/coordinates/visible" : 1,
						"speaker/12/orientation/mode" : "default",
						"speaker/12/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/12/orientation/visible" : 0,
						"speaker/12/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/12/proportion" : 100.0,
						"speaker/12/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/12/image" : "",
						"speaker/12/label" : "12",
						"speaker/12/label/visible" : 1,
						"speaker/12/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/12/label/justification" : "centred",
						"speaker/12/vumeter/visible" : 0,
						"speaker/12/vumeter/level" : -60.0,
						"speaker/13/visible" : 1,
						"speaker/13/editable" : 0,
						"speaker/13/select" : 0,
						"speaker/13/aed" : [ -122.828994750976562, 16.958999633789062, 7.714000225067139 ],
						"speaker/13/constraint/circular" : 0,
						"speaker/13/coordinates/visible" : 1,
						"speaker/13/orientation/mode" : "default",
						"speaker/13/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/13/orientation/visible" : 0,
						"speaker/13/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/13/proportion" : 100.0,
						"speaker/13/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/13/image" : "",
						"speaker/13/label" : "13",
						"speaker/13/label/visible" : 1,
						"speaker/13/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/13/label/justification" : "centred",
						"speaker/13/vumeter/visible" : 0,
						"speaker/13/vumeter/level" : -60.0,
						"speaker/14/visible" : 1,
						"speaker/14/editable" : 0,
						"speaker/14/select" : 0,
						"speaker/14/aed" : [ -94.610992431640625, 19.886999130249023, 6.614999771118164 ],
						"speaker/14/constraint/circular" : 0,
						"speaker/14/coordinates/visible" : 1,
						"speaker/14/orientation/mode" : "default",
						"speaker/14/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/14/orientation/visible" : 0,
						"speaker/14/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/14/proportion" : 100.0,
						"speaker/14/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/14/image" : "",
						"speaker/14/label" : "14",
						"speaker/14/label/visible" : 1,
						"speaker/14/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/14/label/justification" : "centred",
						"speaker/14/vumeter/visible" : 0,
						"speaker/14/vumeter/level" : -60.0,
						"speaker/15/visible" : 1,
						"speaker/15/editable" : 0,
						"speaker/15/select" : 0,
						"speaker/15/aed" : [ -64.178985595703125, 18.090999603271484, 7.245999813079834 ],
						"speaker/15/constraint/circular" : 0,
						"speaker/15/coordinates/visible" : 1,
						"speaker/15/orientation/mode" : "default",
						"speaker/15/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/15/orientation/visible" : 0,
						"speaker/15/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/15/proportion" : 100.0,
						"speaker/15/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/15/image" : "",
						"speaker/15/label" : "15",
						"speaker/15/label/visible" : 1,
						"speaker/15/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/15/label/justification" : "centred",
						"speaker/15/vumeter/visible" : 0,
						"speaker/15/vumeter/level" : -60.0,
						"speaker/16/visible" : 1,
						"speaker/16/editable" : 0,
						"speaker/16/select" : 0,
						"speaker/16/aed" : [ -43.647003173828125, 14.062000274658203, 9.260000228881836 ],
						"speaker/16/constraint/circular" : 0,
						"speaker/16/coordinates/visible" : 1,
						"speaker/16/orientation/mode" : "default",
						"speaker/16/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/16/orientation/visible" : 0,
						"speaker/16/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/16/proportion" : 100.0,
						"speaker/16/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/16/image" : "",
						"speaker/16/label" : "16",
						"speaker/16/label/visible" : 1,
						"speaker/16/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/16/label/justification" : "centred",
						"speaker/16/vumeter/visible" : 0,
						"speaker/16/vumeter/level" : -60.0,
						"speaker/17/visible" : 1,
						"speaker/17/editable" : 0,
						"speaker/17/select" : 0,
						"speaker/17/aed" : [ -21.605010986328125, 25.14900016784668, 12.00100040435791 ],
						"speaker/17/constraint/circular" : 0,
						"speaker/17/coordinates/visible" : 1,
						"speaker/17/orientation/mode" : "default",
						"speaker/17/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/17/orientation/visible" : 0,
						"speaker/17/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/17/proportion" : 100.0,
						"speaker/17/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/17/image" : "",
						"speaker/17/label" : "17",
						"speaker/17/label/visible" : 1,
						"speaker/17/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/17/label/justification" : "centred",
						"speaker/17/vumeter/visible" : 0,
						"speaker/17/vumeter/level" : -60.0,
						"speaker/18/visible" : 1,
						"speaker/18/editable" : 0,
						"speaker/18/select" : 0,
						"speaker/18/aed" : [ 0.0, 26.791999816894531, 11.314999580383301 ],
						"speaker/18/constraint/circular" : 0,
						"speaker/18/coordinates/visible" : 1,
						"speaker/18/orientation/mode" : "default",
						"speaker/18/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/18/orientation/visible" : 0,
						"speaker/18/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/18/proportion" : 100.0,
						"speaker/18/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/18/image" : "",
						"speaker/18/label" : "18",
						"speaker/18/label/visible" : 1,
						"speaker/18/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/18/label/justification" : "centred",
						"speaker/18/vumeter/visible" : 0,
						"speaker/18/vumeter/level" : -60.0,
						"speaker/19/visible" : 1,
						"speaker/19/editable" : 0,
						"speaker/19/select" : 0,
						"speaker/19/aed" : [ 21.604999542236328, 25.14900016784668, 12.00100040435791 ],
						"speaker/19/constraint/circular" : 0,
						"speaker/19/coordinates/visible" : 1,
						"speaker/19/orientation/mode" : "default",
						"speaker/19/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/19/orientation/visible" : 0,
						"speaker/19/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/19/proportion" : 100.0,
						"speaker/19/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/19/image" : "",
						"speaker/19/label" : "19",
						"speaker/19/label/visible" : 1,
						"speaker/19/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/19/label/justification" : "centred",
						"speaker/19/vumeter/visible" : 0,
						"speaker/19/vumeter/level" : -60.0,
						"speaker/20/visible" : 1,
						"speaker/20/editable" : 0,
						"speaker/20/select" : 0,
						"speaker/20/aed" : [ 64.179000854492188, 36.518001556396484, 8.569999694824219 ],
						"speaker/20/constraint/circular" : 0,
						"speaker/20/coordinates/visible" : 1,
						"speaker/20/orientation/mode" : "default",
						"speaker/20/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/20/orientation/visible" : 0,
						"speaker/20/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/20/proportion" : 100.0,
						"speaker/20/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/20/image" : "",
						"speaker/20/label" : "20",
						"speaker/20/label/visible" : 1,
						"speaker/20/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/20/label/justification" : "centred",
						"speaker/20/vumeter/visible" : 0,
						"speaker/20/vumeter/level" : -60.0,
						"speaker/21/visible" : 1,
						"speaker/21/editable" : 0,
						"speaker/21/select" : 0,
						"speaker/21/aed" : [ 122.829002380371094, 34.652999877929688, 8.968999862670898 ],
						"speaker/21/constraint/circular" : 0,
						"speaker/21/coordinates/visible" : 1,
						"speaker/21/orientation/mode" : "default",
						"speaker/21/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/21/orientation/visible" : 0,
						"speaker/21/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/21/proportion" : 100.0,
						"speaker/21/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/21/image" : "",
						"speaker/21/label" : "21",
						"speaker/21/label/visible" : 1,
						"speaker/21/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/21/label/justification" : "centred",
						"speaker/21/vumeter/visible" : 0,
						"speaker/21/vumeter/level" : -60.0,
						"speaker/22/visible" : 1,
						"speaker/22/editable" : 0,
						"speaker/22/select" : 0,
						"speaker/22/aed" : [ 158.393997192382812, 25.14900016784668, 12.00100040435791 ],
						"speaker/22/constraint/circular" : 0,
						"speaker/22/coordinates/visible" : 1,
						"speaker/22/orientation/mode" : "default",
						"speaker/22/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/22/orientation/visible" : 0,
						"speaker/22/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/22/proportion" : 100.0,
						"speaker/22/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/22/image" : "",
						"speaker/22/label" : "22",
						"speaker/22/label/visible" : 1,
						"speaker/22/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/22/label/justification" : "centred",
						"speaker/22/vumeter/visible" : 0,
						"speaker/22/vumeter/level" : -60.0,
						"speaker/23/visible" : 1,
						"speaker/23/editable" : 0,
						"speaker/23/select" : 0,
						"speaker/23/aed" : [ -180.0, 26.791999816894531, 11.314999580383301 ],
						"speaker/23/constraint/circular" : 0,
						"speaker/23/coordinates/visible" : 1,
						"speaker/23/orientation/mode" : "default",
						"speaker/23/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/23/orientation/visible" : 0,
						"speaker/23/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/23/proportion" : 100.0,
						"speaker/23/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/23/image" : "",
						"speaker/23/label" : "23",
						"speaker/23/label/visible" : 1,
						"speaker/23/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/23/label/justification" : "centred",
						"speaker/23/vumeter/visible" : 0,
						"speaker/23/vumeter/level" : -60.0,
						"speaker/24/visible" : 1,
						"speaker/24/editable" : 0,
						"speaker/24/select" : 0,
						"speaker/24/aed" : [ -158.393997192382812, 25.14900016784668, 12.00100040435791 ],
						"speaker/24/constraint/circular" : 0,
						"speaker/24/coordinates/visible" : 1,
						"speaker/24/orientation/mode" : "default",
						"speaker/24/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/24/orientation/visible" : 0,
						"speaker/24/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/24/proportion" : 100.0,
						"speaker/24/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/24/image" : "",
						"speaker/24/label" : "24",
						"speaker/24/label/visible" : 1,
						"speaker/24/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/24/label/justification" : "centred",
						"speaker/24/vumeter/visible" : 0,
						"speaker/24/vumeter/level" : -60.0,
						"speaker/25/visible" : 1,
						"speaker/25/editable" : 0,
						"speaker/25/select" : 0,
						"speaker/25/aed" : [ -122.828994750976562, 34.652999877929688, 8.968999862670898 ],
						"speaker/25/constraint/circular" : 0,
						"speaker/25/coordinates/visible" : 1,
						"speaker/25/orientation/mode" : "default",
						"speaker/25/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/25/orientation/visible" : 0,
						"speaker/25/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/25/proportion" : 100.0,
						"speaker/25/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/25/image" : "",
						"speaker/25/label" : "25",
						"speaker/25/label/visible" : 1,
						"speaker/25/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/25/label/justification" : "centred",
						"speaker/25/vumeter/visible" : 0,
						"speaker/25/vumeter/level" : -60.0,
						"speaker/26/visible" : 1,
						"speaker/26/editable" : 0,
						"speaker/26/select" : 0,
						"speaker/26/aed" : [ -64.178985595703125, 36.518001556396484, 8.569999694824219 ],
						"speaker/26/constraint/circular" : 0,
						"speaker/26/coordinates/visible" : 1,
						"speaker/26/orientation/mode" : "default",
						"speaker/26/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/26/orientation/visible" : 0,
						"speaker/26/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/26/proportion" : 100.0,
						"speaker/26/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/26/image" : "",
						"speaker/26/label" : "26",
						"speaker/26/label/visible" : 1,
						"speaker/26/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/26/label/justification" : "centred",
						"speaker/26/vumeter/visible" : 0,
						"speaker/26/vumeter/level" : -60.0,
						"speaker/27/visible" : 1,
						"speaker/27/editable" : 0,
						"speaker/27/select" : 0,
						"speaker/27/aed" : [ -24.774993896484375, 43.443000793457031, 9.859999656677246 ],
						"speaker/27/constraint/circular" : 0,
						"speaker/27/coordinates/visible" : 1,
						"speaker/27/orientation/mode" : "default",
						"speaker/27/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/27/orientation/visible" : 0,
						"speaker/27/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/27/proportion" : 100.0,
						"speaker/27/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/27/image" : "",
						"speaker/27/label" : "27",
						"speaker/27/label/visible" : 1,
						"speaker/27/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/27/label/justification" : "centred",
						"speaker/27/vumeter/visible" : 0,
						"speaker/27/vumeter/level" : -60.0,
						"speaker/28/visible" : 1,
						"speaker/28/editable" : 0,
						"speaker/28/select" : 0,
						"speaker/28/aed" : [ 24.774999618530273, 43.443000793457031, 9.859999656677246 ],
						"speaker/28/constraint/circular" : 0,
						"speaker/28/coordinates/visible" : 1,
						"speaker/28/orientation/mode" : "default",
						"speaker/28/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/28/orientation/visible" : 0,
						"speaker/28/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/28/proportion" : 100.0,
						"speaker/28/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/28/image" : "",
						"speaker/28/label" : "28",
						"speaker/28/label/visible" : 1,
						"speaker/28/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/28/label/justification" : "centred",
						"speaker/28/vumeter/visible" : 0,
						"speaker/28/vumeter/level" : -60.0,
						"speaker/29/visible" : 1,
						"speaker/29/editable" : 0,
						"speaker/29/select" : 0,
						"speaker/29/aed" : [ -99.462005615234375, 65.839996337890625, 7.431000232696533 ],
						"speaker/29/constraint/circular" : 0,
						"speaker/29/coordinates/visible" : 1,
						"speaker/29/orientation/mode" : "default",
						"speaker/29/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/29/orientation/visible" : 0,
						"speaker/29/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/29/proportion" : 100.0,
						"speaker/29/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/29/image" : "",
						"speaker/29/label" : "29",
						"speaker/29/label/visible" : 1,
						"speaker/29/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/29/label/justification" : "centred",
						"speaker/29/vumeter/visible" : 0,
						"speaker/29/vumeter/level" : -60.0,
						"speaker/30/visible" : 1,
						"speaker/30/editable" : 0,
						"speaker/30/select" : 0,
						"speaker/30/aed" : [ 99.461997985839844, 65.839996337890625, 7.431000232696533 ],
						"speaker/30/constraint/circular" : 0,
						"speaker/30/coordinates/visible" : 1,
						"speaker/30/orientation/mode" : "default",
						"speaker/30/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/30/orientation/visible" : 0,
						"speaker/30/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/30/proportion" : 100.0,
						"speaker/30/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/30/image" : "",
						"speaker/30/label" : "30",
						"speaker/30/label/visible" : 1,
						"speaker/30/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/30/label/justification" : "centred",
						"speaker/30/vumeter/visible" : 0,
						"speaker/30/vumeter/level" : -60.0,
						"speaker/31/visible" : 1,
						"speaker/31/editable" : 0,
						"speaker/31/select" : 0,
						"speaker/31/aed" : [ -158.199005126953125, 40.007999420166016, 10.545999526977539 ],
						"speaker/31/constraint/circular" : 0,
						"speaker/31/coordinates/visible" : 1,
						"speaker/31/orientation/mode" : "default",
						"speaker/31/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/31/orientation/visible" : 0,
						"speaker/31/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/31/proportion" : 100.0,
						"speaker/31/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/31/image" : "",
						"speaker/31/label" : "31",
						"speaker/31/label/visible" : 1,
						"speaker/31/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/31/label/justification" : "centred",
						"speaker/31/vumeter/visible" : 0,
						"speaker/31/vumeter/level" : -60.0,
						"speaker/32/visible" : 1,
						"speaker/32/editable" : 0,
						"speaker/32/select" : 0,
						"speaker/32/aed" : [ 158.199005126953125, 40.007999420166016, 10.545999526977539 ],
						"speaker/32/constraint/circular" : 0,
						"speaker/32/coordinates/visible" : 1,
						"speaker/32/orientation/mode" : "default",
						"speaker/32/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/32/orientation/visible" : 0,
						"speaker/32/lookat/xyz" : [ 0.0, 0.0, 0.0 ],
						"speaker/32/proportion" : 100.0,
						"speaker/32/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speaker/32/image" : "",
						"speaker/32/label" : "32",
						"speaker/32/label/visible" : 1,
						"speaker/32/label/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"speaker/32/label/justification" : "centred",
						"speaker/32/vumeter/visible" : 0,
						"speaker/32/vumeter/level" : -60.0,
						"stereo/number" : 0,
						"subwoofer/number" : 0,
						"listener/visible" : 0,
						"listener/editable" : 0,
						"listener/select" : 0,
						"listener/aed" : [ 90.0, 0.0, 0.0 ],
						"listener/constraint/circular" : 0,
						"listener/coordinates/visible" : 1,
						"listener/orientation/mode" : "default",
						"listener/orientation" : [ 0.0, 0.0, 0.0, 1.0 ],
						"listener/orientation/visible" : 0,
						"listener/lookat/xyz" : [ 0.0, 1.0, 0.0 ],
						"listener/proportion" : 100.0,
						"listener/color" : [ 0.0, 0.0, 0.0, 0.0 ],
						"listener/headphones/visible" : 0,
						"multi/number" : 0,
						"microphone/number" : 0,
						"eigenmike/number" : 0,
						"format" : "aed",
						"background/color" : [ 0.709803938865662, 0.709803938865662, 0.709803938865662, 1.0 ],
						"backgroundimage/file" : "",
						"backgroundimage/visible" : 1,
						"backgroundimage/opacity" : 1.0,
						"backgroundimage/scale" : 100.0,
						"backgroundimage/angle" : 0.0,
						"backgroundimage/offset/xy" : [ 0.0, 0.0 ],
						"backgroundimage/quality" : "medium",
						"display/zoom" : 86.990386962890625,
						"display/offset/xyz" : [ 0.0, 0.0, 0.0 ],
						"display/zoom/lock" : 0,
						"axis/visible" : 1,
						"axis/label/visible" : 1,
						"axis/origin/visible" : 1,
						"axis/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"axis/thickness" : 2.0,
						"grid/visible" : 1,
						"grid/mode" : "circular",
						"grid/spacing" : 1.0,
						"grid/line/number" : 30,
						"grid/angulardivisions/number" : 8,
						"grid/angulardivisions/visible" : 1,
						"grid/dashed" : 0,
						"grid/color" : [ 1.0, 1.0, 1.0, 0.501960813999176 ],
						"grid/thickness" : 1.0,
						"grid/unitcircle/visible" : 1,
						"grid/unitcircle/color" : [ 0.501960813999176, 0.501960813999176, 0.501960813999176, 0.239215686917305 ],
						"grid/unitcircle/radius" : 1.0,
						"legend/visible" : 1,
						"legend/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"legend/unit" : "meters",
						"emphasis/source" : 1,
						"emphasis/stereo" : 1,
						"emphasis/speaker" : 0,
						"emphasis/microphone" : 0,
						"ruler/visible" : 0,
						"ruler/color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"ruler/unit" : "meters",
						"hoa/number" : 0,
						"anchor/number" : 0,
						"phone/number" : 0,
						"area/number" : 0,
						"path/number" : 0,
						"speakerhull/visible" : 0,
						"speakerhull/color" : [ 0.0, 0.0, 0.0, 1.0 ],
						"speakerhull/fill" : 0,
						"speakerhull/fill/color" : [ 0.0, 0.0, 0.0, 0.298039227724075 ],
						"settings/visible" : 0,
						"settings/editable" : 1,
						"layout" : "leftright",
						"source/1/pres" : 90.0,
						"source/1/warm" : 30.0,
						"source/1/bril" : 30.0,
						"source/1/prer" : 48.0,
						"source/1/revp" : 34.0,
						"source/1/env" : 24.0,
						"source/1/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/1/axis/mute" : 0,
						"source/1/axis/bypass" : 0,
						"source/1/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/1/omni/mute" : 0,
						"source/1/omni/bypass" : 0,
						"source/1/doppler" : 0,
						"source/1/air" : 1,
						"source/1/air/freq" : 10000.0,
						"source/1/drop" : 6.0,
						"source/1/drop/mode" : "log2",
						"source/1/radius" : 1.0,
						"source/1/room/destination" : 1,
						"source/1/mute" : 0,
						"source/1/solo" : 0,
						"source/1/direct/mute" : 0,
						"source/1/early/mute" : 0,
						"source/1/cluster/mute" : 0,
						"source/1/reverb/mute" : 0,
						"source/1/early/width" : 30.0,
						"source/1/early/shape" : 50.0,
						"source/1/spread" : 0.0,
						"source/1/panrev" : 0.0,
						"source/1/lock" : 0,
						"source/2/pres" : 90.0,
						"source/2/warm" : 30.0,
						"source/2/bril" : 30.0,
						"source/2/prer" : 48.0,
						"source/2/revp" : 34.0,
						"source/2/env" : 24.0,
						"source/2/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/2/axis/mute" : 0,
						"source/2/axis/bypass" : 0,
						"source/2/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/2/omni/mute" : 0,
						"source/2/omni/bypass" : 0,
						"source/2/doppler" : 0,
						"source/2/air" : 1,
						"source/2/air/freq" : 10000.0,
						"source/2/drop" : 6.0,
						"source/2/drop/mode" : "log2",
						"source/2/radius" : 1.0,
						"source/2/room/destination" : 1,
						"source/2/mute" : 0,
						"source/2/solo" : 0,
						"source/2/direct/mute" : 0,
						"source/2/early/mute" : 0,
						"source/2/cluster/mute" : 0,
						"source/2/reverb/mute" : 0,
						"source/2/early/width" : 30.0,
						"source/2/early/shape" : 50.0,
						"source/2/spread" : 0.0,
						"source/2/panrev" : 0.0,
						"source/2/lock" : 0,
						"source/3/pres" : 82.199996948242188,
						"source/3/warm" : 30.0,
						"source/3/bril" : 30.0,
						"source/3/prer" : 48.0,
						"source/3/revp" : 34.0,
						"source/3/env" : 24.0,
						"source/3/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/3/axis/mute" : 0,
						"source/3/axis/bypass" : 0,
						"source/3/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/3/omni/mute" : 0,
						"source/3/omni/bypass" : 0,
						"source/3/doppler" : 0,
						"source/3/air" : 1,
						"source/3/air/freq" : 10000.0,
						"source/3/drop" : 6.0,
						"source/3/drop/mode" : "log2",
						"source/3/radius" : 1.0,
						"source/3/room/destination" : 1,
						"source/3/mute" : 0,
						"source/3/solo" : 0,
						"source/3/direct/mute" : 0,
						"source/3/early/mute" : 0,
						"source/3/cluster/mute" : 0,
						"source/3/reverb/mute" : 0,
						"source/3/early/width" : 30.0,
						"source/3/early/shape" : 50.0,
						"source/3/spread" : 0.0,
						"source/3/panrev" : 0.0,
						"source/3/lock" : 0,
						"source/4/pres" : 81.599998474121094,
						"source/4/warm" : 30.0,
						"source/4/bril" : 30.0,
						"source/4/prer" : 48.0,
						"source/4/revp" : 34.0,
						"source/4/env" : 24.0,
						"source/4/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/4/axis/mute" : 0,
						"source/4/axis/bypass" : 0,
						"source/4/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/4/omni/mute" : 0,
						"source/4/omni/bypass" : 0,
						"source/4/doppler" : 0,
						"source/4/air" : 1,
						"source/4/air/freq" : 10000.0,
						"source/4/drop" : 6.0,
						"source/4/drop/mode" : "log2",
						"source/4/radius" : 1.0,
						"source/4/room/destination" : 1,
						"source/4/mute" : 0,
						"source/4/solo" : 0,
						"source/4/direct/mute" : 0,
						"source/4/early/mute" : 0,
						"source/4/cluster/mute" : 0,
						"source/4/reverb/mute" : 0,
						"source/4/early/width" : 30.0,
						"source/4/early/shape" : 50.0,
						"source/4/spread" : 0.0,
						"source/4/panrev" : 0.0,
						"source/4/lock" : 0,
						"source/5/pres" : 87.099998474121094,
						"source/5/warm" : 30.0,
						"source/5/bril" : 30.0,
						"source/5/prer" : 48.0,
						"source/5/revp" : 34.0,
						"source/5/env" : 24.0,
						"source/5/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/5/axis/mute" : 0,
						"source/5/axis/bypass" : 0,
						"source/5/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/5/omni/mute" : 0,
						"source/5/omni/bypass" : 0,
						"source/5/doppler" : 0,
						"source/5/air" : 1,
						"source/5/air/freq" : 10000.0,
						"source/5/drop" : 6.0,
						"source/5/drop/mode" : "log2",
						"source/5/radius" : 1.0,
						"source/5/room/destination" : 1,
						"source/5/mute" : 0,
						"source/5/solo" : 0,
						"source/5/direct/mute" : 0,
						"source/5/early/mute" : 0,
						"source/5/cluster/mute" : 0,
						"source/5/reverb/mute" : 0,
						"source/5/early/width" : 30.0,
						"source/5/early/shape" : 50.0,
						"source/5/spread" : 0.0,
						"source/5/panrev" : 0.0,
						"source/5/lock" : 0,
						"source/6/pres" : 90.0,
						"source/6/warm" : 30.0,
						"source/6/bril" : 30.0,
						"source/6/prer" : 48.0,
						"source/6/revp" : 34.0,
						"source/6/env" : 24.0,
						"source/6/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/6/axis/mute" : 0,
						"source/6/axis/bypass" : 0,
						"source/6/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/6/omni/mute" : 0,
						"source/6/omni/bypass" : 0,
						"source/6/doppler" : 0,
						"source/6/air" : 1,
						"source/6/air/freq" : 10000.0,
						"source/6/drop" : 6.0,
						"source/6/drop/mode" : "log2",
						"source/6/radius" : 1.0,
						"source/6/room/destination" : 1,
						"source/6/mute" : 0,
						"source/6/solo" : 0,
						"source/6/direct/mute" : 0,
						"source/6/early/mute" : 0,
						"source/6/cluster/mute" : 0,
						"source/6/reverb/mute" : 0,
						"source/6/early/width" : 30.0,
						"source/6/early/shape" : 50.0,
						"source/6/spread" : 0.0,
						"source/6/panrev" : 0.0,
						"source/6/lock" : 0,
						"source/7/pres" : 90.0,
						"source/7/warm" : 30.0,
						"source/7/bril" : 30.0,
						"source/7/prer" : 48.0,
						"source/7/revp" : 34.0,
						"source/7/env" : 24.0,
						"source/7/axis/params" : [ 3.099999904632568, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/7/axis/mute" : 0,
						"source/7/axis/bypass" : 0,
						"source/7/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/7/omni/mute" : 0,
						"source/7/omni/bypass" : 0,
						"source/7/doppler" : 0,
						"source/7/air" : 1,
						"source/7/air/freq" : 10000.0,
						"source/7/drop" : 6.0,
						"source/7/drop/mode" : "log2",
						"source/7/radius" : 1.0,
						"source/7/room/destination" : 1,
						"source/7/mute" : 0,
						"source/7/solo" : 0,
						"source/7/direct/mute" : 0,
						"source/7/early/mute" : 0,
						"source/7/cluster/mute" : 0,
						"source/7/reverb/mute" : 0,
						"source/7/early/width" : 30.0,
						"source/7/early/shape" : 50.0,
						"source/7/spread" : 0.0,
						"source/7/panrev" : 0.0,
						"source/7/lock" : 0,
						"source/8/pres" : 90.0,
						"source/8/warm" : 30.0,
						"source/8/bril" : 30.0,
						"source/8/prer" : 48.0,
						"source/8/revp" : 34.0,
						"source/8/env" : 24.0,
						"source/8/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/8/axis/mute" : 0,
						"source/8/axis/bypass" : 0,
						"source/8/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/8/omni/mute" : 0,
						"source/8/omni/bypass" : 0,
						"source/8/doppler" : 0,
						"source/8/air" : 1,
						"source/8/air/freq" : 10000.0,
						"source/8/drop" : 6.0,
						"source/8/drop/mode" : "log2",
						"source/8/radius" : 1.0,
						"source/8/room/destination" : 1,
						"source/8/mute" : 0,
						"source/8/solo" : 0,
						"source/8/direct/mute" : 0,
						"source/8/early/mute" : 0,
						"source/8/cluster/mute" : 0,
						"source/8/reverb/mute" : 0,
						"source/8/early/width" : 30.0,
						"source/8/early/shape" : 50.0,
						"source/8/spread" : 0.0,
						"source/8/panrev" : 0.0,
						"source/8/lock" : 0,
						"source/9/pres" : 90.0,
						"source/9/warm" : 30.0,
						"source/9/bril" : 30.0,
						"source/9/prer" : 48.0,
						"source/9/revp" : 34.0,
						"source/9/env" : 24.0,
						"source/9/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/9/axis/mute" : 0,
						"source/9/axis/bypass" : 0,
						"source/9/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/9/omni/mute" : 0,
						"source/9/omni/bypass" : 0,
						"source/9/doppler" : 0,
						"source/9/air" : 1,
						"source/9/air/freq" : 10000.0,
						"source/9/drop" : 6.0,
						"source/9/drop/mode" : "log2",
						"source/9/radius" : 1.0,
						"source/9/room/destination" : 1,
						"source/9/mute" : 0,
						"source/9/solo" : 0,
						"source/9/direct/mute" : 0,
						"source/9/early/mute" : 0,
						"source/9/cluster/mute" : 0,
						"source/9/reverb/mute" : 0,
						"source/9/early/width" : 30.0,
						"source/9/early/shape" : 50.0,
						"source/9/spread" : 0.0,
						"source/9/panrev" : 0.0,
						"source/9/lock" : 0,
						"source/10/pres" : 83.199996948242188,
						"source/10/warm" : 30.0,
						"source/10/bril" : 30.0,
						"source/10/prer" : 48.0,
						"source/10/revp" : 34.0,
						"source/10/env" : 24.0,
						"source/10/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/10/axis/mute" : 0,
						"source/10/axis/bypass" : 0,
						"source/10/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/10/omni/mute" : 0,
						"source/10/omni/bypass" : 0,
						"source/10/doppler" : 0,
						"source/10/air" : 1,
						"source/10/air/freq" : 10000.0,
						"source/10/drop" : 6.0,
						"source/10/drop/mode" : "log2",
						"source/10/radius" : 1.0,
						"source/10/room/destination" : 1,
						"source/10/mute" : 0,
						"source/10/solo" : 0,
						"source/10/direct/mute" : 0,
						"source/10/early/mute" : 0,
						"source/10/cluster/mute" : 0,
						"source/10/reverb/mute" : 0,
						"source/10/early/width" : 30.0,
						"source/10/early/shape" : 50.0,
						"source/10/spread" : 0.0,
						"source/10/panrev" : 0.0,
						"source/10/lock" : 0,
						"source/11/pres" : 90.0,
						"source/11/warm" : 30.0,
						"source/11/bril" : 30.0,
						"source/11/prer" : 48.0,
						"source/11/revp" : 34.0,
						"source/11/env" : 24.0,
						"source/11/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/11/axis/mute" : 0,
						"source/11/axis/bypass" : 0,
						"source/11/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/11/omni/mute" : 0,
						"source/11/omni/bypass" : 0,
						"source/11/doppler" : 0,
						"source/11/air" : 1,
						"source/11/air/freq" : 10000.0,
						"source/11/drop" : 6.0,
						"source/11/drop/mode" : "log2",
						"source/11/radius" : 1.0,
						"source/11/room/destination" : 1,
						"source/11/mute" : 0,
						"source/11/solo" : 0,
						"source/11/direct/mute" : 0,
						"source/11/early/mute" : 0,
						"source/11/cluster/mute" : 0,
						"source/11/reverb/mute" : 0,
						"source/11/early/width" : 30.0,
						"source/11/early/shape" : 50.0,
						"source/11/spread" : 0.0,
						"source/11/panrev" : 0.0,
						"source/11/lock" : 0,
						"source/12/pres" : 90.0,
						"source/12/warm" : 30.0,
						"source/12/bril" : 30.0,
						"source/12/prer" : 48.0,
						"source/12/revp" : 34.0,
						"source/12/env" : 24.0,
						"source/12/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/12/axis/mute" : 0,
						"source/12/axis/bypass" : 0,
						"source/12/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/12/omni/mute" : 0,
						"source/12/omni/bypass" : 0,
						"source/12/doppler" : 0,
						"source/12/air" : 1,
						"source/12/air/freq" : 10000.0,
						"source/12/drop" : 6.0,
						"source/12/drop/mode" : "log2",
						"source/12/radius" : 1.0,
						"source/12/room/destination" : 1,
						"source/12/mute" : 0,
						"source/12/solo" : 0,
						"source/12/direct/mute" : 0,
						"source/12/early/mute" : 0,
						"source/12/cluster/mute" : 0,
						"source/12/reverb/mute" : 0,
						"source/12/early/width" : 30.0,
						"source/12/early/shape" : 50.0,
						"source/12/spread" : 0.0,
						"source/12/panrev" : 0.0,
						"source/12/lock" : 0,
						"source/13/pres" : 90.0,
						"source/13/warm" : 30.0,
						"source/13/bril" : 30.0,
						"source/13/prer" : 48.0,
						"source/13/revp" : 34.0,
						"source/13/env" : 24.0,
						"source/13/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/13/axis/mute" : 0,
						"source/13/axis/bypass" : 0,
						"source/13/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/13/omni/mute" : 0,
						"source/13/omni/bypass" : 0,
						"source/13/doppler" : 0,
						"source/13/air" : 1,
						"source/13/air/freq" : 10000.0,
						"source/13/drop" : 6.0,
						"source/13/drop/mode" : "log2",
						"source/13/radius" : 1.0,
						"source/13/room/destination" : 1,
						"source/13/mute" : 0,
						"source/13/solo" : 0,
						"source/13/direct/mute" : 0,
						"source/13/early/mute" : 0,
						"source/13/cluster/mute" : 0,
						"source/13/reverb/mute" : 0,
						"source/13/early/width" : 30.0,
						"source/13/early/shape" : 50.0,
						"source/13/spread" : 0.0,
						"source/13/panrev" : 0.0,
						"source/13/lock" : 0,
						"source/14/pres" : 90.0,
						"source/14/warm" : 30.0,
						"source/14/bril" : 30.0,
						"source/14/prer" : 48.0,
						"source/14/revp" : 34.0,
						"source/14/env" : 24.0,
						"source/14/axis/params" : [ 3.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/14/axis/mute" : 0,
						"source/14/axis/bypass" : 0,
						"source/14/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/14/omni/mute" : 0,
						"source/14/omni/bypass" : 0,
						"source/14/doppler" : 0,
						"source/14/air" : 1,
						"source/14/air/freq" : 10000.0,
						"source/14/drop" : 6.0,
						"source/14/drop/mode" : "log2",
						"source/14/radius" : 1.0,
						"source/14/room/destination" : 1,
						"source/14/mute" : 0,
						"source/14/solo" : 0,
						"source/14/direct/mute" : 0,
						"source/14/early/mute" : 0,
						"source/14/cluster/mute" : 0,
						"source/14/reverb/mute" : 0,
						"source/14/early/width" : 30.0,
						"source/14/early/shape" : 50.0,
						"source/14/spread" : 0.0,
						"source/14/panrev" : 0.0,
						"source/14/lock" : 0,
						"source/15/pres" : 90.0,
						"source/15/warm" : 30.0,
						"source/15/bril" : 30.0,
						"source/15/prer" : 48.0,
						"source/15/revp" : 34.0,
						"source/15/env" : 24.0,
						"source/15/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/15/axis/mute" : 0,
						"source/15/axis/bypass" : 0,
						"source/15/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/15/omni/mute" : 0,
						"source/15/omni/bypass" : 0,
						"source/15/doppler" : 0,
						"source/15/air" : 1,
						"source/15/air/freq" : 10000.0,
						"source/15/drop" : 6.0,
						"source/15/drop/mode" : "log2",
						"source/15/radius" : 1.0,
						"source/15/room/destination" : 1,
						"source/15/mute" : 0,
						"source/15/solo" : 0,
						"source/15/direct/mute" : 0,
						"source/15/early/mute" : 0,
						"source/15/cluster/mute" : 0,
						"source/15/reverb/mute" : 0,
						"source/15/early/width" : 30.0,
						"source/15/early/shape" : 50.0,
						"source/15/spread" : 0.0,
						"source/15/panrev" : 0.0,
						"source/15/lock" : 0,
						"source/16/pres" : 90.0,
						"source/16/warm" : 30.0,
						"source/16/bril" : 30.0,
						"source/16/prer" : 48.0,
						"source/16/revp" : 34.0,
						"source/16/env" : 24.0,
						"source/16/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/16/axis/mute" : 0,
						"source/16/axis/bypass" : 0,
						"source/16/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/16/omni/mute" : 0,
						"source/16/omni/bypass" : 0,
						"source/16/doppler" : 0,
						"source/16/air" : 1,
						"source/16/air/freq" : 10000.0,
						"source/16/drop" : 6.0,
						"source/16/drop/mode" : "log2",
						"source/16/radius" : 1.0,
						"source/16/room/destination" : 1,
						"source/16/mute" : 0,
						"source/16/solo" : 0,
						"source/16/direct/mute" : 0,
						"source/16/early/mute" : 0,
						"source/16/cluster/mute" : 0,
						"source/16/reverb/mute" : 0,
						"source/16/early/width" : 30.0,
						"source/16/early/shape" : 50.0,
						"source/16/spread" : 0.0,
						"source/16/panrev" : 0.0,
						"source/16/lock" : 0,
						"source/17/pres" : 80.5,
						"source/17/warm" : 30.0,
						"source/17/bril" : 30.0,
						"source/17/prer" : 48.0,
						"source/17/revp" : 34.0,
						"source/17/env" : 24.0,
						"source/17/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/17/axis/mute" : 0,
						"source/17/axis/bypass" : 0,
						"source/17/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/17/omni/mute" : 0,
						"source/17/omni/bypass" : 0,
						"source/17/doppler" : 0,
						"source/17/air" : 1,
						"source/17/air/freq" : 10000.0,
						"source/17/drop" : 6.0,
						"source/17/drop/mode" : "log2",
						"source/17/radius" : 1.0,
						"source/17/room/destination" : 1,
						"source/17/mute" : 0,
						"source/17/solo" : 0,
						"source/17/direct/mute" : 0,
						"source/17/early/mute" : 0,
						"source/17/cluster/mute" : 0,
						"source/17/reverb/mute" : 0,
						"source/17/early/width" : 30.0,
						"source/17/early/shape" : 50.0,
						"source/17/spread" : 28.0,
						"source/17/panrev" : 0.0,
						"source/17/lock" : 0,
						"source/18/pres" : 80.699996948242188,
						"source/18/warm" : 30.0,
						"source/18/bril" : 30.0,
						"source/18/prer" : 48.0,
						"source/18/revp" : 34.0,
						"source/18/env" : 24.0,
						"source/18/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/18/axis/mute" : 0,
						"source/18/axis/bypass" : 0,
						"source/18/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/18/omni/mute" : 0,
						"source/18/omni/bypass" : 0,
						"source/18/doppler" : 0,
						"source/18/air" : 1,
						"source/18/air/freq" : 10000.0,
						"source/18/drop" : 6.0,
						"source/18/drop/mode" : "log2",
						"source/18/radius" : 1.0,
						"source/18/room/destination" : 1,
						"source/18/mute" : 0,
						"source/18/solo" : 0,
						"source/18/direct/mute" : 0,
						"source/18/early/mute" : 0,
						"source/18/cluster/mute" : 0,
						"source/18/reverb/mute" : 0,
						"source/18/early/width" : 30.0,
						"source/18/early/shape" : 50.0,
						"source/18/spread" : 54.0,
						"source/18/panrev" : 0.0,
						"source/18/lock" : 0,
						"source/19/pres" : 75.199996948242188,
						"source/19/warm" : 30.0,
						"source/19/bril" : 30.0,
						"source/19/prer" : 48.0,
						"source/19/revp" : 34.0,
						"source/19/env" : 24.0,
						"source/19/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/19/axis/mute" : 0,
						"source/19/axis/bypass" : 0,
						"source/19/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/19/omni/mute" : 0,
						"source/19/omni/bypass" : 0,
						"source/19/doppler" : 0,
						"source/19/air" : 1,
						"source/19/air/freq" : 10000.0,
						"source/19/drop" : 6.0,
						"source/19/drop/mode" : "log2",
						"source/19/radius" : 1.0,
						"source/19/room/destination" : 1,
						"source/19/mute" : 0,
						"source/19/solo" : 0,
						"source/19/direct/mute" : 0,
						"source/19/early/mute" : 0,
						"source/19/cluster/mute" : 0,
						"source/19/reverb/mute" : 0,
						"source/19/early/width" : 30.0,
						"source/19/early/shape" : 50.0,
						"source/19/spread" : 38.0,
						"source/19/panrev" : 0.0,
						"source/19/lock" : 0,
						"source/20/pres" : 74.900001525878906,
						"source/20/warm" : 30.0,
						"source/20/bril" : 30.0,
						"source/20/prer" : 48.0,
						"source/20/revp" : 34.0,
						"source/20/env" : 24.0,
						"source/20/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/20/axis/mute" : 0,
						"source/20/axis/bypass" : 0,
						"source/20/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/20/omni/mute" : 0,
						"source/20/omni/bypass" : 0,
						"source/20/doppler" : 0,
						"source/20/air" : 1,
						"source/20/air/freq" : 10000.0,
						"source/20/drop" : 6.0,
						"source/20/drop/mode" : "log2",
						"source/20/radius" : 1.0,
						"source/20/room/destination" : 1,
						"source/20/mute" : 0,
						"source/20/solo" : 0,
						"source/20/direct/mute" : 0,
						"source/20/early/mute" : 0,
						"source/20/cluster/mute" : 0,
						"source/20/reverb/mute" : 0,
						"source/20/early/width" : 30.0,
						"source/20/early/shape" : 50.0,
						"source/20/spread" : 31.0,
						"source/20/panrev" : 0.0,
						"source/20/lock" : 0,
						"source/21/pres" : 90.0,
						"source/21/warm" : 30.0,
						"source/21/bril" : 30.0,
						"source/21/prer" : 48.0,
						"source/21/revp" : 34.0,
						"source/21/env" : 24.0,
						"source/21/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/21/axis/mute" : 0,
						"source/21/axis/bypass" : 0,
						"source/21/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/21/omni/mute" : 0,
						"source/21/omni/bypass" : 0,
						"source/21/doppler" : 0,
						"source/21/air" : 1,
						"source/21/air/freq" : 10000.0,
						"source/21/drop" : 6.0,
						"source/21/drop/mode" : "log2",
						"source/21/radius" : 1.0,
						"source/21/room/destination" : 1,
						"source/21/mute" : 0,
						"source/21/solo" : 0,
						"source/21/direct/mute" : 0,
						"source/21/early/mute" : 0,
						"source/21/cluster/mute" : 0,
						"source/21/reverb/mute" : 0,
						"source/21/early/width" : 30.0,
						"source/21/early/shape" : 50.0,
						"source/21/spread" : 0.0,
						"source/21/panrev" : 0.0,
						"source/21/lock" : 0,
						"source/22/pres" : 90.0,
						"source/22/warm" : 30.0,
						"source/22/bril" : 30.0,
						"source/22/prer" : 48.0,
						"source/22/revp" : 34.0,
						"source/22/env" : 24.0,
						"source/22/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/22/axis/mute" : 0,
						"source/22/axis/bypass" : 0,
						"source/22/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/22/omni/mute" : 0,
						"source/22/omni/bypass" : 0,
						"source/22/doppler" : 0,
						"source/22/air" : 1,
						"source/22/air/freq" : 10000.0,
						"source/22/drop" : 6.0,
						"source/22/drop/mode" : "log2",
						"source/22/radius" : 1.0,
						"source/22/room/destination" : 1,
						"source/22/mute" : 0,
						"source/22/solo" : 0,
						"source/22/direct/mute" : 0,
						"source/22/early/mute" : 0,
						"source/22/cluster/mute" : 0,
						"source/22/reverb/mute" : 0,
						"source/22/early/width" : 30.0,
						"source/22/early/shape" : 50.0,
						"source/22/spread" : 0.0,
						"source/22/panrev" : 0.0,
						"source/22/lock" : 0,
						"source/23/pres" : 90.0,
						"source/23/warm" : 30.0,
						"source/23/bril" : 30.0,
						"source/23/prer" : 48.0,
						"source/23/revp" : 34.0,
						"source/23/env" : 24.0,
						"source/23/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/23/axis/mute" : 0,
						"source/23/axis/bypass" : 0,
						"source/23/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/23/omni/mute" : 0,
						"source/23/omni/bypass" : 0,
						"source/23/doppler" : 0,
						"source/23/air" : 1,
						"source/23/air/freq" : 10000.0,
						"source/23/drop" : 6.0,
						"source/23/drop/mode" : "log2",
						"source/23/radius" : 1.0,
						"source/23/room/destination" : 1,
						"source/23/mute" : 0,
						"source/23/solo" : 0,
						"source/23/direct/mute" : 0,
						"source/23/early/mute" : 0,
						"source/23/cluster/mute" : 0,
						"source/23/reverb/mute" : 0,
						"source/23/early/width" : 30.0,
						"source/23/early/shape" : 50.0,
						"source/23/spread" : 0.0,
						"source/23/panrev" : 0.0,
						"source/23/lock" : 0,
						"source/24/pres" : 89.599998474121094,
						"source/24/warm" : 30.0,
						"source/24/bril" : 30.0,
						"source/24/prer" : 48.0,
						"source/24/revp" : 34.0,
						"source/24/env" : 24.0,
						"source/24/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/24/axis/mute" : 0,
						"source/24/axis/bypass" : 0,
						"source/24/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/24/omni/mute" : 0,
						"source/24/omni/bypass" : 0,
						"source/24/doppler" : 0,
						"source/24/air" : 1,
						"source/24/air/freq" : 10000.0,
						"source/24/drop" : 6.0,
						"source/24/drop/mode" : "log2",
						"source/24/radius" : 1.0,
						"source/24/room/destination" : 1,
						"source/24/mute" : 0,
						"source/24/solo" : 0,
						"source/24/direct/mute" : 0,
						"source/24/early/mute" : 0,
						"source/24/cluster/mute" : 0,
						"source/24/reverb/mute" : 0,
						"source/24/early/width" : 30.0,
						"source/24/early/shape" : 50.0,
						"source/24/spread" : 0.0,
						"source/24/panrev" : 0.0,
						"source/24/lock" : 0,
						"source/25/pres" : 90.0,
						"source/25/warm" : 30.0,
						"source/25/bril" : 30.0,
						"source/25/prer" : 48.0,
						"source/25/revp" : 34.0,
						"source/25/env" : 24.0,
						"source/25/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/25/axis/mute" : 0,
						"source/25/axis/bypass" : 0,
						"source/25/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/25/omni/mute" : 0,
						"source/25/omni/bypass" : 0,
						"source/25/doppler" : 0,
						"source/25/air" : 1,
						"source/25/air/freq" : 10000.0,
						"source/25/drop" : 6.0,
						"source/25/drop/mode" : "log2",
						"source/25/radius" : 1.0,
						"source/25/room/destination" : 1,
						"source/25/mute" : 0,
						"source/25/solo" : 0,
						"source/25/direct/mute" : 0,
						"source/25/early/mute" : 0,
						"source/25/cluster/mute" : 0,
						"source/25/reverb/mute" : 0,
						"source/25/early/width" : 30.0,
						"source/25/early/shape" : 50.0,
						"source/25/spread" : 0.0,
						"source/25/panrev" : 0.0,
						"source/25/lock" : 0,
						"source/26/pres" : 90.0,
						"source/26/warm" : 30.0,
						"source/26/bril" : 30.0,
						"source/26/prer" : 48.0,
						"source/26/revp" : 34.0,
						"source/26/env" : 24.0,
						"source/26/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/26/axis/mute" : 0,
						"source/26/axis/bypass" : 0,
						"source/26/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/26/omni/mute" : 0,
						"source/26/omni/bypass" : 0,
						"source/26/doppler" : 0,
						"source/26/air" : 1,
						"source/26/air/freq" : 10000.0,
						"source/26/drop" : 6.0,
						"source/26/drop/mode" : "log2",
						"source/26/radius" : 1.0,
						"source/26/room/destination" : 1,
						"source/26/mute" : 0,
						"source/26/solo" : 0,
						"source/26/direct/mute" : 0,
						"source/26/early/mute" : 0,
						"source/26/cluster/mute" : 0,
						"source/26/reverb/mute" : 0,
						"source/26/early/width" : 30.0,
						"source/26/early/shape" : 50.0,
						"source/26/spread" : 0.0,
						"source/26/panrev" : 0.0,
						"source/26/lock" : 0,
						"source/27/pres" : 90.0,
						"source/27/warm" : 30.0,
						"source/27/bril" : 30.0,
						"source/27/prer" : 48.0,
						"source/27/revp" : 34.0,
						"source/27/env" : 24.0,
						"source/27/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/27/axis/mute" : 0,
						"source/27/axis/bypass" : 0,
						"source/27/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/27/omni/mute" : 0,
						"source/27/omni/bypass" : 0,
						"source/27/doppler" : 0,
						"source/27/air" : 1,
						"source/27/air/freq" : 10000.0,
						"source/27/drop" : 6.0,
						"source/27/drop/mode" : "log2",
						"source/27/radius" : 1.0,
						"source/27/room/destination" : 1,
						"source/27/mute" : 0,
						"source/27/solo" : 0,
						"source/27/direct/mute" : 0,
						"source/27/early/mute" : 0,
						"source/27/cluster/mute" : 0,
						"source/27/reverb/mute" : 0,
						"source/27/early/width" : 30.0,
						"source/27/early/shape" : 50.0,
						"source/27/spread" : 0.0,
						"source/27/panrev" : 0.0,
						"source/27/lock" : 0,
						"source/28/pres" : 90.0,
						"source/28/warm" : 30.0,
						"source/28/bril" : 30.0,
						"source/28/prer" : 48.0,
						"source/28/revp" : 34.0,
						"source/28/env" : 24.0,
						"source/28/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/28/axis/mute" : 0,
						"source/28/axis/bypass" : 0,
						"source/28/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/28/omni/mute" : 0,
						"source/28/omni/bypass" : 0,
						"source/28/doppler" : 0,
						"source/28/air" : 1,
						"source/28/air/freq" : 10000.0,
						"source/28/drop" : 6.0,
						"source/28/drop/mode" : "log2",
						"source/28/radius" : 1.0,
						"source/28/room/destination" : 1,
						"source/28/mute" : 0,
						"source/28/solo" : 0,
						"source/28/direct/mute" : 0,
						"source/28/early/mute" : 0,
						"source/28/cluster/mute" : 0,
						"source/28/reverb/mute" : 0,
						"source/28/early/width" : 30.0,
						"source/28/early/shape" : 50.0,
						"source/28/spread" : 0.0,
						"source/28/panrev" : 0.0,
						"source/28/lock" : 0,
						"source/29/pres" : 90.0,
						"source/29/warm" : 30.0,
						"source/29/bril" : 30.0,
						"source/29/prer" : 48.0,
						"source/29/revp" : 34.0,
						"source/29/env" : 24.0,
						"source/29/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/29/axis/mute" : 0,
						"source/29/axis/bypass" : 0,
						"source/29/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/29/omni/mute" : 0,
						"source/29/omni/bypass" : 0,
						"source/29/doppler" : 0,
						"source/29/air" : 1,
						"source/29/air/freq" : 10000.0,
						"source/29/drop" : 6.0,
						"source/29/drop/mode" : "log2",
						"source/29/radius" : 1.0,
						"source/29/room/destination" : 1,
						"source/29/mute" : 0,
						"source/29/solo" : 0,
						"source/29/direct/mute" : 0,
						"source/29/early/mute" : 0,
						"source/29/cluster/mute" : 0,
						"source/29/reverb/mute" : 0,
						"source/29/early/width" : 30.0,
						"source/29/early/shape" : 50.0,
						"source/29/spread" : 0.0,
						"source/29/panrev" : 0.0,
						"source/29/lock" : 0,
						"source/30/pres" : 90.0,
						"source/30/warm" : 30.0,
						"source/30/bril" : 30.0,
						"source/30/prer" : 48.0,
						"source/30/revp" : 34.0,
						"source/30/env" : 24.0,
						"source/30/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/30/axis/mute" : 0,
						"source/30/axis/bypass" : 0,
						"source/30/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/30/omni/mute" : 0,
						"source/30/omni/bypass" : 0,
						"source/30/doppler" : 0,
						"source/30/air" : 1,
						"source/30/air/freq" : 10000.0,
						"source/30/drop" : 6.0,
						"source/30/drop/mode" : "log2",
						"source/30/radius" : 1.0,
						"source/30/room/destination" : 1,
						"source/30/mute" : 0,
						"source/30/solo" : 0,
						"source/30/direct/mute" : 0,
						"source/30/early/mute" : 0,
						"source/30/cluster/mute" : 0,
						"source/30/reverb/mute" : 0,
						"source/30/early/width" : 30.0,
						"source/30/early/shape" : 50.0,
						"source/30/spread" : 0.0,
						"source/30/panrev" : 0.0,
						"source/30/lock" : 0,
						"source/31/pres" : 90.0,
						"source/31/warm" : 30.0,
						"source/31/bril" : 30.0,
						"source/31/prer" : 48.0,
						"source/31/revp" : 34.0,
						"source/31/env" : 24.0,
						"source/31/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/31/axis/mute" : 0,
						"source/31/axis/bypass" : 0,
						"source/31/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/31/omni/mute" : 0,
						"source/31/omni/bypass" : 0,
						"source/31/doppler" : 0,
						"source/31/air" : 1,
						"source/31/air/freq" : 10000.0,
						"source/31/drop" : 6.0,
						"source/31/drop/mode" : "log2",
						"source/31/radius" : 1.0,
						"source/31/room/destination" : 1,
						"source/31/mute" : 0,
						"source/31/solo" : 0,
						"source/31/direct/mute" : 0,
						"source/31/early/mute" : 0,
						"source/31/cluster/mute" : 0,
						"source/31/reverb/mute" : 0,
						"source/31/early/width" : 30.0,
						"source/31/early/shape" : 50.0,
						"source/31/spread" : 0.0,
						"source/31/panrev" : 0.0,
						"source/31/lock" : 0,
						"source/32/pres" : 90.0,
						"source/32/warm" : 30.0,
						"source/32/bril" : 30.0,
						"source/32/prer" : 48.0,
						"source/32/revp" : 34.0,
						"source/32/env" : 24.0,
						"source/32/axis/params" : [ 0.0, 0.0, 0.0, 0.0, 177.0, 5657.0 ],
						"source/32/axis/mute" : 0,
						"source/32/axis/bypass" : 0,
						"source/32/omni/params" : [ 0.0, 1.700000047683716, 0.0, -3.799999952316284, 177.0, 5657.0 ],
						"source/32/omni/mute" : 0,
						"source/32/omni/bypass" : 0,
						"source/32/doppler" : 0,
						"source/32/air" : 1,
						"source/32/air/freq" : 10000.0,
						"source/32/drop" : 6.0,
						"source/32/drop/mode" : "log2",
						"source/32/radius" : 1.0,
						"source/32/room/destination" : 1,
						"source/32/mute" : 0,
						"source/32/solo" : 0,
						"source/32/direct/mute" : 0,
						"source/32/early/mute" : 0,
						"source/32/cluster/mute" : 0,
						"source/32/reverb/mute" : 0,
						"source/32/early/width" : 30.0,
						"source/32/early/shape" : 50.0,
						"source/32/spread" : 0.0,
						"source/32/panrev" : 0.0,
						"source/32/lock" : 0,
						"room/number" : 1,
						"room/1/reverberance" : 65.0,
						"room/1/heaviness" : 25.0,
						"room/1/liveness" : 35.0,
						"room/1/reverb/fl" : 250.0,
						"room/1/reverb/fh" : 8000.0,
						"room/1/reverb/air" : 1,
						"room/1/reverb/air/freq" : 10000.0,
						"room/1/reverb/infinite" : 0,
						"room/1/reverb/roomsize" : 5405.0,
						"room/1/early/min" : 18.020000457763672,
						"room/1/early/max" : 65.279998779296875,
						"room/1/early/distr" : 0.46000000834465,
						"room/1/cluster/min" : 69.860000610351562,
						"room/1/cluster/max" : 238.770004272460938,
						"room/1/cluster/distr" : 0.5,
						"room/1/reverb/min" : 216.949996948242188,
						"room/1/reverb/density" : 3.529999971389771,
						"room/1/reverb/roomoffset" : 0.0,
						"room/1/reverb/panrev" : 0.0,
						"room/1/reverb/panrev/aed" : [ 0.0, 0.0, 1.0 ],
						"room/1/mute" : 0,
						"internals" : 16,
						"viewer/visible" : 1,
						"viewer/only" : 0,
						"style" : "factors",
						"usurp" : 0,
						"window/title" : "Spat Oper",
						"window/visible" : 1,
						"window/moveable" : 1,
						"window/resizable" : 1,
						"window/enable" : 1,
						"window/bounds" : [ 0, 37, 1728, 1080 ],
						"window/background/color" : [ 0.82745099067688, 0.82745099067688, 0.82745099067688, 1.0 ],
						"window/opaque" : 1,
						"window/titlebar" : 1,
						"window/fullscreen" : 0,
						"window/minimise" : 0,
						"window/scale" : 100.0,
						"window/rendering/engine" : "CoreGraphics Renderer",
						"window/rendering/fps/visible" : 0,
						"window/floating" : 0,
						"window/hidesondeactivate" : 0,
						"window/buttons/close" : 1,
						"window/buttons/minimise" : 1,
						"window/buttons/maximise" : 1
					}
,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 2970.21274471282959, 1907.658228576183319, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"legacy" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3051.063807964324951, 1852.339080035686493, 100.0, 22.0 ],
					"text" : "o.dict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2408.510621070861816, 1401.275253474712372, 152.0, 22.0 ],
					"text" : "loadmess /listener/visible 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2378.723387241363525, 1367.232700526714325, 61.0, 22.0 ],
					"text" : "o.atomize"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-44",
					"linecount" : 47,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2361.702110767364502, 1758.722059428691864, 291.0, 622.0 ],
					"text" : "/speaker/1/aed : [338.395, 11.702, 11.094],\n/speaker/2/aed : [0., 12.559, 10.348],\n/speaker/3/aed : [21.605, 11.702, 11.094],\n/speaker/4/aed : [43.647, 14.062, 9.26],\n/speaker/5/aed : [64.179, 18.091, 7.246],\n/speaker/6/aed : [94.611, 19.887, 6.615],\n/speaker/7/aed : [122.829, 16.959, 7.714],\n/speaker/8/aed : [140.421, 13.019, 9.988],\n/speaker/9/aed : [158.394, 11.702, 11.094],\n/speaker/10/aed : [180., 12.559, 10.348],\n/speaker/11/aed : [201.606, 11.702, 11.094],\n/speaker/12/aed : [219.579, 13.019, 9.988],\n/speaker/13/aed : [237.171, 16.959, 7.714],\n/speaker/14/aed : [265.389, 19.887, 6.615],\n/speaker/15/aed : [295.821, 18.091, 7.246],\n/speaker/16/aed : [316.353, 14.062, 9.26],\n/speaker/17/aed : [338.395, 25.149, 12.001],\n/speaker/18/aed : [0., 26.792, 11.315],\n/speaker/19/aed : [21.605, 25.149, 12.001],\n/speaker/20/aed : [64.179, 36.518, 8.57],\n/speaker/21/aed : [122.829, 34.653, 8.969],\n/speaker/22/aed : [158.394, 25.149, 12.001],\n/speaker/23/aed : [180., 26.792, 11.315],\n/speaker/24/aed : [201.606, 25.149, 12.001],\n/speaker/25/aed : [237.171, 34.653, 8.969],\n/speaker/26/aed : [295.821, 36.518, 8.57],\n/speaker/27/aed : [335.225, 43.443, 9.86],\n/speaker/28/aed : [24.775, 43.443, 9.86],\n/speaker/29/aed : [260.538, 65.84, 7.431],\n/speaker/30/aed : [99.462, 65.84, 7.431],\n/speaker/31/aed : [201.801, 40.008, 10.546],\n/speaker/32/aed : [158.199, 40.008, 10.546]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2361.702110767364502, 1284.253977715969086, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 2361.702110767364502, 1320.42419022321701, 315.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict speaker_coords 08-07-26_IAS_speaker_coords_spat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2402.298810482025146, 1480.459745407104492, 247.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.viewer @initwith \"/speaker/number 32\""
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-26",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "spat5.hoa.decoder.control.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 2040.425517320632935, 1858.722058713436127, 280.0, 120.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 421.0, 2477.0, 113.0, 22.0 ],
					"text" : "print clustering_raw"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 252.272724866867065, 145.375351667404175, 61.0, 22.0 ],
					"text" : "print OSC"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2348.275985240936279, 624.137963771820068, 171.0, 22.0 ],
					"text" : "udpsend 10.21.136.104 10000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2482.978705644607544, 1567.23269909620285, 65.0, 22.0 ],
					"text" : "print spat5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-205",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 2378.723387241363525, 1599.147592484951019, 692.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.oper @internals 16 @initwith \"/source/number 32, /room/number 1, /speaker/number 32, /listener/visible 0, /layout leftright\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-204",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1819.540199518203735, 1401.275253474712372, 98.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_spat5.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_spat5.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1823.404242277145386, 2211.913545548915863, 54.0, 22.0 ],
					"text" : "mc.dac~"
				}

			}
, 			{
				"box" : 				{
					"display_range" : [ -70.0, 20.0 ],
					"id" : "obj-202",
					"lastchannelcount" : 32,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1823.584990441799164, 2051.886887848377228, 214.0, 134.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~[1]",
							"parameter_mmax" : -20.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "mc.live.gain~[1]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-201",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 1823.404242277145386, 1992.764610946178436, 370.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.hoa.decoder~ @dimension 3D @outputs 32 @order 4 @mc 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"lastchannelcount" : 32,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1823.404242277145386, 1656.594400584697723, 211.0, 133.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "mc.live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 1823.404242277145386, 1820.424186646938324, 499.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.spat~ @inputs 32 @outputs 25 @internals 16 @mc 1 @initwith \"/panning/type hoa3d\""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.933333333333333, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2344.680834293365479, 1077.871000468730927, 472.916648626327515, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_threshold_line_color"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "3.5  U'R SO VERY SPATIAL",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 1823.404242277145386, 1599.147592484951019, 527.0, 22.0 ],
					"text" : "mc.adc~ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2489.91907012462616, 398.029428601264954, 154.0, 33.0 ],
					"text" : "print current config to console"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2489.91907012462616, 351.743036985397339, 154.0, 33.0 ],
					"text" : "suppress scores (bodies only)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2491.91907012462616, 289.818796634674072, 154.0, 47.0 ],
					"text" : "suppress body positions (scores only, useful if Leon has OptiTrack direct)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2385.858469247817993, 397.647075414657593, 41.0, 22.0 ],
					"text" : "status"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2385.858469247817993, 357.243036985397339, 98.0, 22.0 ],
					"text" : "set_score_rate 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2385.858469247817993, 314.818796634674072, 95.0, 22.0 ],
					"text" : "set_body_rate 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2385.858469247817993, 519.79693603515625, 85.0, 22.0 ],
					"text" : "print td_bridge"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2285.858474135398865, 552.93029797077179, 138.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 9000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2132.235382914543152, 648.730941653251648, 99.0, 22.0 ],
					"text" : "prepend disorder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2130.735382914543152, 606.598963439464569, 94.0, 22.0 ],
					"text" : "prepend vertical"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2129.235382914543152, 562.944142639636993, 105.0, 22.0 ],
					"text" : "prepend presence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2128.235382914543152, 519.79693603515625, 99.0, 22.0 ],
					"text" : "prepend stillness"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2127.235382914543152, 480.203028798103333, 101.0, 22.0 ],
					"text" : "prepend variance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2128.235382914543152, 441.352959632873535, 107.0, 22.0 ],
					"text" : "prepend clustering"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2128.235382914543152, 397.647075414657593, 96.0, 22.0 ],
					"text" : "prepend velocity"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.854901960784314, 0.282352941176471, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-134",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2128.235382914543152, 158.823536038398743, 694.352967977523804, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_macro_assignment"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "3.4 Video_TD_Simulator",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2128.235382914543152, 357.647073745727539, 112.0, 22.0 ],
					"text" : "prepend coherence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2285.858474135398865, 480.203028798103333, 119.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_td_bridge.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_td_bridge.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1985.88243579864502, 357.647073745727539, 52.0, 22.0 ],
					"text" : "print mh"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1903.000078439712524, 357.647073745727539, 74.0, 22.0 ],
					"text" : "print fixtures"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1828.235370397567749, 357.647073745727539, 67.0, 22.0 ],
					"text" : "print states"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 340.517259240150452, 2265.517360210418701, 83.0, 22.0 ],
					"text" : "print clust_out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 925.862117528915405, 1950.862171292304993, 75.0, 22.0 ],
					"text" : "print var_out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1181.896613717079163, 2509.482890248298645, 95.0, 22.0 ],
					"text" : "print scatter_out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1828.235370397567749, 476.051946640014648, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1689.411835193634033, 809.411798477172852, 150.0, 20.0 ],
					"text" : "MOV HEAD + IMPACTOR"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1884.705960988998413, 618.82355523109436, 68.10345184803009, 20.0 ],
					"text" : "FIXTURES"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1750.588308334350586, 442.352959632873535, 53.448278665542603, 20.0 ],
					"text" : "STATES"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1561.176535725593567, 949.41180431842804, 285.882364869117737, 20.0 ],
					"text" : "mh intensity I mh pan speed I mh hue I strobe level"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1561.176535725593567, 767.058855533599854, 391.37933087348938, 20.0 ],
					"text" : "ceil intensity I ceil warm I gallery intensity I fres intensity I fres saturation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 1561.176535725593567, 587.058848023414612, 242.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "empty I stillness I mid-coh I chaotic I hi-coh"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1561.176535725593567, 830.588269948959351, 278.0, 116.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"size" : 4
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1561.176535725593567, 641.176497340202332, 391.0, 124.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"size" : 5
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1561.176535725593567, 463.529431104660034, 242.0, 116.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"size" : 5
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1347.058879733085632, 403.529428601264954, 135.0, 22.0 ],
					"text" : "udpsend localhost 7401"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1347.058879733085632, 312.051946640014648, 446.47887909412384, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_light_sim.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_light_sim.js"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-127",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1343.529467821121216, 158.823536038398743, 694.352967977523804, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_display_handle_one"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "3.3 Light_Simulator",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1760.000073432922363, 245.882363200187683, 65.0, 20.0 ],
					"text" : "metro"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1685.882423281669617, 258.823540210723877, 87.0, 33.0 ],
					"text" : "avg clustering distance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1343.529467821121216, 245.882363200187683, 65.0, 20.0 ],
					"text" : "coherence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1382.352998852729797, 268.235305309295654, 58.0, 20.0 ],
					"text" : "stillness"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1437.647118806838989, 245.882363200187683, 48.0, 20.0 ],
					"text" : "scatter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1485.882414937019348, 268.235305309295654, 55.0, 20.0 ],
					"text" : "disorder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1541.17653489112854, 245.882363200187683, 48.0, 20.0 ],
					"text" : "avg vel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1576.470654010772705, 268.235305309295654, 58.0, 20.0 ],
					"text" : "presence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1624.705950140953064, 245.882363200187683, 65.0, 20.0 ],
					"text" : "Z variance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 815.68830394744873, 443.0, 50.0, 22.0 ],
					"text" : "16.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 798.0, 394.0, 61.0, 22.0 ],
					"text" : "spat5.cpu"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.686274509803922, 0.396078431372549, 0.396078431372549, 1.0 ],
					"id" : "obj-84",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1026.0, 509.0, 115.0, 91.0 ],
					"text" : "connect it to inlet 1 of o.route /rigidbody to print al the position info of the rigid bodies"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 38.0, 3024.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.0, 3375.0, 135.0, 22.0 ],
					"text" : "udpsend localhost 7400"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 3062.0, 29.5, 22.0 ],
					"text" : "init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 481.0, 3216.012271881103516, 65.0, 20.0 ],
					"text" : "metro"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 392.0, 3239.012271881103516, 87.0, 33.0 ],
					"text" : "avg clustering distance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-tick-c",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 639.024405479431152, 3052.439097166061401, 130.0, 20.0 ],
					"text" : "3.1 controller tick"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-tick-tog",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 639.024405479431152, 3075.609829425811768, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-tick-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 639.024405479431152, 3102.439098358154297, 63.0, 22.0 ],
					"text" : "metro 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 66.233765602111816, 36.363636016845703, 131.011715650558472, 131.011715650558472 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 97.428571462631226, 3159.420316219329834, 468.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_midi_assignment"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "3.1 Layer Threshold Controller",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-c0",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.375, 3218.512271881103516, 65.0, 20.0 ],
					"text" : "coherence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-c1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 99.375, 3240.512271881103516, 58.0, 20.0 ],
					"text" : "stillness"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-c2",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 158.0, 3223.512271881103516, 66.0, 33.0 ],
					"text" : "variance (m/s)²"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-c3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 203.375, 3245.512271881103516, 55.0, 20.0 ],
					"text" : "disorder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-c4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 262.375, 3223.512271881103516, 48.0, 20.0 ],
					"text" : "avg vel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-c5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 297.375, 3245.512271881103516, 58.0, 20.0 ],
					"text" : "presence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-c6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 343.0, 3216.012271881103516, 65.0, 20.0 ],
					"text" : "Z variance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-js",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 59.125, 3271.353736400604248, 430.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_controller.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_controller.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-udp",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.642861604690552, 3375.0, 135.0, 22.0 ],
					"text" : "udpsend localhost 7405"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-dbg",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 834.246514678001404, 3222.188432693481445, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-gate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 834.246514678001404, 3321.917566657066345, 46.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-c7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 894.520482897758484, 3322.917566657066345, 42.0, 20.0 ],
					"text" : "debug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-sep",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 584.829265952110291, 3260.353736400604248, 196.341468095779419, 33.0 ],
					"text" : "--- scene eval (send avg_vel, variance, avg_dist as a list) ---"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-lc-eval-test",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 3184.0, 175.0, 22.0 ],
					"text" : "evaluate_scene 1.5 0.5 8."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 529.0, 1535.064920425415039, 89.0, 22.0 ],
					"text" : "loadmess clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 308.0, 1572.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 936.0, 42.051946640014648, 94.805193901062012, 24.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_display_handle_one"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "Floor View",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 941.0, 88.051946640014648, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 941.0, 118.051946640014648, 56.0, 22.0 ],
					"text" : "metro 50"
				}

			}
, 			{
				"box" : 				{
					"filename" : "ahfsd_floorview.js",
					"id" : "obj-65",
					"jsarguments" : [ "" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 941.0, 148.051946640014648, 200.0, 350.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.4, 0.3, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 435.06493091583252, 36.363636016845703, 472.916648626327515, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_active_automation"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "Behaviour Simulator (20 bodies)",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-c0",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 455.844151496887207, 137.662336349487305, 75.0, 20.0 ],
					"text" : "num bodies:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-num",
					"maxclass" : "number",
					"maximum" : 40,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 555.844150543212891, 136.363635063171387, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-bs-load",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 556.0, 106.0, 77.0, 22.0 ],
					"text" : "loadmess 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-tog",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 455.844151496887207, 179.22077751159668, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 455.844151496887207, 241.558439254760742, 63.0, 22.0 ],
					"text" : "qmetro 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-js",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 455.844151496887207, 358.441555023193359, 160.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_behaviour_sim.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_behaviour_sim.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-sep1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 669.883111953735352, 107.0, 130.0, 20.0 ],
					"text" : "--- behaviours ---"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-b1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 672.727266311645508, 148.051946640014648, 62.0, 22.0 ],
					"text" : "scattered"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-b2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 742.857135772705078, 148.051946640014648, 65.0, 22.0 ],
					"text" : "clustering"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-b3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 815.584407806396484, 148.051946640014648, 38.0, 22.0 ],
					"text" : "tight"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-b4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 862.337654113769531, 148.051946640014648, 55.0, 22.0 ],
					"text" : "stillness"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-b5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 668.831162452697754, 207.792205810546875, 65.0, 22.0 ],
					"text" : "twogroups"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-b6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 738.961031913757324, 207.792205810546875, 63.0, 22.0 ],
					"text" : "onerunner"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-b7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 811.68830394744873, 207.792205810546875, 58.0, 22.0 ],
					"text" : "dispersal"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-b8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 879.220770835876465, 207.792205810546875, 37.0, 22.0 ],
					"text" : "pairs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-sep2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 671.42856502532959, 272.727270126342773, 100.0, 20.0 ],
					"text" : "--- vertical ---"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-b9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 674.025967597961426, 298.701295852661133, 52.0, 22.0 ],
					"text" : "settling"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bs-b10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 733.766226768493652, 298.701295852661133, 79.0, 22.0 ],
					"text" : "mixedvertical"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-31",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1030.0, 2552.857203722000122, 426.0, 74.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "2.7 Relational Threshold Detector (intimate proximity)",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-tog",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1030.0, 2654.545307397842407, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1030.0, 2684.297371864318848, 63.0, 22.0 ],
					"text" : "metro 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-js",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1030.0, 2729.0, 138.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_relational.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_relational.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-count",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1030.0, 2769.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-c1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 873.0, 2771.0, 155.0, 20.0 ],
					"text" : "intimate pairs (< 0.3m)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-unpack",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "int", "int" ],
					"patching_rect" : [ 1030.0, 2804.0, 200.0, 22.0 ],
					"text" : "unpack f i i"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-rel-dist",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1030.0, 2834.0, 70.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-c2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 898.0, 2835.0, 130.0, 20.0 ],
					"text" : "closest distance (m)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-id-a",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1192.5, 2863.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-id-b",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1269.0, 2863.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-c3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1083.0, 2864.0, 110.0, 20.0 ],
					"text" : "closest pair: body"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-c3b",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1249.0, 2864.0, 18.0, 20.0 ],
					"text" : "&"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-print",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1295.0, 2769.0, 122.0, 22.0 ],
					"text" : "print intimate_pairs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-dbg",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1295.0, 2723.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-gate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1295.0, 2810.0, 46.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rel-c4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1323.0, 2725.0, 75.0, 20.0 ],
					"text" : "debug pairs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 383.142863988876343, 2697.142921447753906, 74.0, 22.0 ],
					"text" : "reset_zones"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 383.142863988876343, 2662.857206344604492, 105.0, 22.0 ],
					"text" : "set_mid_ceiling 2."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 383.142863988876343, 2628.571491241455078, 110.0, 22.0 ],
					"text" : "set_low_ceiling 0.9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-tog",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 96.0, 2650.000063180923462, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 96.0, 2680.000063896179199, 63.0, 22.0 ],
					"text" : "metro 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-js",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"patching_rect" : [ 96.0, 2710.000064611434937, 125.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_vertical.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_vertical.js"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-vt2-avg",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 97.428571462631226, 2782.857209205627441, 70.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-c1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.28571605682373, 2782.857209205627441, 65.0, 20.0 ],
					"text" : "avg Z (m)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-vt2-range",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 97.428571462631226, 2838.571496248245239, 70.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-c2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.28571605682373, 2838.571496248245239, 75.0, 20.0 ],
					"text" : "Z range (m)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-vt2-var",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 97.428571462631226, 2900.000069141387939, 70.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-c3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.28571605682373, 2900.000069141387939, 70.0, 20.0 ],
					"text" : "Z variance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-sep",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 283.142861604690552, 2771.428637504577637, 130.0, 20.0 ],
					"text" : "--- zone counts ---"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-low",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 283.142861604690552, 2792.857209444046021, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-c4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 336.000005722045898, 2792.857209444046021, 105.0, 20.0 ],
					"text" : "sitting (< 0.8m)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-mid",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 283.142861604690552, 2848.571496486663818, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-c5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 336.000005722045898, 2848.571496486663818, 125.0, 20.0 ],
					"text" : "standing (0.8–1.8m)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-high",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 283.142861604690552, 2910.000069379806519, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vt2-c6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 336.000005722045898, 2910.000069379806519, 115.0, 20.0 ],
					"text" : "elevated (> 1.8m)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.945098, 0.67451, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-105",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.0, 2552.857203722000122, 395.83331823348999, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_value_bar3"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "2.6 Vertical Space Usage",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-t1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1015.714309930801392, 2198.571480989456177, 200.0, 20.0 ],
					"text" : "A.STILLNESS "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c1a",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1015.714309930801392, 2217.142910003662109, 65.0, 20.0 ],
					"text" : "avg vel in"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-still",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1015.942037463188171, 2260.000053882598877, 130.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_stillness.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_stillness.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-g1",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1015.942037463188171, 2291.42862606048584, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c1b",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1068.799181580543518, 2291.42862606048584, 35.0, 20.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-ss-p1",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1111.656325459480286, 2291.42862606048584, 60.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c1c",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1174.513469815254211, 2291.42862606048584, 55.0, 20.0 ],
					"text" : "progress"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-t2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1385.714318752288818, 2204.285766839981079, 200.0, 20.0 ],
					"text" : "DISORDER"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c2a",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1385.714318752288818, 2222.857195854187012, 70.0, 20.0 ],
					"text" : "variance in"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-dis",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1385.714318752288818, 2265.714339733123779, 125.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_disorder.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_disorder.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-g2",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1385.714318752288818, 2297.142911911010742, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c2b",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1438.571462869644165, 2297.142911911010742, 35.0, 20.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-ss-p2",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1480.000035285949707, 2297.142911911010742, 60.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c2c",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1542.857179641723633, 2297.142911911010742, 55.0, 20.0 ],
					"text" : "progress"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-t3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1015.714309930801392, 2368.467928290367126, 200.0, 20.0 ],
					"text" : "SCATTER "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c3a",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1015.909081220626831, 2387.039357304573059, 247.727270364761353, 33.0 ],
					"text" : "clustering in: it becomes the exact temporal mirror of the gathering gate."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-scat",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1008.0, 2434.090885877609253, 164.285742282867432, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_scatter.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_scatter.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-g3",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1015.714309930801392, 2465.714344501495361, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c3b",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1068.571454048156738, 2465.714344501495361, 35.0, 20.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-ss-p3",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1153.285742282867432, 2463.714344501495361, 60.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c3c",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1216.449284553527832, 2464.714344501495361, 55.0, 20.0 ],
					"text" : "progress"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-t4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1385.714318752288818, 2374.182214140892029, 200.0, 20.0 ],
					"text" : "COHERENCE "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c4a",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1385.714318752288818, 2392.753643155097961, 70.0, 20.0 ],
					"text" : "avg dist in"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-coh",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1385.714318752288818, 2440.000058174133301, 135.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_coherence.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_coherence.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-g4",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1385.714318752288818, 2471.428630352020264, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c4b",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1438.571462869644165, 2471.428630352020264, 35.0, 20.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-ss-p4",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1502.0, 2470.428630352020264, 60.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-ss-c4c",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1542.857179641723633, 2471.428630352020264, 55.0, 20.0 ],
					"text" : "progress"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-49",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1015.942037463188171, 2059.420307040214539, 377.142866134643555, 74.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_numbox_triangle"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "2.5 Sustained State Detector",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.745098, 0.596078, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-48",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.0, 2059.420307040214539, 395.83331823348999, 74.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_scale_awareness"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "2.4 Clustering / Density (XY floor plane)",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-tog",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 96.0, 2153.623206377029419, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 96.0, 2184.057989239692688, 63.0, 22.0 ],
					"text" : "metro 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-js",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 96.0, 2214.492772102355957, 140.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_clustering.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_clustering.js"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-cl-avg",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 96.0, 2291.42862606048584, 80.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-c1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.714287757873535, 2291.42862606048584, 110.0, 20.0 ],
					"text" : "avg distance (m)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-cl-min",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 96.0, 2337.68117892742157, 80.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-c2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.507247090339661, 2337.68117892742157, 200.0, 20.0 ],
					"text" : "min distance (m) — closest pair"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-cl-max",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 96.0, 2391.753643155097961, 80.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cl-c3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.714287757873535, 2391.753643155097961, 200.0, 20.0 ],
					"text" : "max distance (m) — total spread"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.668252052034861, 0.37753979111903, 0.316055506131883, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1015.942037463188171, 1714.0, 320.289857745170593, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_inactive_automation"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "2.3 Velocity Variance",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-var-tog",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1015.942037463188171, 1803.855073213577271, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-var-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1015.942037463188171, 1834.28985607624054, 63.0, 22.0 ],
					"text" : "metro 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-var-js",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1015.942037463188171, 1864.724638938903809, 130.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_variance.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_variance.js"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-var-display",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1015.942037463188171, 1899.507247924804688, 80.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-var-c1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1101.449284553527832, 1899.507247924804688, 110.0, 20.0 ],
					"text" : "variance (m/s)²"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vel-tog",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1005.0, 1249.999999165534973, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vel-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1005.0, 1280.434782028198242, 56.0, 22.0 ],
					"text" : "metro 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vel-js2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1005.0, 1310.869564890861511, 130.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_velocity.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_velocity.js"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-vel-avg2",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1005.0, 1350.0, 80.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vel-c12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1090.507247090339661, 1350.0, 110.0, 20.0 ],
					"text" : "avg velocity m/s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vel-print2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1088.007247090339661, 1494.202911019325256, 115.0, 22.0 ],
					"text" : "print per_body_vel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vel-dbg2",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1088.007247090339661, 1408.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vel-gate2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1088.007247090339661, 1475.36233115196228, 46.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vel-c22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1118.44202995300293, 1452.173925161361694, 95.0, 20.0 ],
					"text" : "debug per-body"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.4, 0.3, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-23",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1001.54892361164093, 1110.0, 472.916648626327515, 74.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_active_automation"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "2.2 VELOCITY CALCULATOR (more RB) at its own tempo",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 205.0, 1849.0, 50.0, 22.0 ],
					"text" : "compile"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.549019607843137, 0.67843137254902, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-32",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.0, 1697.0, 395.83331823348999, 74.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_modulation"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "2.1 PRESENCE COUNTER (at its own tempo)",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-title-pc",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.0, 1754.0, 200.0, 20.0 ],
					"text" : "2.1 Presence Counter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 96.0, 1819.0, 70.0, 22.0 ],
					"text" : "metro 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cpu",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 96.0, 1849.0, 60.0, 22.0 ],
					"text" : "cpuclock"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-js",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 96.0, 1879.0, 135.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ahfsd_presence.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ahfsd_presence.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-count",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 96.0, 1913.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c-count",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 155.0, 1913.0, 100.0, 20.0 ],
					"text" : "bodies present"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-toggle",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 96.0, 1794.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.980392156862745, 0.63921568627451, 1.0 ],
					"fontface" : 1,
					"fontsize" : 20.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 620.0, 1301.0, 238.541657567024231, 29.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_play"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "1.2b add_rb timestamp",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-title2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 620.0, 1356.0, 300.0, 20.0 ],
					"text" : "add to parser: timestamp each body update"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tib",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 620.0, 1392.0, 46.0, 22.0 ],
					"text" : "t i b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-clock",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 654.0, 1421.0, 60.0, 22.0 ],
					"text" : "cpuclock"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-sp-ts",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 620.0, 1461.0, 250.0, 22.0 ],
					"text" : "sprintf replace body::%i::last_seen %f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-sp-x",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 96.0, 1350.0, 260.0, 22.0 ],
					"text" : "sprintf replace body::%i::position::x %f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-sp-y",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 111.0, 1380.0, 260.0, 22.0 ],
					"text" : "sprintf replace body::%i::position::y %f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-sp-z",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 1410.0, 260.0, 22.0 ],
					"text" : "sprintf replace body::%i::position::z %f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-sp-pitch",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 146.0, 1440.0, 300.0, 22.0 ],
					"text" : "sprintf replace body::%i::orientation::pitch %f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-sp-roll",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 160.0, 1470.0, 290.0, 22.0 ],
					"text" : "sprintf replace body::%i::orientation::roll %f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-sp-yaw",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.0, 1500.0, 290.0, 22.0 ],
					"text" : "sprintf replace body::%i::orientation::yaw %f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-dict",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 96.0, 1560.0, 120.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict ahfsd_bodies"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bangout",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 96.0, 1594.0, 30.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c-outlet",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 136.0, 1594.0, 120.0, 20.0 ],
					"text" : "bang on update -->"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.0, 1191.0, 350.0, 20.0 ],
					"text" : "1.2 Rigid Body Parser — connect 7 number boxes above"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-c-id",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.0, 1211.0, 54.0, 20.0 ],
					"text" : "body ID"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-tid",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 96.0, 1236.0, 19.0, 22.0 ],
					"text" : "t i"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.980392156862745, 0.63921568627451, 1.0 ],
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 98.756142050027847, 1140.740703344345093, 395.83331823348999, 40.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_play"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}
,
					"text" : "1.2 RIGID BODY PARSER",
					"textcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 979.0, 540.0, 42.0, 22.0 ],
					"text" : "o.print"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"fontsize" : 12.0,
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 779.0, 168.0, 24.0 ],
					"text" : "slice off the rigid body num"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontsize" : 12.0,
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 177.0, 897.0, 66.0, 24.0 ],
					"text" : "rb_num"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-88",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 96.0, 898.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontsize" : 12.0,
					"id" : "obj-89",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 473.0, 896.0, 163.0, 24.0 ],
					"text" : "position: [x, y, z] in meters"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-90",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 898.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-91",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 359.0, 898.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-92",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 285.0, 898.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 285.0, 858.0, 123.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-123",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 335.0, 780.0, 55.0, 22.0 ],
					"text" : "zl.slice 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-83",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 706.254793643951416, 742.352972149848938, 291.20000433921814, 22.0 ],
					"text" : "100 0.001939 -0.005165 -0.986575 0.163218"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 706.254793643951416, 655.294144988059998, 291.150465905666351, 22.0 ],
					"text" : "0.001939 -0.005165 -0.986575 0.163218 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.233765602111816, 623.376617431640625, 177.0, 22.0 ],
					"text" : "-0.707 5.142 1.4 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.233765602111816, 572.727267265319824, 342.92038157582283, 22.0 ],
					"text" : "position -0.707 5.142 1.4 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.233765602111816, 512.987008094787598, 346.017726957798004, 22.0 ],
					"text" : "10 position -0.707 5.142 1.4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.233765602111816, 461.038956642150879, 349.557550251483917, 22.0 ],
					"text" : "/rigidbody 1 quat 0. 0. 0. 1."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontsize" : 12.0,
					"id" : "obj-132",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.636358261108398, 671.42856502532959, 368.0, 24.0 ],
					"text" : "re-rotate the message back so the rigid body number comes first"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontsize" : 12.0,
					"id" : "obj-131",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 590.909085273742676, 584.415578842163086, 400.0, 24.0 ],
					"text" : "separate out each type to its own outlet (and remove the position/quat)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-130",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 516.883111953735352, 536.363631248474121, 436.0, 24.0 ],
					"text" : "rotate the so the data type portion of the message (position or quat) is in front"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-129",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.636358261108398, 488.311683654785156, 216.0, 24.0 ],
					"text" : "remove the /rigidbody OSC address"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 856.0, 790.0, 273.0, 78.0 ],
					"text" : "NOTE: the conversion from quaternions to euler angles in Max doesn't allow for the full range of values on one of the axes.  In this case the y axis \"wraps around twice\" and only ranges from [-90, 90] rather than [-180, 180]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 637.0, 780.0, 55.0, 22.0 ],
					"text" : "zl.slice 1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 829.0, 896.0, 256.0, 24.0 ],
					"text" : "angle: [x (pitch), y (roll), z (yaw)] in degrees"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-7",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 778.0, 896.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-6",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 725.0, 896.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-5",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 673.0, 896.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 673.0, 858.0, 123.0, 22.0 ],
					"text" : "unpack 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "list", "" ],
					"patching_rect" : [ 673.0, 820.0, 179.0, 22.0 ],
					"text" : "jit.quat2euler @rotate_order xyz"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1001.54892361164093, 736.470618963241577, 188.0, 24.0 ],
					"text" : "angle: [rb_num, qx, qy, qz, qw]"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 44.155843734741211, 692.207785606384277, 158.0, 24.0 ],
					"text" : "position: [rb_num, x, y, z]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 512.987008094787598, 672.727266311645508, 45.0, 22.0 ],
					"text" : "zl.rot 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.389608383178711, 692.207785606384277, 172.566385567188263, 22.0 ],
					"text" : "10 -0.707 5.142 1.4"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 457.142852783203125, 672.727266311645508, 45.0, 22.0 ],
					"text" : "zl.rot 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 457.142852783203125, 585.714280128479004, 133.0, 22.0 ],
					"text" : "route position quat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 457.142852783203125, 536.363631248474121, 49.0, 22.0 ],
					"text" : "zl.rot -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 457.142852783203125, 488.311683654785156, 101.0, 22.0 ],
					"text" : "o.route /rigidbody"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-200", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1714.717335402965546, 1548.0, 1692.0, 1548.0, 1692.0, 1444.52734375, 1806.0, 1444.52734375, 1806.0, 1398.0, 1829.040199518203735, 1398.0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"midpoints" : [ 100.5, 3600.0, 100.5, 3600.0 ],
					"order" : 2,
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"midpoints" : [ 100.5, 3612.0, 78.0, 3612.0, 78.0, 3657.0, 100.5, 3657.0 ],
					"order" : 1,
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"midpoints" : [ 100.5, 3612.0, 78.0, 3612.0, 78.0, 3690.0, 100.5, 3690.0 ],
					"order" : 0,
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-js", 0 ],
					"midpoints" : [ 392.642863988876343, 2652.0, 171.0, 2652.0, 171.0, 2703.0, 105.5, 2703.0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-js", 0 ],
					"midpoints" : [ 392.642863988876343, 2685.0, 171.0, 2685.0, 171.0, 2703.0, 105.5, 2703.0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-217", 0 ],
					"midpoints" : [ 229.5, 3612.0, 216.0, 3612.0, 216.0, 3687.0, 229.0, 3687.0 ],
					"order" : 0,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"midpoints" : [ 229.5, 3612.0, 216.0, 3612.0, 216.0, 3654.0, 229.0, 3654.0 ],
					"order" : 1,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-219", 0 ],
					"midpoints" : [ 229.5, 3600.0, 229.0, 3600.0 ],
					"order" : 2,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-js", 0 ],
					"midpoints" : [ 392.642863988876343, 2721.0, 231.0, 2721.0, 231.0, 2697.0, 159.0, 2697.0, 159.0, 2703.0, 105.5, 2703.0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 1 ],
					"midpoints" : [ 807.5, 429.0, 856.18830394744873, 429.0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1897.5, 1386.0, 1829.040199518203735, 1386.0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 344.5, 826.837891241535544, 105.5, 826.837891241535544 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 380.5, 843.0, 294.5, 843.0 ],
					"source" : [ "obj-123", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"midpoints" : [ 2137.735382914543152, 389.647073745727539, 2268.567130446434021, 389.647073745727539, 2268.567130446434021, 449.71461926214397, 2395.358474135398865, 449.71461926214397 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"midpoints" : [ 1499.051839431126837, 450.0, 1570.676535725593567, 450.0 ],
					"source" : [ "obj-135", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"midpoints" : [ 1356.558879733085632, 324.0, 1356.558879733085632, 324.0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"midpoints" : [ 1641.544799129168268, 450.0, 1548.0, 450.0, 1548.0, 627.0, 1570.676535725593567, 627.0 ],
					"source" : [ "obj-135", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"midpoints" : [ 1784.037758827209473, 429.0, 1548.0, 429.0, 1548.0, 816.0, 1570.676535725593567, 816.0 ],
					"source" : [ "obj-135", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-201", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-220", 0 ],
					"midpoints" : [ 354.000005722045898, 3612.0, 339.0, 3612.0, 339.0, 3690.0, 354.000005722045898, 3690.0 ],
					"order" : 0,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-221", 0 ],
					"midpoints" : [ 354.000005722045898, 3612.0, 339.0, 3612.0, 339.0, 3657.0, 354.000005722045898, 3657.0 ],
					"order" : 1,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-222", 0 ],
					"midpoints" : [ 354.000005722045898, 3600.0, 354.000005722045898, 3600.0 ],
					"order" : 2,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"midpoints" : [ 2137.735382914543152, 429.647075414657593, 2268.567130446434021, 429.647075414657593, 2268.567130446434021, 449.896121778525412, 2395.358474135398865, 449.896121778525412 ],
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"midpoints" : [ 2137.735382914543152, 473.352959632873535, 2268.567130446434021, 473.352959632873535, 2268.567130446434021, 450.132864191196859, 2395.358474135398865, 450.132864191196859 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"midpoints" : [ 2136.735382914543152, 512.203028798103333, 2268.067130446434021, 512.203028798103333, 2268.067130446434021, 449.671216486487538, 2395.358474135398865, 449.671216486487538 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"midpoints" : [ 2137.735382914543152, 551.79693603515625, 2268.567130446434021, 551.79693603515625, 2268.567130446434021, 448.124499390367419, 2395.358474135398865, 448.124499390367419 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"midpoints" : [ 2138.735382914543152, 594.944142639636993, 2269.067130446434021, 594.944142639636993, 2269.067130446434021, 448.471721595618874, 2395.358474135398865, 448.471721595618874 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"midpoints" : [ 2140.235382914543152, 638.598963439464569, 2269.817130446434021, 638.598963439464569, 2269.817130446434021, 447.824625667650253, 2395.358474135398865, 447.824625667650253 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"midpoints" : [ 2141.735382914543152, 680.730941653251648, 2270.567130446434021, 680.730941653251648, 2270.567130446434021, 449.71461926214397, 2395.358474135398865, 449.71461926214397 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 2395.358469247817993, 408.510912716388702, 2295.358474135398865, 408.510912716388702 ],
					"source" : [ "obj-162", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 2395.358469247817993, 422.458986529614776, 2295.358474135398865, 422.458986529614776 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 2395.358469247817993, 435.558733364101499, 2295.358474135398865, 435.558733364101499 ],
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"source" : [ "obj-167", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-167", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"midpoints" : [ 477.5, 3612.0, 465.0, 3612.0, 465.0, 3687.0, 477.5, 3687.0 ],
					"order" : 0,
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-224", 0 ],
					"midpoints" : [ 477.5, 3612.0, 465.0, 3612.0, 465.0, 3654.0, 477.5, 3654.0 ],
					"order" : 1,
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-225", 0 ],
					"midpoints" : [ 477.5, 3600.0, 477.5, 3600.0 ],
					"order" : 2,
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1845.790199518203735, 1245.0, 1806.0, 1245.0, 1806.0, 1386.0, 1829.040199518203735, 1386.0 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"order" : 1,
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"order" : 0,
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-226", 0 ],
					"midpoints" : [ 598.5, 3612.0, 585.0, 3612.0, 585.0, 3687.0, 598.5, 3687.0 ],
					"order" : 0,
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-227", 0 ],
					"midpoints" : [ 598.5, 3612.0, 585.0, 3612.0, 585.0, 3654.0, 598.5, 3654.0 ],
					"order" : 1,
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 0 ],
					"midpoints" : [ 598.5, 3600.0, 598.5, 3600.0 ],
					"order" : 2,
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-229", 0 ],
					"midpoints" : [ 719.5, 3612.0, 705.0, 3612.0, 705.0, 3687.0, 719.5, 3687.0 ],
					"order" : 0,
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-230", 0 ],
					"midpoints" : [ 719.5, 3612.0, 705.0, 3612.0, 705.0, 3654.0, 719.5, 3654.0 ],
					"order" : 1,
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"midpoints" : [ 719.5, 3600.0, 719.5, 3600.0 ],
					"order" : 2,
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 1 ],
					"midpoints" : [ 1714.717335402965546, 1428.546875, 1798.44140625, 1428.546875, 1798.44140625, 1386.0, 1908.040199518203735, 1386.0 ],
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1897.5, 1206.0, 1884.0, 1206.0, 1884.0, 1386.0, 1829.040199518203735, 1386.0 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 100.5, 3651.0, 54.0, 3651.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-186", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 100.5, 3684.0, 54.0, 3684.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-187", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 100.5, 3720.0, 54.0, 3720.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 0 ],
					"midpoints" : [ 228.314810395240784, 1102.276041624834761, 241.508680801140144, 1102.276041624834761, 241.508680801140144, 951.0, 294.5, 951.0 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-289", 0 ],
					"midpoints" : [ 144.314810395240784, 1106.599536755122244, 249.0, 1106.599536755122244, 249.0, 987.0, 264.672801166772842, 987.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-190", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1720.5, 1344.0, 1829.040199518203735, 1344.0 ],
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-207", 0 ],
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-194", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 1 ],
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-196", 0 ],
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"source" : [ "obj-198", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 682.5, 843.0, 682.5, 843.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-200", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-202", 0 ],
					"source" : [ "obj-201", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 0 ],
					"source" : [ "obj-202", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"source" : [ "obj-204", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-204", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 1,
					"source" : [ "obj-205", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-205", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"order" : 0,
					"source" : [ "obj-205", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 0 ],
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 0 ],
					"source" : [ "obj-207", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 1 ],
					"midpoints" : [ 2039.5, 1386.0, 1908.040199518203735, 1386.0 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 1 ],
					"midpoints" : [ 2138.5, 1353.0, 1908.040199518203735, 1353.0 ],
					"source" : [ "obj-209", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 0 ],
					"midpoints" : [ 867.5, 3549.0, 867.5, 3549.0 ],
					"source" : [ "obj-212", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1714.717335402965546, 1479.0, 1692.0, 1479.0, 1692.0, 1443.51171875, 1806.0, 1443.51171875, 1806.0, 1398.0, 1829.040199518203735, 1398.0 ],
					"source" : [ "obj-213", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1714.717335402965546, 1512.0, 1692.0, 1512.0, 1692.0, 1446.38671875, 1806.0, 1446.38671875, 1806.0, 1398.0, 1829.040199518203735, 1398.0 ],
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 867.5, 3585.0, 771.0, 3585.0, 771.0, 3303.0, 96.0, 3303.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-216", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 229.0, 3729.0, 54.0, 3729.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-217", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 229.0, 3684.0, 216.0, 3684.0, 216.0, 3609.0, 54.0, 3609.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 229.0, 3651.0, 216.0, 3651.0, 216.0, 3609.0, 54.0, 3609.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-219", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 354.000005722045898, 3729.0, 54.0, 3729.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-220", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 354.000005722045898, 3684.0, 339.0, 3684.0, 339.0, 3609.0, 54.0, 3609.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-221", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 354.000005722045898, 3651.0, 339.0, 3651.0, 339.0, 3609.0, 54.0, 3609.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 477.5, 3729.0, 54.0, 3729.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-223", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 477.5, 3684.0, 465.0, 3684.0, 465.0, 3609.0, 54.0, 3609.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 477.5, 3651.0, 465.0, 3651.0, 465.0, 3609.0, 54.0, 3609.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-225", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 598.5, 3729.0, 54.0, 3729.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 598.5, 3684.0, 585.0, 3684.0, 585.0, 3609.0, 528.0, 3609.0, 528.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-227", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 598.5, 3651.0, 585.0, 3651.0, 585.0, 3609.0, 528.0, 3609.0, 528.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 719.5, 3729.0, 54.0, 3729.0, 54.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-229", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 719.5, 3684.0, 705.0, 3684.0, 705.0, 3609.0, 528.0, 3609.0, 528.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 719.5, 3651.0, 705.0, 3651.0, 705.0, 3609.0, 528.0, 3609.0, 528.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 962.5, 3585.0, 939.0, 3585.0, 939.0, 3498.0, 771.0, 3498.0, 771.0, 3303.0, 96.0, 3303.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-233", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-248", 1 ],
					"order" : 1,
					"source" : [ "obj-234", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 1 ],
					"midpoints" : [ 329.5, 183.0, 402.0, 183.0, 402.0, 261.0, 386.136360168457031, 261.0 ],
					"order" : 0,
					"source" : [ "obj-234", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 1096.5, 3585.0, 1065.0, 3585.0, 1065.0, 3498.0, 771.0, 3498.0, 771.0, 3303.0, 96.0, 3303.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-235", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 1535.5, 1083.0, 1614.0, 1083.0, 1614.0, 1056.0, 1626.5, 1056.0 ],
					"source" : [ "obj-236", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 867.5, 3618.0, 828.0, 3618.0, 828.0, 3408.0, 213.0, 3408.0, 213.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-237", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"source" : [ "obj-238", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 962.5, 3618.0, 939.0, 3618.0, 939.0, 3498.0, 771.0, 3498.0, 771.0, 3303.0, 96.0, 3303.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-239", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-240", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-257", 0 ],
					"source" : [ "obj-240", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 1096.5, 3618.0, 1065.0, 3618.0, 1065.0, 3498.0, 771.0, 3498.0, 771.0, 3303.0, 96.0, 3303.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-241", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 1239.5, 3618.0, 1209.0, 3618.0, 1209.0, 3498.0, 771.0, 3498.0, 771.0, 3303.0, 96.0, 3303.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-242", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dict", 0 ],
					"midpoints" : [ 676.5, 1608.0, 267.0, 1608.0, 267.0, 1545.0, 105.5, 1545.0 ],
					"source" : [ "obj-243", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 868.5, 3684.0, 840.0, 3684.0, 840.0, 3408.0, 213.0, 3408.0, 213.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-244", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-248", 0 ],
					"source" : [ "obj-245", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 938.5, 3693.0, 840.0, 3693.0, 840.0, 3408.0, 213.0, 3408.0, 213.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-246", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 1036.5, 3693.0, 840.0, 3693.0, 840.0, 3408.0, 213.0, 3408.0, 213.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-247", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-248", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 1112.5, 3693.0, 840.0, 3693.0, 840.0, 3408.0, 213.0, 3408.0, 213.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-249", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 373.136360168457031, 318.0, 451.0859375, 318.0, 451.0859375, 474.0, 466.642852783203125, 474.0 ],
					"source" : [ "obj-250", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 1199.5, 3693.0, 840.0, 3693.0, 840.0, 3408.0, 213.0, 3408.0, 213.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-251", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 0 ],
					"source" : [ "obj-252", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 840.0, 3693.0, 840.0, 3408.0, 213.0, 3408.0, 213.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-253", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-254", 0 ],
					"source" : [ "obj-256", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-279", 0 ],
					"source" : [ "obj-257", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-260", 0 ],
					"source" : [ "obj-258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 0 ],
					"source" : [ "obj-259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-201", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 616.25, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-261", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 1 ],
					"source" : [ "obj-262", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"source" : [ "obj-263", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 0 ],
					"source" : [ "obj-264", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-256", 0 ],
					"source" : [ "obj-266", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 515.5, 432.0, 441.0, 432.0, 441.0, 354.0, 465.344151496887207, 354.0 ],
					"source" : [ "obj-267", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-269", 0 ],
					"source" : [ "obj-268", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-270", 0 ],
					"source" : [ "obj-269", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"source" : [ "obj-271", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 1 ],
					"source" : [ "obj-272", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 2 ],
					"source" : [ "obj-273", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 3 ],
					"source" : [ "obj-274", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 4 ],
					"source" : [ "obj-275", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 5 ],
					"source" : [ "obj-276", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 7 ],
					"source" : [ "obj-277", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 6 ],
					"midpoints" : [ 373.000005722045898, 3243.0, 376.875, 3243.0 ],
					"source" : [ "obj-278", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-279", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"midpoints" : [ 1626.5, 1398.0, 1714.717335402965546, 1398.0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 600.5, 432.0, 576.0, 432.0, 576.0, 390.0, 441.0, 390.0, 441.0, 354.0, 465.344151496887207, 354.0 ],
					"source" : [ "obj-280", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 515.5, 468.0, 441.0, 468.0, 441.0, 354.0, 465.344151496887207, 354.0 ],
					"source" : [ "obj-281", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 1 ],
					"midpoints" : [ 62.875, 3912.0, 306.375, 3912.0 ],
					"order" : 0,
					"source" : [ "obj-283", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-288", 0 ],
					"order" : 2,
					"source" : [ "obj-283", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-295", 0 ],
					"midpoints" : [ 62.875, 3915.0, 172.5, 3915.0 ],
					"order" : 1,
					"source" : [ "obj-283", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 0 ],
					"source" : [ "obj-285", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 0 ],
					"source" : [ "obj-286", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-290", 0 ],
					"source" : [ "obj-288", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 600.5, 468.0, 585.0, 468.0, 585.0, 429.0, 561.0, 429.0, 561.0, 390.0, 441.0, 390.0, 441.0, 354.0, 465.344151496887207, 354.0 ],
					"source" : [ "obj-291", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-283", 0 ],
					"source" : [ "obj-293", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-294", 0 ],
					"source" : [ "obj-295", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-298", 0 ],
					"midpoints" : [ 359.5, 357.0, 359.5, 357.0 ],
					"source" : [ "obj-296", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 402.5, 438.96484375, 466.642852783203125, 438.96484375 ],
					"source" : [ "obj-297", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-297", 0 ],
					"midpoints" : [ 359.5, 408.0, 402.5, 408.0 ],
					"source" : [ "obj-298", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 962.5, 3549.0, 939.0, 3549.0, 939.0, 3498.0, 771.0, 3498.0, 771.0, 3303.0, 45.0, 3303.0, 45.0, 3267.0, 68.625, 3267.0 ],
					"source" : [ "obj-299", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-300", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-301", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-302", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 0 ],
					"source" : [ "obj-304", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"source" : [ "obj-306", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"source" : [ "obj-307", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"source" : [ "obj-308", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"source" : [ "obj-309", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"source" : [ "obj-310", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1844.9654860496521, 1206.0, 1815.0, 1206.0, 1815.0, 1386.0, 1829.040199518203735, 1386.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-js", 0 ],
					"midpoints" : [ 214.5, 1872.0, 105.5, 1872.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
					"order" : 1,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"order" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 682.5, 882.0, 682.5, 882.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 734.5, 882.0, 734.5, 882.0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 786.5, 882.0, 787.5, 882.0 ],
					"source" : [ "obj-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"order" : 1,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"order" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 1,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-pitch", 1 ],
					"midpoints" : [ 682.5, 1287.0, 436.5, 1287.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"midpoints" : [ 466.642852783203125, 525.416087555931881, 423.0, 525.416087555931881, 423.0, 507.0, 402.751492559909821, 507.0 ],
					"order" : 1,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 466.642852783203125, 513.0, 466.642852783203125, 513.0 ],
					"order" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"midpoints" : [ 466.642852783203125, 570.0, 408.0, 570.0, 408.0, 567.0, 399.654147177934647, 567.0 ],
					"order" : 1,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-262", 0 ],
					"midpoints" : [ 466.642852783203125, 565.800347064854577, 426.0, 565.800347064854577, 426.0, 444.0, 228.0, 444.0, 228.0, 231.0, 98.5, 231.0 ],
					"order" : 2,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 466.642852783203125, 561.0, 466.642852783203125, 561.0 ],
					"order" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"midpoints" : [ 466.642852783203125, 609.0, 466.642852783203125, 609.0 ],
					"order" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 523.642852783203125, 609.0, 522.487008094787598, 609.0 ],
					"order" : 1,
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"midpoints" : [ 466.642852783203125, 618.0, 233.733765602111816, 618.0 ],
					"order" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 1 ],
					"midpoints" : [ 523.642852783203125, 642.0, 987.905259549617767, 642.0 ],
					"order" : 0,
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"midpoints" : [ 466.642852783203125, 765.0, 344.5, 765.0 ],
					"order" : 1,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 466.642852783203125, 703.55078125, 393.0, 703.55078125, 393.0, 687.0, 373.455993950366974, 687.0 ],
					"order" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 1 ],
					"midpoints" : [ 522.487008094787598, 729.0, 987.954797983169556, 729.0 ],
					"order" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 522.487008094787598, 765.0, 646.5, 765.0 ],
					"order" : 1,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 950.5, 114.0, 950.5, 114.0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-roll", 1 ],
					"midpoints" : [ 734.5, 1287.0, 456.0, 1287.0, 456.0, 1464.0, 440.5, 1464.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1716.5, 1170.0, 1683.0, 1170.0, 1683.0, 1344.0, 1829.040199518203735, 1344.0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 950.5, 141.0, 950.5, 141.0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1842.040199518203735, 1170.0, 1815.0, 1170.0, 1815.0, 1386.0, 1829.040199518203735, 1386.0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-yaw", 1 ],
					"midpoints" : [ 787.5, 1287.0, 462.0, 1287.0, 462.0, 1494.0, 457.5, 1494.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 47.5, 3049.0, 47.5, 3049.0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dict", 0 ],
					"midpoints" : [ 317.5, 1599.0, 267.0, 1599.0, 267.0, 1545.0, 105.5, 1545.0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dict", 0 ],
					"midpoints" : [ 538.5, 1560.0, 228.0, 1560.0, 228.0, 1545.0, 105.5, 1545.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"order" : 1,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 0 ],
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-238", 0 ],
					"midpoints" : [ 75.733765602111816, 228.0, 10.58203125, 228.0, 10.58203125, 944.471065225545317, 144.314810395240784, 944.471065225545317 ],
					"order" : 7,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 75.733765602111816, 177.0, 441.0, 177.0, 441.0, 87.0, 936.0, 87.0, 936.0, 84.0, 950.5, 84.0 ],
					"order" : 4,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 75.733765602111816, 711.273872256278992, 1958.5, 711.273872256278992 ],
					"order" : 0,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-tog", 0 ],
					"midpoints" : [ 75.733765602111816, 177.0, 450.0, 177.0, 450.0, 174.0, 465.344151496887207, 174.0 ],
					"order" : 6,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-tog", 0 ],
					"midpoints" : [ 75.733765602111816, 447.0, 30.0, 447.0, 30.0, 2148.0, 105.5, 2148.0 ],
					"order" : 9,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-tick-tog", 0 ],
					"midpoints" : [ 75.733765602111816, 1621.492590546607971, 648.524405479431152, 1621.492590546607971 ],
					"order" : 5,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-rel-tog", 0 ],
					"midpoints" : [ 75.733765602111816, 1410.960329532623291, 1039.5, 1410.960329532623291 ],
					"order" : 1,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-toggle", 0 ],
					"midpoints" : [ 75.733765602111816, 412.1171875, 21.81640625, 412.1171875, 21.81640625, 1791.0, 105.5, 1791.0 ],
					"order" : 10,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-var-tog", 0 ],
					"midpoints" : [ 75.733765602111816, 935.346116866217926, 1025.442037463188171, 935.346116866217926 ],
					"order" : 2,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vel-tog", 0 ],
					"midpoints" : [ 75.733765602111816, 183.0, 441.0, 183.0, 441.0, 882.0, 660.0, 882.0, 660.0, 1035.66796875, 987.0, 1035.66796875, 987.0, 1236.0, 1014.5, 1236.0 ],
					"order" : 3,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-tog", 0 ],
					"midpoints" : [ 75.733765602111816, 447.0, 50.96484375, 447.0, 50.96484375, 2637.0, 105.5, 2637.0 ],
					"order" : 8,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 47.5, 3144.0, 84.0, 3144.0, 84.0, 3252.0, 68.625, 3252.0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-252", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tid", 0 ],
					"midpoints" : [ 105.5, 1095.0, 81.0, 1095.0, 81.0, 1233.0, 105.5, 1233.0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 682.5, 804.0, 682.5, 804.0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-z", 1 ],
					"midpoints" : [ 429.5, 1095.0, 513.0, 1095.0, 513.0, 1395.0, 381.0, 1395.0, 381.0, 1407.0, 380.5, 1407.0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-y", 1 ],
					"midpoints" : [ 368.5, 1095.0, 513.0, 1095.0, 513.0, 1377.0, 361.5, 1377.0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-x", 1 ],
					"midpoints" : [ 294.5, 1095.0, 513.0, 1095.0, 513.0, 1335.0, 346.5, 1335.0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"midpoints" : [ 398.5, 882.0, 429.5, 882.0 ],
					"source" : [ "obj-93", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"midpoints" : [ 346.5, 894.0, 368.5, 894.0 ],
					"source" : [ "obj-93", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"midpoints" : [ 294.5, 882.0, 294.5, 882.0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1958.5, 1341.20703125, 1829.040199518203735, 1341.20703125 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1718.5, 1206.0, 1683.0, 1206.0, 1683.0, 1313.859375, 1829.040199518203735, 1313.859375 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-201", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 682.227266311645508, 192.0, 528.0, 192.0, 528.0, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-bs-b1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 743.266226768493652, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-bs-b10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 752.357135772705078, 192.0, 528.0, 192.0, 528.0, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-bs-b2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 825.084407806396484, 192.0, 528.0, 192.0, 528.0, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-bs-b3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 871.837654113769531, 192.0, 528.0, 192.0, 528.0, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-bs-b4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 678.331162452697754, 258.0, 528.0, 258.0, 528.0, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-bs-b5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 748.461031913757324, 258.0, 528.0, 258.0, 528.0, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-bs-b6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 821.18830394744873, 258.0, 528.0, 258.0, 528.0, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-bs-b7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 888.720770835876465, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-bs-b8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 683.525967597961426, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-bs-b9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-297", 1 ],
					"midpoints" : [ 465.344151496887207, 396.0, 415.5, 396.0 ],
					"order" : 1,
					"source" : [ "obj-bs-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 465.344151496887207, 393.0, 927.0, 393.0, 927.0, 510.0, 1023.0, 510.0, 1023.0, 504.0, 1548.0, 504.0, 1548.0, 219.333027924410999, 2295.358474135398865, 219.333027924410999 ],
					"order" : 0,
					"source" : [ "obj-bs-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-num", 0 ],
					"hidden" : 1,
					"midpoints" : [ 565.5, 135.0, 565.344150543212891, 135.0 ],
					"source" : [ "obj-bs-load", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 465.344151496887207, 264.0, 465.344151496887207, 264.0 ],
					"source" : [ "obj-bs-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-js", 0 ],
					"midpoints" : [ 565.344150543212891, 345.0, 465.344151496887207, 345.0 ],
					"source" : [ "obj-bs-num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bs-metro", 0 ],
					"midpoints" : [ 465.344151496887207, 204.0, 465.344151496887207, 204.0 ],
					"source" : [ "obj-bs-tog", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 7 ],
					"midpoints" : [ 105.5, 2323.42862606048584, 918.051449470221996, 2323.42862606048584, 918.051449470221996, 290.000012516975403, 1730.602898940443993, 290.000012516975403 ],
					"order" : 0,
					"source" : [ "obj-cl-avg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-277", 0 ],
					"midpoints" : [ 105.5, 2789.641181230545044, 429.5, 2789.641181230545044 ],
					"order" : 3,
					"source" : [ "obj-cl-avg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-coh", 0 ],
					"midpoints" : [ 105.5, 2316.0, 81.0, 2316.0, 81.0, 2376.0, 1002.0, 2376.0, 1002.0, 2421.0, 1371.0, 2421.0, 1371.0, 2427.0, 1395.214318752288818, 2427.0 ],
					"order" : 1,
					"source" : [ "obj-cl-avg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-scat", 0 ],
					"midpoints" : [ 105.5, 2316.0, 81.0, 2316.0, 81.0, 2433.0, 1002.0, 2433.0, 1002.0, 2430.0, 1017.5, 2430.0 ],
					"order" : 2,
					"source" : [ "obj-cl-avg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"midpoints" : [ 105.5, 2246.492772102355957, 1121.617691457271576, 2246.492772102355957, 1121.617691457271576, 431.352959632873535, 2137.735382914543152, 431.352959632873535 ],
					"order" : 0,
					"source" : [ "obj-cl-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-avg", 0 ],
					"midpoints" : [ 105.5, 2238.0, 105.5, 2238.0 ],
					"order" : 1,
					"source" : [ "obj-cl-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-max", 0 ],
					"midpoints" : [ 226.5, 2277.0, 81.0, 2277.0, 81.0, 2376.0, 105.5, 2376.0 ],
					"source" : [ "obj-cl-js", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-min", 0 ],
					"midpoints" : [ 166.0, 2277.0, 81.0, 2277.0, 81.0, 2334.0, 105.5, 2334.0 ],
					"source" : [ "obj-cl-js", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-js", 0 ],
					"midpoints" : [ 105.5, 2208.0, 105.5, 2208.0 ],
					"source" : [ "obj-cl-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cl-metro", 0 ],
					"midpoints" : [ 105.5, 2178.0, 105.5, 2178.0 ],
					"source" : [ "obj-cl-tog", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-ts", 1 ],
					"midpoints" : [ 663.5, 1446.0, 860.5, 1446.0 ],
					"source" : [ "obj-clock", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 5 ],
					"midpoints" : [ 105.5, 1945.0, 864.616589583456516, 1945.0, 864.616589583456516, 290.000012516975403, 1623.733179166913033, 290.000012516975403 ],
					"order" : 1,
					"source" : [ "obj-count", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"midpoints" : [ 105.5, 1978.444489488378167, 1122.117691457271576, 1978.444489488378167, 1122.117691457271576, 552.944142639636993, 2138.735382914543152, 552.944142639636993 ],
					"order" : 0,
					"source" : [ "obj-count", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-276", 0 ],
					"midpoints" : [ 105.5, 2600.426868200302124, 325.5, 2600.426868200302124 ],
					"order" : 2,
					"source" : [ "obj-count", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-js", 0 ],
					"midpoints" : [ 105.5, 1872.0, 105.5, 1872.0 ],
					"source" : [ "obj-cpu", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-256", 1 ],
					"midpoints" : [ 105.5, 1590.0, 132.0, 1590.0, 132.0, 1626.0, 684.0, 1626.0, 684.0, 1599.0, 721.5, 1599.0 ],
					"order" : 0,
					"source" : [ "obj-dict", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bangout", 0 ],
					"midpoints" : [ 105.5, 1584.0, 105.5, 1584.0 ],
					"order" : 1,
					"source" : [ "obj-dict", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-count", 0 ],
					"midpoints" : [ 105.5, 1902.0, 105.5, 1902.0 ],
					"source" : [ "obj-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-gate", 0 ],
					"source" : [ "obj-lc-dbg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 0 ],
					"midpoints" : [ 609.5, 3252.0, 540.0, 3252.0, 540.0, 3297.0, 96.0, 3297.0, 96.0, 3261.0, 68.625, 3261.0 ],
					"source" : [ "obj-lc-eval-test", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-236", 0 ],
					"midpoints" : [ 68.625, 3297.853736400604248, 887.620971769094467, 3297.853736400604248, 887.620971769094467, 1051.0 ],
					"order" : 0,
					"source" : [ "obj-lc-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 1 ],
					"midpoints" : [ 68.625, 3421.34375, 1002.0, 3421.34375, 1002.0, 3339.0, 1433.863622903823853, 3339.0 ],
					"order" : 1,
					"source" : [ "obj-lc-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-293", 0 ],
					"order" : 4,
					"source" : [ "obj-lc-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"midpoints" : [ 68.625, 3360.0, 87.5, 3360.0 ],
					"order" : 3,
					"source" : [ "obj-lc-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-gate", 1 ],
					"midpoints" : [ 68.625, 3318.0, 870.746514678001404, 3318.0 ],
					"order" : 2,
					"source" : [ "obj-lc-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-udp", 0 ],
					"midpoints" : [ 479.625, 3360.0, 250.142861604690552, 3360.0 ],
					"source" : [ "obj-lc-js", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 8 ],
					"midpoints" : [ 648.524405479431152, 3134.439098358154297, 1216.281082153320312, 3134.439098358154297, 1216.281082153320312, 290.000012516975403, 1784.037758827209473, 290.000012516975403 ],
					"order" : 0,
					"source" : [ "obj-lc-tick-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-js", 8 ],
					"midpoints" : [ 648.524405479431152, 3171.0, 579.0, 3171.0, 579.0, 3210.11328125, 479.625, 3210.11328125 ],
					"order" : 1,
					"source" : [ "obj-lc-tick-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-lc-tick-metro", 0 ],
					"midpoints" : [ 648.524405479431152, 3102.0, 648.524405479431152, 3102.0 ],
					"source" : [ "obj-lc-tick-tog", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cpu", 0 ],
					"midpoints" : [ 105.5, 1842.0, 105.5, 1842.0 ],
					"source" : [ "obj-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-rel-gate", 0 ],
					"midpoints" : [ 1304.5, 2748.0, 1281.0, 2748.0, 1281.0, 2805.0, 1304.5, 2805.0 ],
					"source" : [ "obj-rel-dbg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-rel-print", 0 ],
					"midpoints" : [ 1304.5, 2835.0, 1281.0, 2835.0, 1281.0, 2766.0, 1304.5, 2766.0 ],
					"source" : [ "obj-rel-gate", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-rel-count", 0 ],
					"midpoints" : [ 1039.5, 2754.0, 1039.5, 2754.0 ],
					"source" : [ "obj-rel-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-rel-gate", 1 ],
					"midpoints" : [ 1158.5, 2790.0, 1281.0, 2790.0, 1281.0, 2805.0, 1331.5, 2805.0 ],
					"source" : [ "obj-rel-js", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-rel-unpack", 0 ],
					"midpoints" : [ 1099.0, 2790.0, 1080.0, 2790.0, 1080.0, 2796.0, 1039.5, 2796.0 ],
					"source" : [ "obj-rel-js", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-rel-js", 0 ],
					"midpoints" : [ 1039.5, 2709.0, 1039.5, 2709.0 ],
					"source" : [ "obj-rel-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-rel-metro", 0 ],
					"midpoints" : [ 1039.5, 2679.0, 1039.5, 2679.0 ],
					"source" : [ "obj-rel-tog", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-rel-dist", 0 ],
					"midpoints" : [ 1039.5, 2829.0, 1039.5, 2829.0 ],
					"source" : [ "obj-rel-unpack", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-rel-id-a", 0 ],
					"midpoints" : [ 1130.0, 2850.0, 1202.0, 2850.0 ],
					"source" : [ "obj-rel-unpack", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-rel-id-b", 0 ],
					"midpoints" : [ 1220.5, 2850.0, 1278.5, 2850.0 ],
					"source" : [ "obj-rel-unpack", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dict", 0 ],
					"midpoints" : [ 155.5, 1464.0, 105.5, 1464.0 ],
					"source" : [ "obj-sp-pitch", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dict", 0 ],
					"midpoints" : [ 169.5, 1494.0, 105.5, 1494.0 ],
					"source" : [ "obj-sp-roll", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dict", 0 ],
					"midpoints" : [ 629.5, 1521.0, 477.0, 1521.0, 477.0, 1545.0, 105.5, 1545.0 ],
					"source" : [ "obj-sp-ts", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dict", 0 ],
					"midpoints" : [ 105.5, 1374.0, 105.5, 1374.0 ],
					"source" : [ "obj-sp-x", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dict", 0 ],
					"midpoints" : [ 120.5, 1413.0, 105.5, 1413.0 ],
					"source" : [ "obj-sp-y", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dict", 0 ],
					"midpoints" : [ 186.5, 1545.0, 105.5, 1545.0 ],
					"source" : [ "obj-sp-yaw", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dict", 0 ],
					"midpoints" : [ 139.5, 1434.0, 105.5, 1434.0 ],
					"source" : [ "obj-sp-z", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-g4", 0 ],
					"midpoints" : [ 1395.214318752288818, 2463.0, 1395.214318752288818, 2463.0 ],
					"source" : [ "obj-ss-coh", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-p4", 0 ],
					"source" : [ "obj-ss-coh", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-g2", 0 ],
					"midpoints" : [ 1395.214318752288818, 2289.0, 1395.214318752288818, 2289.0 ],
					"source" : [ "obj-ss-dis", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-p2", 0 ],
					"midpoints" : [ 1501.214318752288818, 2289.0, 1489.500035285949707, 2289.0 ],
					"source" : [ "obj-ss-dis", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"midpoints" : [ 1121.156325459480286, 2340.22853478230536, 1581.588710188865662, 2340.22853478230536, 1581.588710188865662, 509.79693603515625, 2137.735382914543152, 509.79693603515625 ],
					"order" : 0,
					"source" : [ "obj-ss-p1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 0 ],
					"midpoints" : [ 1121.156325459480286, 2593.680492162704468, 121.5, 2593.680492162704468 ],
					"order" : 1,
					"source" : [ "obj-ss-p1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 3 ],
					"midpoints" : [ 1489.500035285949707, 2329.142911911010742, 1503.18174733966589, 2329.142911911010742, 1503.18174733966589, 290.000012516975403, 1516.863459393382072, 290.000012516975403 ],
					"order" : 1,
					"source" : [ "obj-ss-p2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"midpoints" : [ 1489.500035285949707, 2357.353182366117835, 1645.017819583415985, 2357.353182366117835, 1645.017819583415985, 638.730941653251648, 2141.735382914543152, 638.730941653251648 ],
					"order" : 0,
					"source" : [ "obj-ss-p2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-274", 0 ],
					"midpoints" : [ 1489.500035285949707, 2792.498324155807495, 222.5, 2792.498324155807495 ],
					"order" : 2,
					"source" : [ "obj-ss-p2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 2 ],
					"midpoints" : [ 1162.785742282867432, 2496.714344501495361, 1294.821454718708992, 2496.714344501495361, 1294.821454718708992, 290.000012516975403, 1463.428599506616592, 290.000012516975403 ],
					"source" : [ "obj-ss-p3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 1511.5, 2515.181252937763929, 1612.807340979576111, 2515.181252937763929, 1612.807340979576111, 301.591711994726211, 2137.735382914543152, 301.591711994726211 ],
					"order" : 0,
					"source" : [ "obj-ss-p4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"midpoints" : [ 1511.5, 2535.82651929743588, 1423.02945750951767, 2535.82651929743588, 1423.02945750951767, 290.000012516975403, 1356.558879733085632, 290.000012516975403 ],
					"order" : 1,
					"source" : [ "obj-ss-p4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 0 ],
					"midpoints" : [ 1511.5, 2707.241925152018666, 64.0, 2707.241925152018666 ],
					"order" : 2,
					"source" : [ "obj-ss-p4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-g3", 0 ],
					"midpoints" : [ 1017.5, 2457.0, 1025.214309930801392, 2457.0 ],
					"source" : [ "obj-ss-scat", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-p3", 0 ],
					"source" : [ "obj-ss-scat", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-g1", 0 ],
					"midpoints" : [ 1025.442037463188171, 2283.0, 1025.442037463188171, 2283.0 ],
					"source" : [ "obj-ss-still", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-p1", 0 ],
					"midpoints" : [ 1136.442037463188171, 2283.0, 1121.156325459480286, 2283.0 ],
					"source" : [ "obj-ss-still", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-clock", 0 ],
					"midpoints" : [ 656.5, 1416.0, 663.5, 1416.0 ],
					"source" : [ "obj-tib", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-ts", 0 ],
					"midpoints" : [ 629.5, 1416.0, 629.5, 1416.0 ],
					"source" : [ "obj-tib", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-pitch", 0 ],
					"midpoints" : [ 105.5, 1335.0, 81.0, 1335.0, 81.0, 1437.0, 155.5, 1437.0 ],
					"order" : 3,
					"source" : [ "obj-tid", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-roll", 0 ],
					"midpoints" : [ 105.5, 1335.0, 81.0, 1335.0, 81.0, 1467.0, 169.5, 1467.0 ],
					"order" : 2,
					"source" : [ "obj-tid", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-x", 0 ],
					"midpoints" : [ 105.5, 1335.0, 105.5, 1335.0 ],
					"order" : 6,
					"source" : [ "obj-tid", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-y", 0 ],
					"midpoints" : [ 105.5, 1335.0, 81.0, 1335.0, 81.0, 1377.0, 120.5, 1377.0 ],
					"order" : 5,
					"source" : [ "obj-tid", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-yaw", 0 ],
					"midpoints" : [ 105.5, 1335.0, 81.0, 1335.0, 81.0, 1497.0, 186.5, 1497.0 ],
					"order" : 1,
					"source" : [ "obj-tid", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sp-z", 0 ],
					"midpoints" : [ 105.5, 1335.0, 81.0, 1335.0, 81.0, 1407.0, 139.5, 1407.0 ],
					"order" : 4,
					"source" : [ "obj-tid", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-tib", 0 ],
					"midpoints" : [ 105.5, 1335.0, 606.0, 1335.0, 606.0, 1389.0, 629.5, 1389.0 ],
					"order" : 0,
					"source" : [ "obj-tid", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-metro", 0 ],
					"midpoints" : [ 105.5, 1815.0, 105.5, 1815.0 ],
					"source" : [ "obj-toggle", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 1 ],
					"midpoints" : [ 1025.442037463188171, 1923.0, 987.0, 1923.0, 987.0, 930.0, 1332.0, 930.0, 1332.0, 297.0, 1409.993739619851112, 297.0 ],
					"order" : 1,
					"source" : [ "obj-var-display", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"midpoints" : [ 1025.442037463188171, 1957.062494723126292, 1581.088710188865662, 1957.062494723126292, 1581.088710188865662, 470.203028798103333, 2136.735382914543152, 470.203028798103333 ],
					"order" : 0,
					"source" : [ "obj-var-display", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-273", 0 ],
					"midpoints" : [ 1025.442037463188171, 2876.284040451049805, 172.5, 2876.284040451049805 ],
					"order" : 3,
					"source" : [ "obj-var-display", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-dis", 0 ],
					"midpoints" : [ 1025.442037463188171, 1923.0, 1011.0, 1923.0, 1011.0, 2046.0, 1002.0, 2046.0, 1002.0, 2247.0, 1371.0, 2247.0, 1371.0, 2262.0, 1395.214318752288818, 2262.0 ],
					"order" : 2,
					"source" : [ "obj-var-display", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-var-display", 0 ],
					"midpoints" : [ 1025.442037463188171, 1887.0, 1025.442037463188171, 1887.0 ],
					"source" : [ "obj-var-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-var-js", 0 ],
					"midpoints" : [ 1025.442037463188171, 1857.0, 1025.442037463188171, 1857.0 ],
					"source" : [ "obj-var-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-var-metro", 0 ],
					"midpoints" : [ 1025.442037463188171, 1830.0, 1025.442037463188171, 1830.0 ],
					"source" : [ "obj-var-tog", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 4 ],
					"midpoints" : [ 1014.5, 1374.0, 987.0, 1374.0, 987.0, 930.0, 1332.0, 930.0, 1332.0, 297.0, 1570.298319280147552, 297.0 ],
					"order" : 1,
					"source" : [ "obj-vel-avg2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 0 ],
					"midpoints" : [ 1014.5, 1389.717152163386345, 1576.117691457271576, 1389.717152163386345, 1576.117691457271576, 387.647075414657593, 2137.735382914543152, 387.647075414657593 ],
					"order" : 0,
					"source" : [ "obj-vel-avg2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-275", 0 ],
					"midpoints" : [ 1014.5, 2318.926868200302124, 273.5, 2318.926868200302124 ],
					"order" : 3,
					"source" : [ "obj-vel-avg2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-ss-still", 0 ],
					"midpoints" : [ 1014.5, 1701.0, 1002.0, 1701.0, 1002.0, 2247.0, 1025.442037463188171, 2247.0 ],
					"order" : 2,
					"source" : [ "obj-vel-avg2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vel-gate2", 0 ],
					"midpoints" : [ 1097.507247090339661, 1434.0, 1097.507247090339661, 1434.0 ],
					"source" : [ "obj-vel-dbg2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vel-print2", 0 ],
					"midpoints" : [ 1097.507247090339661, 1500.0, 1097.507247090339661, 1500.0 ],
					"source" : [ "obj-vel-gate2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vel-avg2", 0 ],
					"midpoints" : [ 1014.5, 1335.0, 1014.5, 1335.0 ],
					"source" : [ "obj-vel-js2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vel-gate2", 1 ],
					"midpoints" : [ 1125.5, 1347.0, 1086.0, 1347.0, 1086.0, 1395.0, 1074.0, 1395.0, 1074.0, 1461.0, 1113.0, 1461.0, 1113.0, 1470.0, 1124.507247090339661, 1470.0 ],
					"source" : [ "obj-vel-js2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vel-js2", 0 ],
					"midpoints" : [ 1014.5, 1305.0, 1014.5, 1305.0 ],
					"source" : [ "obj-vel-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vel-metro", 0 ],
					"midpoints" : [ 1014.5, 1275.0, 1014.5, 1275.0 ],
					"source" : [ "obj-vel-tog", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"midpoints" : [ 105.5, 2742.000064611434937, 1134.363785207271576, 2742.000064611434937, 1134.363785207271576, 596.598963439464569, 2140.235382914543152, 596.598963439464569 ],
					"order" : 0,
					"source" : [ "obj-vt2-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-avg", 0 ],
					"midpoints" : [ 105.5, 2733.0, 106.928571462631226, 2733.0 ],
					"order" : 1,
					"source" : [ "obj-vt2-js", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-high", 0 ],
					"midpoints" : [ 211.5, 2769.0, 270.0, 2769.0, 270.0, 2895.0, 292.642861604690552, 2895.0 ],
					"source" : [ "obj-vt2-js", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-low", 0 ],
					"midpoints" : [ 169.099999999999994, 2769.0, 270.0, 2769.0, 270.0, 2787.0, 292.642861604690552, 2787.0 ],
					"source" : [ "obj-vt2-js", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-mid", 0 ],
					"midpoints" : [ 190.300000000000011, 2769.0, 270.0, 2769.0, 270.0, 2835.0, 292.642861604690552, 2835.0 ],
					"source" : [ "obj-vt2-js", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-range", 0 ],
					"midpoints" : [ 126.700000000000003, 2769.0, 84.0, 2769.0, 84.0, 2823.0, 106.928571462631226, 2823.0 ],
					"source" : [ "obj-vt2-js", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-var", 0 ],
					"midpoints" : [ 147.900000000000006, 2769.0, 84.0, 2769.0, 84.0, 2886.0, 106.928571462631226, 2886.0 ],
					"source" : [ "obj-vt2-js", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-js", 0 ],
					"midpoints" : [ 105.5, 2703.0, 105.5, 2703.0 ],
					"source" : [ "obj-vt2-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vt2-metro", 0 ],
					"midpoints" : [ 105.5, 2676.0, 105.5, 2676.0 ],
					"source" : [ "obj-vt2-tog", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 6 ],
					"midpoints" : [ 106.928571462631226, 2932.000069141387939, 892.048305258154869, 2932.000069141387939, 892.048305258154869, 290.000012516975403, 1677.168039053678513, 290.000012516975403 ],
					"order" : 0,
					"source" : [ "obj-vt2-var", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-278", 0 ],
					"midpoints" : [ 106.928571462631226, 3144.0, 84.0, 3144.0, 84.0, 3210.0, 373.000005722045898, 3210.0 ],
					"order" : 1,
					"source" : [ "obj-vt2-var", 0 ]
				}

			}
 ],
		"originid" : "pat-4",
		"parameters" : 		{
			"obj-197" : [ "live.dial[9]", "rate", 0 ],
			"obj-198" : [ "live.toggle[24]", "live.toggle", 0 ],
			"obj-200" : [ "mc.live.gain~", "mc.live.gain~", 0 ],
			"obj-202" : [ "mc.live.gain~[1]", "mc.live.gain~[1]", 0 ],
			"obj-22" : [ "mc.live.gain~[4]", "mc.live.gain~", 0 ],
			"obj-269" : [ "live.gain~", "live.gain~", 0 ],
			"obj-26::obj-1" : [ "live.text", "live.text", 0 ],
			"obj-26::obj-11" : [ "live.text[1]", "live.text", 0 ],
			"obj-26::obj-12" : [ "live.menu[2]", "live.menu[2]", 0 ],
			"obj-26::obj-14" : [ "live.dial", "crossover", 0 ],
			"obj-26::obj-15" : [ "live.text[2]", "live.text", 0 ],
			"obj-26::obj-25" : [ "live.dial[15]", "regularization", 0 ],
			"obj-26::obj-27" : [ "live.menu", "live.menu", 0 ],
			"obj-26::obj-58" : [ "live.text[10]", "live.text[9]", 0 ],
			"obj-26::obj-7" : [ "live.menu[1]", "live.menu[1]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "ahfsd_behaviour_sim.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_clustering.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_coherence.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_controller.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_disorder.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_floorview.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_light_sim.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_presence.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_reaper.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_relational.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_scatter.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_spat5.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_stillness.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_td_bridge.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_variance.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_velocity.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ahfsd_vertical.js",
				"bootpath" : "~/Documents/ZHdK/Thesis/Live/Max tools I Need",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "o.atomize.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.dict.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.print.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.var.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.boids.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.cpu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.deferloadmess.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/spat5/patchers",
				"patcherrelativepath" : "../../../../Max 9/Packages/spat5/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.hoa.decoder.control.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/spat5/patchers",
				"patcherrelativepath" : "../../../../Max 9/Packages/spat5/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.hoa.decoder~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.oper.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.spat~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.viewer.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.virtualspeakers~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "jasch_new",
				"default" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 0.752268, 0.752268, 0.752268, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.851468, 0.851468, 0.851468, 1.0 ],
						"color2" : [ 0.851468, 0.851468, 0.851468, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"clearcolor" : [ 0.65098, 0.666667, 0.662745, 0.0 ],
					"color" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"elementcolor" : [ 0.451266, 0.451266, 0.451266, 1.0 ],
					"fontname" : [ "Verdana" ],
					"fontsize" : [ 10.0 ],
					"patchlinecolor" : [ 0.752941, 0.720076, 0.621482, 0.5 ],
					"selectioncolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
