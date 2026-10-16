#pragma C+


fun2: function(arg1, arg2) {
    if (arg1.prop124) {
        return arg2;
    } else {
        setit(arg1);
        caps();
        arg1.thedesc;
        " is closed. ";
        return nil;
    }
}

fun3: function(arg1, arg2, arg3, arg4) {
    if (arg4 == numObj || arg4 == strObj) {
        return;
    }
    if (!arg2.prop125(arg4) && !arg4.prop126(arg2.location)) {
        if (find(arg1.prop127, arg4) != nil) {
            return;
        }
        "%You% can't reach ";
        arg4.thedesc;
        " from ";
        arg1.thedesc;
        ". ";
        exit;
    }
}

fun4: function(arg1) {
    local local1, local2, local3, local4, local5, local6;

    local2 = length(arg1);
    local1 = 0;
    local3 = 1;
    local3 = 1;
    local1 = 0;
  label342:
    if (local3 <= local2) {
        local4 = arg1[local3];
        if (local4.prop131) {
            if (local4.isEquivalent) {
                local6 = firstsc(local4);
                local5 = local3 + 1;
              label407:
                if (local5 <= local2) {
                    if (fun5(local4, arg1[local5])) {
                        goto label448;
                    }
                    ++local5;
                    goto label407;
                }
            }
            ++local1;
        }
      label448:
        ++local3;
        goto label342;
    }
    return local1;
}

fun5: function(arg1, arg2) { return firstsc(arg1) == firstsc(arg2) && arg1.prop128 == arg2.prop128 && (arg1.prop129 && arg1.prop130) == (arg2.prop129 && arg2.prop130); }

fun6: function(arg1) {
    if (arg1 <= 20) {
        say(['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty'][arg1]);
    } else {
        say(arg1);
    }
}

fun7: function(arg1) {
    local local1, local2, local3, local4, local5, local6, local7, local8, local9, local10, local11;

    local4 = arg1.contents;
    local3 = length(local4);
    local2 = 0;
    local6 = fun4(local4);
    local1 = 1;
  label880:
    if (local1 <= local3) {
        local5 = local4[local1];
        if (local5.prop131) {
            local7 = 1;
            if (local5.isEquivalent) {
                local11 = firstsc(local5);
                local8 = local9 = 0;
                local10 = 1;
              label961:
                if (local10 <= local3) {
                    if (fun5(local5, local4[local10])) {
                        if (local10 < local1) {
                            ++local8;
                            goto label1019;
                        } else {
                            ++local9;
                        }
                    }
                    ++local10;
                    goto label961;
                }
              label1019:
                if (local8 == 0) {
                    local7 = local9;
                } else {
                    goto label1333;
                }
            }
            if (local2 > 0) {
                if (local2 + 1 < local6) {
                    ", ";
                } else if (local2 == 1) {
                    " and ";
                } else {
                    ", and ";
                }
            }
            if (local7 == 1) {
                local5.adesc;
            } else {
                fun6(local7);
                " ";
                local5.prop132;
            }
            if (local5.prop128 && isclass(local5, class65)) {
                " (being worn)";
            }
            if (local5.prop129 && local5.prop130) {
                " (providing light)";
            }
            if (isclass(local5, class218) && local5.prop124 && local5.location == Me && local5.prop504 != nil) {
                " (containing <<say(local5.prop504)>>)";
            }
            local2 = local2 + 1;
        }
      label1333:
        ++local1;
        goto label880;
    }
}

fun8: function(arg1) {
    local local1, local2, local3;

    local1 = arg1.contents;
    local3 = length(local1);
    local2 = 1;
  label1387:
    if (local2 <= local3) {
        fun24(local1[local2]);
        local2 = local2 + 1;
        goto label1387;
    }
}

fun9: function(arg1) {
    incturn();
    obj20.prop138 = obj20.prop138 + 1;
    fun26(obj20.prop139, obj20.prop138);
}

fun10: function(arg1) {
    local local1, local2, local3, local4;

    local1 = length(arg1);
    local2 = 1;
    local4 = 0;
  label1527:
    if (local2 <= local1) {
        local3 = arg1[local2];
        if (!local3.prop128) {
            local4 = local4 + local3.prop140;
        }
        if (length(local3.contents) && !local3.prop128) {
            local4 = local4 + fun10(local3.contents);
        }
        local2 = local2 + 1;
        goto label1527;
    }
    return local4;
}

fun11: function(arg1) {
    local local1, local2, local3, local4, local5;

    local2 = length(arg1);
    local1 = 1;
    local3 = 0;
  label1684:
    if (local1 <= local2) {
        local5 = arg1[local1];
        if (!local5.prop128) {
            local3 = local3 + local5.prop141;
        }
        local1 = local1 + 1;
        goto label1684;
    }
    return local3;
}

fun12: function(arg1) {
    obj20.prop486 = obj20.prop487[1];
    obj20.prop487 = cdr(obj20.prop487);
}

fun13: function { "You stumble around in the dark, and don't get anywhere. "; }

fun14: function {
    "In a total of ";
    say(obj20.prop138);
    " turns, you have achieved a score of ";
    say(obj20.prop139);
    " points out of a possible ";
    say(obj20.prop483);
    ".\n";
}

fun15: function { "Thanks for playing \(Sunset Over Savannah!\)   \nIvan Cockrum <ivan@cockrumville.com> \bIf you enjoyed this game, you can find many more like it at  ftp.gmd.de/if-archive/.  And be sure to visit the rec.games.int.fiction newsgroup! "; }

fun16: function {
    "***\bYou wake up some time later, feeling refreshed. ";
    obj20.prop450 = 0;
}

fun17: function {
    local local1;

    obj20.prop148 = [];
    local1 = firstobj(class28);
  label2390:
    if (local1) {
        obj20.prop148 += local1;
        local1 = nextobj(local1, class28);
        goto label2390;
    }
    obj20.prop497 = [];
    local1 = firstobj(class40);
  label2444:
    if (local1) {
        if (!local1.prop293) {
            obj20.prop497 += local1;
        }
        local1 = nextobj(local1, class40);
        goto label2444;
    }
}

fun18: function(arg1) {
    local local1 = [], local2, local3, local4;

    if (!isclass(arg1, class29) || isclass(arg1, class29) && arg1.prop124) {
        local3 = arg1.contents;
        local4 = length(local3);
        local1 += local3;
        local2 = 1;
      label2585:
        if (local2 <= local4) {
            local1 += fun18(local3[local2]);
            ++local2;
            goto label2585;
        }
    }
    return local1;
}

fun19: function(arg1) { obj20.prop123 = true; }

obj20: class211
    prop489 = nil

    prop294 = true

    prop490 = nil

    prop484 = []

    prop487 = ['confused', 'wavering', 'hesitant', 'skittish', 'excited', 'resolute']

    prop486 = 'conflicted'

    prop491 = nil

    prop492 = nil

    prop493 = 0

    prop494 = nil

    prop495 = nil

    prop496 = nil

    prop148 = [Me, obj55_ground, obj233_sandy_beach, obj243_buried_treasure, obj261_dry_sand, obj262_wet_sand, obj268_mud, obj271_sky, obj288_salt_water, obj291_ocean_water, obj292_beach_sand, obj423_ocean, obj424_ocean_tide_surf, obj446_sandy_beach, obj476_Tybrisa_Pavilion_s_c, obj479_pavilion_s_canopy, obj482_shelter_s_roof, obj513_dunes, obj528_Tybrisa_Pavilion, obj530_ghostly_dancers, obj531_support_beams, obj532_maintenance_hatch, obj533_Tybrisa_Pavilion, obj534_pier, obj535_pier, obj545_snack_bar, obj547_vendor, obj548_boiled_peanut_sign, obj557_crappy_corporate_job, obj568_cement_pylons, obj569_cement_pylons, obj595_fingerlike_reeds, obj616_wax, obj635_breath, obj638_sunset, obj639_sun, obj640_clouds, obj641_moon, obj642_tanker, obj643_hotels, obj647_life, obj665_snacks, obj674_waving_girl, obj675_the_old_man, obj687_people, obj689_job, obj690_New_York, obj691_Savannah, obj692_Esmerelda, obj693_kids, obj694_ghosts, obj702_voices]

    prop497 = [Me, obj199___Beach_Path__, obj209_Fun_things_to_try, obj210_Ways_to_get_hurt, obj212_brick, obj213_pail, obj216, obj217, obj222_the_vendor, obj225_goggles, obj228, obj234_shallow_hole, obj237, obj238_crowbar, obj239_boiler, obj240_sieve, obj243_buried_treasure, obj246_your_sand_castle, obj254_white_rubber_strap, obj255_white_rubber_strap, obj261_dry_sand, obj262_wet_sand, obj265, obj266, obj268_mud, obj269___Pavilion__, obj284, obj285___Damp_Sand__Beneath, obj286___Damp_Sand__South_o, obj287___Damp_Sand__North_o, obj288_salt_water, obj291_ocean_water, obj292_beach_sand, obj299_deep_fissure, obj300_busted_trap, obj302_length_of_rope, obj303_broken_stave, obj305_the_old_man, obj306_scruffy_looking_indi, obj307_flock_of_gulls, obj339___Inside_the__Octopu, obj346, obj363___In_the_Diving_Bell, obj381___Grotto__, obj397___Underwater_____dri, obj425_single_mite, obj426_shrimp, obj427___By_the_Snack_Bar__, obj428_drinking_fountain, obj429_public_shower, obj430, obj432___End_of_Pier__, obj433___On_the_Canopy__, obj435, obj436_conch_shell, obj437___Under_Pavilion__, obj438_parchment, obj439_hole, obj440_organic_looking_cast, obj441_your_sculpture, obj442, obj443, obj447___Storage_Area__, obj448_loc_benchroom, obj449___Middle_of_Pier__, obj450___Dry_Sand__North_of, obj451___Dry_Sand__South_of, obj452___Shallow_Water__Nor, obj453___Shallow_Water__Ben, obj454___Shallow_Water__Sou, obj455_pavilion_s_canopy, obj456, obj457_bottle, obj458_bottle_bottles, obj459_cavity, obj461_colony_of_mites, obj464___Deep_Water__South_, obj466___Underwater_____dri, obj467___Underwater_____dri, obj468___Underwater_____dri, obj469, obj471_scuba_mask, obj472, obj473_path, obj474, obj475_benches, obj476_Tybrisa_Pavilion_s_c, obj477___On_the_Enclosure__, obj478_maintenance_hatch, obj479_pavilion_s_canopy, obj480_maintenance_hatch, obj481_chink, obj482_shelter_s_roof, obj483_gate, obj484_gate, obj485_glass_recycling_cani, obj486_aluminum_recycling_c, obj487_dragon_sculpture, obj488_dragon_sculpture, obj489___Deep_Water__North_, obj490___Deep_Water__Beneat, obj491_looming__crystalline, obj492_pipes, obj493_shiny_object, obj494_pipes, obj495_pipes, obj496___Underwater_____dri, obj497___Underwater_____dri, obj498___Underwater_____dri, obj499___Underwater_____dri, obj502_surface_pattern, obj504_rock, obj505_boiled_peanut_sign, obj506_marine_center, obj507_center_door, obj508, obj513_dunes, obj514_thin_slat_fences, obj515_ramp_and_stairway, obj516_boardwalks, obj517_boardwalk, obj518_trash_barrel, obj519_boardwalk, obj520_assorted_rubbish, obj521_beige_plastic, obj522_two_bottom_hoops, obj523_steel_chain, obj524_stave_cylinder_stave, obj525_third_hoop, obj526_pipes, obj527_valve, obj528_Tybrisa_Pavilion, obj530_ghostly_dancers, obj531_support_beams, obj532_maintenance_hatch, obj533_Tybrisa_Pavilion, obj535_pier, obj536, obj537, obj538, obj539, obj541, obj542, obj543_benches, obj545_snack_bar, obj546_snack_bar, obj547_vendor, obj548_boiled_peanut_sign, obj549_boiled_peanut_sign, obj550_brick_enclosure, obj552_brick_enclosure, obj553_brick_enclosure, obj554_rest_room_doors, obj555_brass_plaque, obj556_husks_peanuts_peanut, obj557_crappy_corporate_job, obj558_shelves, obj559_brick_enclosure, obj560_conch_shell, obj561_antique_bottle, obj562_cork, obj563_boiled_crab, obj564_rooftop_shingles, obj565_shingle, obj566, obj567_steel_key, obj568_cement_pylons, obj569_cement_pylons, obj570_utility_table, obj571_utility_table, obj572_peg_board, obj573_unrecognizable_tools, obj574_peg_board, obj575_boiler_s_lid, obj576_clamp, obj577_glass_recycling_bin, obj578_aluminum_recycling_b, obj579_storage_area, obj580_storage_area, obj581_wooden_bin, obj582_wooden_bin, obj583_garbage, obj584_plastic_shards, obj585_glass_canister_logo, obj586_glass_canister_tape, obj587_pile_of_aluminum_can, obj588_can, obj589_flattened_can, obj590_aluminum_canister_lo, obj591_aluminum_canister_ta, obj592_shelter, obj593_shelter, obj595_fingerlike_reeds, obj596_creatures, obj597_broad_leaved_plants, obj599_patch_of_level_surfa, obj600_pattern, obj601_coral, obj602_patch_of_level_surfa, obj603_coral_reef, obj606_gap, obj614_shattered_pair_of_go, obj615_black_neoprene_strap, obj616_wax, obj617_marker, obj627_trash_heap, obj635_breath, obj642_tanker, obj643_hotels, obj644_message, obj645_compass_rose, obj646_dragon_sculpture, obj647_life, obj648, obj649_dragon_s_shells, obj650_dragon_s_beak, obj651_dragon_s_mouth, obj652_the_dragon_s_eyes, obj653_dragon_s_hands, obj654_dragon_s_arms, obj655_dragon_s_legs, obj656_dragon_s_feet, obj657_dragon_s_back, obj658_dragon_s_belly, obj659_dragon_s_tail, obj660_dragon_s_wings, obj661_dragon_s_head, obj663_band, obj664_smoke, obj665_snacks, obj666_the_vendor, obj668_orange_shirt, obj669_vendor_s_shirt_pocke, obj670_base, obj671_black_knob, obj672_valve_handle, obj673_pail, obj674_waving_girl, obj675_the_old_man, obj677_the_old_man, obj678_burlap_sack, obj679_clothes, obj680_fishing_rod, obj681_reel, obj682_line, obj683_tackle_box, obj684_fish, obj686_paste, obj687_people, obj688_dinghy, obj689_job, obj690_New_York, obj691_Savannah, obj692_Esmerelda, obj693_kids, obj694_ghosts, obj700_coarse_rope, obj701_grotto, obj702_voices, obj703_oar_paddles_paddle_o, obj706_Hints, obj709_What_are_my_goals_, obj710_Getting_a_shovel, obj711_Getting_treasure, obj712_Getting_the_maintena, obj713_Getting_on_the_enclo, obj714_Getting_the_stave, obj715_Getting_the_boiler_f, obj716_Getting_the_boiler_o, obj717_Getting_the_crab_out, obj718_Getting_the_conch, obj719_Getting_better_eyewe, obj720_Getting_down_deep, obj721_Getting_a_mite_to_th, obj722_Getting_a_glass_mite, obj723_Getting_the_shiny_ob, obj724_Getting_the_key_from, obj725_Getting_the_sieve, obj726_Getting_the_key_from, obj727_Getting_the_key_from, obj728_Goals_rewards]
;

numObj: class80
;

strObj: class81
;

fun24: function(arg1) {
    local local1 = fun4(arg1.contents), local2, local3, local4;

    if (isclass(arg1, class215) && length(arg1.prop502) > 0 && arg1.prop131) {
        local4 = length(arg1.prop502);
        local2 = arg1.prop502[1];
        if (local4 > 1) {
            local3 = arg1.prop502[2];
        }
        "\n\t";
        if (local4 == 1) {
            if (isclass(Me.location, obj216)) {
                "\^<<arg1.thedesc>> waves in the current, anchored to <<local2.thedesc>>.  ";
            } else {
                "\^<<arg1.thedesc>> dangles limply from <<local2.thedesc>>.  ";
            }
        } else if (isclass(local2, class33) && !isclass(local3, class33) || isclass(local3, class33) && !isclass(local2, class33)) {
            caps();
            if (isclass(local2, class33)) {
                local3.thedesc;
            } else {
                local2.thedesc;
            }
            " hangs from ";
            if (isclass(local2, class33)) {
                local2.thedesc;
            } else {
                local3.thedesc;
            }
            " by <<arg1.thedesc>>.  ";
        } else {
            "\^<<local2.thedesc>> is joined to <<local3.thedesc>> by <<arg1.thedesc>>.  ";
        }
    } else if (local1 > 0) {
        if (arg1.prop133 || arg1.prop503) {
            if (!arg1.prop134) {
                if (isclass(arg1.location, obj217)) {
                    "\n\t\^<<fun7(arg1)>> rest<<(local1 > 1 ? "" : "s")>> lightly <<arg1.prop149>>  <<arg1.thedesc>>, swaying with the currents.  ";
                } else {
                    "\n\tSitting <<arg1.prop149>> <<arg1.thedesc>> is <<fun7(arg1)>>.  ";
                }
            }
        } else if (arg1.prop135 && !arg1.prop136) {
            "\n\t\^<<arg1.thedesc>> seems to contain <<fun7(arg1)>>.  ";
        }
    }
    if (arg1.prop135 && !arg1.prop136) {
        fun25(arg1);
    }
}

fun25: function(arg1) {
    local local1, local2, local3, local4;

    local1 = arg1.contents;
    local3 = length(local1);
    local2 = 1;
  label4873:
    if (local2 <= local3) {
        local4 = local1[local2];
        if (local4.prop137 && local4.prop135 && !local4.prop136) {
            fun24(local4);
        }
        local2 = local2 + 1;
        goto label4873;
    }
}

fun26: function(arg1, arg2) {
    local local1;

    if (length(obj20.prop484)) {
        local1 = obj20.prop484[1];
        obj20.prop484 = cdr(obj20.prop484);
    } else if (Me.location.prop485) {
        local1 = Me.location.prop485;
    } else {
        local1 = obj20.prop486;
    }
    setscore('{ ' + local1 + ' }');
}

class class27: object
;

class class28: object
;

class class29: class74
    prop169 = { return self.prop124; }

    prop135 = { return self.prop124; }

    prop178 = true

    prop167 = {
        caps();
        self.thedesc;
        if (self.prop124) {
            " is open. ";
            pass prop167;
        } else {
            " is closed. ";
            if (isclass(self, class75)) {
                pass prop167;
            }
        }
    }

    prop124 = true

    verDoAction156_open(arg1) = {
        if (self.prop124) {
            caps();
            self.thedesc;
            " is already open! ";
        }
    }

    doAction156_open(arg1) = {
        if (fun4(self.contents)) {
            "Opening ";
            self.thedesc;
            " reveals ";
            fun7(self);
            ". ";
        } else {
            "Opened. ";
        }
        self.prop124 = true;
    }

    verDoAction17_close(arg1) = {
        if (!self.prop124) {
            caps();
            self.thedesc;
            " is already closed! ";
        }
    }

    doAction17_close(arg1) = {
        "Closed. ";
        self.prop124 = nil;
    }

    verIoAction13_in(arg1) = {
        if (!self.prop124) {
            caps();
            self.thedesc;
            " is closed. ";
        }
    }

    verDoAction26_look_in(arg1) = {
        if (!self.prop124 && !isclass(self, class75)) {
            "It's closed. ";
        }
    }
;

fun30: function(arg1) {
    local local1 = [], local2, local3, local4;

    if (!isclass(arg1, class29) || isclass(arg1, class29) && arg1.prop124 || arg1.prop135) {
        local3 = arg1.contents;
        local4 = length(local3);
        local1 += local3;
        local2 = 1;
      label5716:
        if (local2 <= local4) {
            local1 += fun30(local3[local2]);
            ++local2;
            goto label5716;
        }
    }
    return local1;
}

class class31: class270
    prop665 = 0

    prop498 = { }

    prop500 = { }

    prop511 = "set"

    prop682 = 'cement'

    prop683 = "It looks about how you'd expect it to look.  "

    prop692 = { return obj271_sky.prop167; }

    prop693 = { "However, it's best not to be wandering around naked, so you put them back on.  "; }

    prop527 = { say(self.prop694[rand(length(self.prop694))]); }

    prop694 = ['You can hear the laughter of young children somewhere in the near distance.  ', 'You can hear the raucous shrieking of gulls somewhere nearby.  ', 'You can hear the ever present hiss and fizzle of the foaming surf.  ', 'The sound of steel drums drifts from somewhere far down the beach.  ', 'A mild wind dances over the sand in soft shoes.  ']

    prop521 = {
        "You inhale deeply, filling your lungs with the ocean air.  Ahh!  The early  evening breeze carries many scents.  ";
        say(self.prop695[rand(length(self.prop695))]);
    }

    prop695 = ['The salty tang of brine fills your nostrils.  ', 'Your nose is tickled by the coppery scent of sand.  ', 'The strong, sweet smell of coconut oil brings you back to the sunny days of childhood.  ', 'You catch a delicious hint of barbecued meat.  Someone must be having a cookout.  ', 'You catch the pungent, sickly sweet smell of something decaying nearby.  ']

    prop696 = [obj85_dig, obj283_bury, takeVerb, obj90, obj129_stand, obj89_wear, obj92, obj142_lock, obj128_stand_on, obj87, obj88, obj144, obj92, obj94, obj95_close, obj73, obj110_sit_on, obj112_lie_on, obj71, obj113, obj121, obj122, obj126, obj131, obj132, obj135_move, obj142_lock, obj143_unlock, obj157, obj146_poke, obj147_touch, obj282_lift, obj281_stack, obj280_dance, obj279_tap, obj278_catch, obj123, obj277_dig_for, obj276_kick, obj275_peel, obj274_uncover, obj273, obj272_pry, obj124, obj107_turn_on, obj108_turn_off, obj143_unlock]

    roomAction(arg1, arg2, arg3, arg4, arg5) = {
        local local1;

        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            if (obj212_brick.location == Me) {
                local1 = obj212_brick;
            } else {
                local1 = obj213_pail;
            }
            if (arg3 != local1 && find(self.prop696, arg2) != nil) {
                "Not while you're carrying that <<local1.sdesc>>.  ";
                exit;
            }
        } else if (arg2 == obj133 && arg3 != strObj) {
            "You should say what you want to say in double quotes, for example,  SAY \"HELLO\".   ";
            exit;
        } else {
            pass roomAction;
        }
    }

    prop638(arg1) = { return nil; }

    prop306 = {
        "Decided to grow wings, have you?  ";
        fun226(['Well, forget it.  ', 'Darn straight.  ', 'You just keep thinking about it then.  ']);
    }

    prop307 = {
        "Going to dig a hole to China, are you?  ";
        fun226(['But you\'d burn up at the earth\'s fiery core!  ', 'Just as well, you\'d only burn up at the earth\'s fiery core.  ', 'Ok, you hold onto that thought, then.  ']);
    }

    prop295 = {
        local local1 = [], local2, local3;

        local1 = fun18(Me.location) + obj20.prop148;
        if (length(local1)) {
            local2 = 1;
          label7773:
            if (local2 <= length(local1)) {
                local3 = local1[local2];
                if (!local3.prop293 && local3 != self) {
                    local3.prop295;
                }
                ++local2;
                goto label7773;
            }
        }
    }

    prop152(arg1) = {
        local local1, local2, local3, local4;

        if (length(arg1.prop502) > 0 && !isclass(arg1, class215) && arg1 != obj225_goggles) {
            arg1 = arg1.prop502[1];
        }
        local2 = length(arg1.prop502);
        if (local2 > 0 && arg1 != obj225_goggles) {
            local1 = true;
        }
        if (local2 > 0) {
            local3 = arg1.prop502[1];
        }
        if (local2 > 1) {
            local4 = arg1.prop502[2];
        }
        "You toss ";
        if (local2 > 1) {
            "<<local4.thedesc>>, ";
        }
        if (local1) {
            "<<local3.thedesc>> and ";
        }
        "<<arg1.thedesc>> to the ground.  ";
        arg1.moveInto(self);
    }

    prop151(arg1) = {
        local local1, local2, local3, local4, local5;

        if (arg1) {
            "\n";
            self.prop167;
            local1 = self.contents;
            local4 = length(local1);
            local3 = 1;
          label8179:
            if (local3 <= local4) {
                local2 = local1[local3];
                if (local2.prop137) {
                    local2.prop299;
                }
                local3 = local3 + 1;
                goto label8179;
            }
        }
        if (obj20.prop490) {
            "\n\t";
            self.prop666;
        }
        "\n";
        if (fun4(self.contents)) {
            "\tYou see ";
            fun7(self);
            if (isclass(self, obj228)) {
                ", bobbing on the waves.	";
            } else if (isclass(self, obj284)) {
                ", lying in the sand.  ";
            } else if (isclass(self, obj217)) {
                ", drifting in the mud.  ";
            } else {
                " here.	";
            }
        }
        "\n\t";
        fun8(self);
        "\n";
        if (isclass(self, obj217) && self.prop697 != nil) {
            local5 = fun4(self.prop697.contents);
            if (self.prop697 != nil && local5 > 0) {
                "\n\tYou can see the dark silhoutte";
                if (local5 > 1) {
                    "s";
                }
                " of ";
                fun7(self.prop697);
                ", floating on the surface above you.  \n";
            }
        }
        local1 = self.contents;
        local4 = length(local1);
        local3 = 1;
      label8644:
        if (local3 <= local4) {
            local2 = local1[local3];
            if (local2.prop300) {
                if (local2 != Me) {
                    "\n";
                    local2.prop301;
                }
            }
            local3 = local3 + 1;
            goto label8644;
        }
    }

    prop698 = [obj287___Damp_Sand__North_o, obj286___Damp_Sand__South_o, obj285___Damp_Sand__Beneath]

    prop127 = {
        local local1, local2, local3, local4, local5;

        local5 = [];
        local3 = fun18(self);
        local1 = 1;
        local2 = length(local3);
      label8780:
        if (local1 <= local2) {
            local4 = local3[local1];
            if (isclass(local4, class218) && local4.prop501) {
                if (local4.prop699) {
                    local5 += obj288_salt_water;
                } else {
                    local5 += class289_sand;
                }
            } else if (isclass(local4, class290)) {
                if (local4.prop699) {
                    local5 += obj291_ocean_water;
                } else {
                    local5 += obj292_beach_sand;
                }
            }
            local1++;
            goto label8780;
        }
        return local5;
    }

    verDoAction165_send_me(arg1) = { }

    doAction165_send_me(arg1) = { arg1.prop161(self); }
;

class class32: class258
    statusLine = {
        "<<self.location.sdesc>>, (";
        if (Me.prop562) {
            "buried in the sand)\n";
        } else if (isclass(self, class259)) {
            "<<self.prop661>> <<self.prop149>> <<self.thedesc>>)\n";
        } else {
            "<<self.prop149>> <<self.thedesc>>.  ";
        }
    }

    prop295 = {
        self.prop293 = true;
        obj20.prop497 - self;
    }
;

class class33: class252
    verDoAction49_off(arg1, arg2) = { "%You% can't throw <<self.thedesc>>."; }

    verDoAction50_over(arg1, arg2) = { "%You% can't throw <<self.thedesc>>."; }

    prop546(arg1, arg2) = { "%You% can't throw <<self.thedesc>>."; }

    verDoAction53_on(arg1, arg2) = { "%You% can't throw <<self.thedesc>>."; }

    verDoAction7_through(arg1, arg2) = { "%You% can't throw <<self.thedesc>>."; }

    verDoAction48(arg1) = { "%You% can't throw <<self.thedesc>>."; }

    verDoAction122_drop(arg1) = { "%You% can't drop <<self.thedesc>>."; }
;

class class34: class42
    prop133 = true

    prop167 = {
        if (fun4(self.contents)) {
            "On ";
            self.thedesc;
            " %you% see%s% ";
            fun7(self);
            ". ";
        } else {
            "There's nothing on ";
            self.thedesc;
            ". ";
        }
    }

    verIoAction121_drop_on(arg1) = { }

    ioAction121_drop_on(arg1, arg2) = { arg2.doAction121_drop_on(arg1, self); }
;

class class35: class260
    prop306 = {
        "You get back on your feet.  ";
        Me.moveInto(self.location);
    }

    prop638(arg1) = {
        if (arg1.location == self) {
            "You decide that you should probably get <<self.prop150>> <<self.thedesc>> first.  ";
            return true;
        } else {
            return nil;
        }
    }

    prop662 = {
        "(Getting <<self.prop150>> <<self.thedesc>> first.)  \b";
        Me.moveInto(Me.location.location);
    }

    prop302 = {
        self.prop662;
        return self.location.prop302;
    }

    prop303 = {
        self.prop662;
        return self.location.prop303;
    }

    prop304 = {
        self.prop662;
        return self.location.prop304;
    }

    prop305 = {
        self.prop662;
        return self.location.prop305;
    }

    prop308 = {
        self.prop662;
        return self.location.prop308;
    }

    prop309 = {
        self.prop662;
        return self.location.prop309;
    }

    prop310 = {
        self.prop662;
        return self.location.prop310;
    }

    prop311 = {
        self.prop662;
        return self.location.prop311;
    }

    verDoAction4_exit(arg1) = { self.verDoAction151_get_out_of(arg1); }

    doAction4_exit(arg1) = { self.doAction151_get_out_of(arg1); }
;

obj36_inspect: class82
    verb = 'l at' 'x' 'examine' 'inspect' 'look at'

    sdesc = "inspect"

    validDo(arg1, arg2, arg3) = { return arg2.isVisible(arg1); }

    doAction = 'Action0_inspect'
;

obj37: class360_ask
    verb = 'ask'

    ioAction(obj308_for) = 'Action1_for'
;

obj38_tell: class82
    verb = 'tell'

    sdesc = "tell"

    prepDefault = obj84_about

    validIo(arg1, arg2, arg3) = { return arg3 == 1; }

    validIoList = nil

    ioDefault(arg1, arg2) = {
        if (arg2 == obj84_about) {
            return [];
        } else {
            return arg1.contents + arg1.location.contents;
        }
    }

    ioAction(obj84_about) = 'Action2_tell_about'
;

class class39_bed: class35
    prop154 = nil

    prop164 = true

    sdesc = "bed"

    prop149 = "on"

    prop150 = "out of"

    doAction39_lie_on(arg1) = {
        "Okay, %you're% now lying on <<self.thedesc>>.";
        arg1.prop161(self);
    }
;

class class40: class229
    prop507 = nil

    prop141 = 2

    prop508 = 3

    prop509 = nil

    prop510 = nil

    prop504 = nil

    prop293 = nil

    prop295 = {
        self.prop293 = true;
        obj20.prop497 - self;
        self.prop505 += Me;
    }

    prop149 = "on"

    prop150 = "off of"

    prop511 = "toss"

    prop502 = []

    multisdesc = {
        caps();
        self.thedesc;
    }

    prop512 = { return self.sdesc; }

    prop513 = { return self.thedesc; }

    prop514 = { return self.adesc; }

    prop515 = { return [] + self; }

    verDoAction83_smell(arg1) = { }

    doAction83_smell(arg1) = {
        local local1 = Me.location;

        if (isclass(local1, obj217)) {
            "You start to inhale... and your sinuses fill with brine!  Nose and eyes stinging,  you rise, kicking and struggling, to the surface, where you gasp and choke  until your sinuses clear.  \b";
            obj20.prop489 = local1;
            Me.moveInto(local1.prop518);
            Me.location.lookAround(true);
            obj20.prop491 = nil;
            Me.prop519(&prop520);
        } else {
            self.prop521;
        }
    }

    prop521 = { "\^<<self.thedesc>> <<(self.prop509 ? "smell" : "smells")>> about  how you'd expect <<(self.prop509 ? "them" : "it")>> to."; }

    verDoAction111_taste(arg1) = { }

    doAction111_taste(arg1) = { self.prop524; }

    prop524 = { "\^<<self.thedesc>> <<(self.prop509 ? "tastes" : "taste")>> about  how you'd expect <<(self.prop509 ? "them" : "it")>> to."; }

    verDoAction73_touch(arg1) = {
        if (!self.prop179(Me)) {
            "You can't touch <<self.thedesc>> right now.  ";
        }
    }

    doAction73_touch(arg1) = { return self.prop525; }

    prop525 = { "\^<<self.thedesc>> <<(self.prop509 ? "feel" : "feels")>> about  how you'd expect <<(self.prop509 ? "them" : "it")>> to."; }

    verDoAction95_tap(arg1) = { "Nothing unusual happens.  "; }

    prop527 = { "\^<<self.thedesc>> isn't making any noise.  "; }

    verDoAction115_listen_to(arg1) = { }

    doAction115_listen_to(arg1) = { self.prop527; }

    prop530(arg1) = { "You'll have to find that on your own."; }

    prop531 = []

    prop505 = []

    ioAction136_ask_about(arg1, arg2) = {
        if (!self.prop293) {
            "You don't know of any such thing.  ";
        } else if (find(self.prop531, arg2)) {
            arg2.prop532;
        } else {
            pass ioAction136_ask_about;
        }
    }

    verIoAction1_for(arg1) = { }

    verDoAction1_for(arg1, arg2) = { "\^<<self.thedesc>> ignores you.  "; }

    ioAction1_for(arg1, arg2) = { arg2.doAction1_for(arg1, self); }

    doAction122_drop(arg1) = {
        local local1 = arg1.location;

        self.prop537(local1);
        local1.prop152(self);
    }

    prop537(arg1) = {
        if (isclass(self.location, class218)) {
            "(First fishing <<self.thedesc>> from <<self.location.thedesc>>.)  \b";
        }
    }

    prop538 = {
        if (self.location != Me) {
            "(First taking <<self.thedesc>> from <<self.location.thedesc>>.)  \b";
        }
    }

    verDoAction49_off(arg1, arg2) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying ";
            self.thedesc;
            ". ";
        } else {
            self.prop177(arg1);
        }
    }

    doAction49_off(arg1, arg2) = { self.doAction122_drop(arg1); }

    verDoAction50_over(arg1, arg2) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying <<self.thedesc>>. ";
        } else {
            self.prop177(arg1);
        }
    }

    doAction50_over(arg1, arg2) = { self.doAction122_drop(arg1); }

    verDoAction7_through(arg1, arg2) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying <<self.thedesc>>. ";
        } else {
            self.prop177(arg1);
        }
    }

    verIoAction7_through(arg1) = { "You can't throw anything through <<self.thedesc>>.  "; }

    ioAction7_through(arg1, arg2) = { self.verIoAction7_through(arg1); }

    verDoAction53_on(arg1, arg2) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying <<self.thedesc>>.  ";
        } else {
            self.prop177(arg1);
        }
    }

    doAction53_on(arg1, arg2) = {
        local local1 = arg1.location;

        self.prop537(local1);
        "You toss <<self.thedesc>>.  It bounces off <<arg2.thedesc>> and falls to the ground.  ";
        outhide(true);
        arg2.location.prop152(self);
        outhide(nil);
    }

    verIoAction53_on(arg1) = {
        if (arg1.prop125(self)) {
            "%You% could at least drop ";
            self.thedesc;
            " first. ";
        } else if (isclass(self.location, class218)) {
            "You'll have to take <<self.thedesc>> out of <<self.location.thedesc>> first.  ";
        }
    }

    verDoAction48(arg1) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying <<self.thedesc>>.  ";
        } else {
            self.prop177(arg1);
        }
    }

    doAction48(arg1) = { self.doAction122_drop(arg1); }

    verDoAction138_throw_to(arg1, arg2) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying <<self.thedesc>>.  ";
        } else {
            self.prop177(arg1);
        }
    }

    doAction138_throw_to(arg1, arg2) = { "It seems unlikely that <<arg2.thedesc>> would accept <<self.thedesc>>.  "; }

    prop546(arg1, arg2) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying <<self.thedesc>>. ";
        } else {
            self.prop177(arg1);
        }
    }

    prop547(arg1, arg2) = { self.doAction122_drop(arg1); }

    prop548(arg1) = {
        if (arg1.prop125(self)) {
            "%You% could at least drop <<self.thedesc>> first. ";
        }
    }

    prop549(arg1, arg2) = { arg2.prop547(arg1, self); }

    verDoAction90_kick(arg1) = { self.verDoAction43_attack_with(arg1, obj230_feet); }

    doAction90_kick(arg1) = { self.doAction43_attack_with(arg1, obj230_feet); }

    verDoAction41(arg1) = { self.verDoAction43_attack_with(arg1, obj231_hands); }

    doAction41(arg1) = { self.doAction43_attack_with(arg1, obj231_hands); }

    verDoAction43_attack_with(arg1, arg2) = { "Though the stress of your regular life might sometimes lead you to the brink of violence, your week in Savannah has embued you with a new sense of inner peace.  "; }

    doAction43_attack_with(arg1, arg2) = { }

    verIoAction43_attack_with(arg1) = { }

    ioAction43_attack_with(arg1, arg2) = { arg2.doAction43_attack_with(arg1, self); }

    verIoAction169_empty_on(arg1) = { }

    ioAction169_empty_on(arg1, arg2) = { arg2.doAction169_empty_on(arg1, self); }

    verIoAction121_drop_on(arg1) = { "There's no good surface on <<self.thedesc>>.  "; }

    verDoAction121_drop_on(arg1, arg2) = {
        if (inherited.verDoAction13_in(arg1, arg2)) {
        } else if (!arg1.prop125(self)) {
            "You're not holding <<arg2.thedesc>>.  ";
        }
    }

    doAction121_drop_on(arg1, arg2) = {
        self.moveInto(arg2);
        "You <<arg2.prop511>> <<self.thedesc>> <<arg2.prop149>> <<arg2.thedesc>>.  ";
    }

    verIoAction13_in(arg1) = { "\^<<self.thedesc>> is not a container.  "; }

    verDoAction13_in(arg1, arg2) = {
        if (inherited.verDoAction13_in(arg1, arg2)) {
        } else if (!arg1.prop125(self)) {
            "You're not holding <<arg2.thedesc>>.  ";
        }
    }

    doAction13_in(arg1, arg2) = {
        self.moveInto(arg2);
        "You <<arg2.prop511>> <<self.thedesc>> <<arg2.prop149>> <<arg2.thedesc>>.  ";
        if (isclass(arg2, class218) && arg2.prop504 == 'salt water') {
            self.prop557;
        }
    }

    doAction123_give_to(arg1, arg2) = {
        self.moveInto(arg2);
        "You hand <<self.thedesc>> to <<arg2.thedesc>>.  ";
    }

    verDoAction112_eat(arg1) = {
        caps();
        self.thedesc;
        self.prop509 ? " don't " : " doesn't ";
        "appear to be edible. ";
    }

    verDoAction113_drink(arg1) = {
        caps();
        self.thedesc;
        self.prop509 ? " don't " : " doesn't ";
        "appear to be potable. ";
    }

    verIoAction44_from(arg1) = {
        caps();
        self.thedesc;
        self.prop509 ? " don't " : " doesn't ";
        "appear to contain  anything potable. ";
    }

    verDoAction44_from(arg1, arg2) = {
        caps();
        self.thedesc;
        self.prop509 ? " don't " : " doesn't ";
        "appear to be potable. ";
    }

    verDoAction114_drink_from(arg1) = {
        caps();
        self.thedesc;
        self.prop509 ? " don't " : " doesn't ";
        "appear to contain  anything potable. ";
    }

    verIoAction149_detach_from(arg1) = { }

    ioAction149_detach_from(arg1, arg2) = { arg2.doAction149_detach_from(arg1, self); }

    verDoAction150_detach(arg1) = { "\^<<self.thedesc>> isn't attached to anything it can be detached from.  "; }

    doAction150_detach(arg1) = { self.verDoAction150_detach; }

    verDoAction149_detach_from(arg1, arg2) = { "\^<<self.thedesc>> can't be detached from <<arg2.thedesc>>.  "; }

    doAction149_detach_from(arg1, arg2) = { self.verDoAction149_detach_from(arg1, arg2); }

    verIoAction148_attach_to(arg1) = { }

    ioAction148_attach_to(arg1, arg2) = { "You can't attach <<arg2.thedesc>> to <<self.thedesc>>.  "; }

    verDoAction148_attach_to(arg1, arg2) = { "\^<<self.thedesc>> can't be attached to <<arg2.thedesc>>.  "; }

    doAction148_attach_to(arg1, arg2) = { self.verDoAction148_attach_to(arg1, arg2); }

    verIoAction154_take_off_from(arg1) = { }

    ioAction154_take_off_from(arg1, arg2) = { arg2.doAction154_take_off_from(arg1, self); }

    verDoAction154_take_off_from(arg1, arg2) = { "You can't remove <<self.thedesc>> from <<arg2.thedesc>>.  "; }

    doAction154_take_off_from(arg1, arg2) = { self.verDoAction154_take_off_from(arg1, arg2); }

    prop177(arg1) = {
        local local1 = self.location;

        if (obj212_brick.location == Me && self != obj212_brick || obj213_pail.location == Me && obj213_pail.prop501 && self != obj213_pail) {
            Me.prop561;
        } else if (Me.prop562) {
            "Not while you're buried under all that sand!  ";
        } else if (isclass(local1, class74) && !Me.prop125(local1) && local1.prop563) {
            "You'll have to pick up <<local1.thedesc>> that <<self.thedesc>> is in, first.  ";
        } else {
            pass prop177;
        }
    }

    verIoAction146_build_in(arg1) = { "You can't build anything in <<self.thedesc>>.  "; }

    ioAction146_build_in(arg1, arg2) = { self.verIoAction146_build_in(arg1); }

    verDoAction101_bury_in(arg1, arg2) = {
        if (!isclass(arg2, class232)) {
            "You can't bury <<self.thedesc>> in <<arg2.thedesc>>.  ";
        }
    }

    doAction101_bury_in(arg1, arg2) = { "You bury <<self.thedesc>> in the <<(obj233_sandy_beach.location == Me.location ? " sand" : " mud")>>.  But you don't want to lose track of it, so you dig it up again.  "; }

    verDoAction100_bury(arg1) = { self.verDoAction101_bury_in(arg1, obj55_ground); }

    doAction100_bury(arg1) = { self.doAction101_bury_in(arg1, obj55_ground); }

    verIoAction101_bury_in(arg1) = { "You can't bury anything in <<self.thedesc>>.  "; }

    verDoAction10_dig_in(arg1, arg2) = { "Huh?  "; }

    verDoAction8_dig(arg1) = { self.verDoAction9_dig_with(arg1, obj231_hands); }

    verDoAction9_dig_with(arg1, arg2) = { "\^<<self.thedesc>> isn't something you can dig in.  "; }

    verIoAction10_dig_in(arg1) = { }

    ioAction10_dig_in(arg1, arg2) = {
        if (isclass(arg2, obj234_shallow_hole) || arg2 == obj235_a_hole) {
            "You can't dig a hole in <<self.thedesc>>.  ";
        } else {
            "Huh?  ";
        }
    }

    verIoAction92_dig_for_in(arg1) = { "\^<<self.thedesc>> isn't something you can dig in.  "; }

    ioAction92_dig_for_in(arg1, arg2) = { self.verIoAction92_dig_for_in(arg1); }

    verDoAction91_dig_for(arg1) = { self.verDoAction92_dig_for_in(arg1, obj55_ground); }

    doAction91_dig_for(arg1) = { self.doAction92_dig_for_in(arg1, obj55_ground); }

    verDoAction92_dig_for_in(arg1, arg2) = { "It's unlikely that you'd find <<self.thedesc>> by digging for it.  "; }

    verDoAction93_dig_for_with(arg1, arg2) = { "It's unlikely that you'd find <<self.thedesc>> by digging for it.  "; }

    verIoAction9_dig_with(arg1) = { "\^<<self.thedesc>> doesn't make a very good shovel.  "; }

    ioAction9_dig_with(arg1, arg2) = { self.verIoAction9_dig_with(arg1); }

    verIoAction93_dig_for_with(arg1) = { "\^<<self.thedesc>> doesn't make a very good shovel.  "; }

    ioAction93_dig_for_with(arg1, arg2) = { self.verIoAction93_dig_for_with(arg1); }

    verDoAction144_dig(arg1) = { "\^<<self.thedesc>> doesn't make a very good shovel.  "; }

    doAction144_dig(arg1) = { self.verDoAction144_dig(arg1); }

    verDoAction96_dance(arg1) = { "You can't dance <<self.prop149>> <<self.thedesc>>.  "; }

    verDoAction125_buy(arg1) = {
        if (obj222_the_vendor.location != Me.location) {
            "Even if it was for sale, who exactly were you planning on buying it from?  ";
        } else {
            obj222_the_vendor.verDoAction1_for(Me, self);
        }
    }

    doAction125_buy(arg1) = { "\"I can't sell you that.\"  "; }

    verIoAction126_buy_from(arg1, arg2) = { "It's unlikely that <<self.thedesc>> would be able to take,  much less spend, your money.  "; }

    ioAction126_buy_from(arg1) = { }

    verDoAction126_buy_from(arg1, arg2) = { }

    verDoAction130_animate(arg1) = { "Where do you think you are, the Magical Land of Oz?  "; }

    verDoAction128_pay(arg1) = { "It's unlikely that <<self.thedesc>> would be able to take, much less spend, your money.  "; }

    verDoAction129_pay_for(arg1, arg2) = { self.verDoAction128_pay(arg1); }

    verIoAction129_pay_for(arg1) = { }

    verDoAction127_pay_for(arg1) = { self.verDoAction125_buy(arg1); }

    doAction127_pay_for(arg1) = { obj222_the_vendor.ioAction123_give_to(arg1, obj236_some_money); }

    verDoAction118_drown(arg1) = { "Now you're just being silly.  "; }

    doAction118_drown(arg1) = { "Now you're just being silly.  "; }

    verDoAction120_drown_in(arg1) = { "Now you're just being silly.  "; }

    verIoAction119_drown_in(arg1) = { "Now you're just being silly.  "; }

    verDoAction119_drown_in(arg1, arg2) = { "Now you're just being silly.  "; }

    verDoAction116_swim_in(arg1) = { "You realize the futility of trying to swim in <<self.thedesc>>?  "; }

    verDoAction99_lift(arg1) = { self.verDoAction64_look_under(arg1); }

    doAction99_lift(arg1) = { self.doAction64_look_under(arg1); }

    verDoAction97_stack(arg1) = { "You can't stack up <<self.thedesc>>."; }

    verDoAction110_press(arg1) = { "Nothing happens.  "; }

    verDoAction143_climb(arg1) = { "You can't climb <<self.thedesc>>.  "; }

    verDoAction56_yell_at(arg1) = {
        if (isclass(Me.location, obj217)) {
            "You open your mouth and let loose an unrestrained scream that echoes away into the ocean and sends a glittering swarm of bubbles surface ward.  ";
        } else if (isclass(Me.location, obj237)) {
            "You let out a scream that reverberates through the hollow chamber and sets your ears ringing.  ";
        } else {
            "You throw back your head and let out a roar that rolls across the beach, startling several passersby.  ";
        }
    }

    verDoAction89_peel(arg1) = { "You can't peel <<self.thedesc>>.  "; }

    verIoAction75_with(arg1) = {
        if (self.prop611) {
        } else {
            "You can't search anything with <<self.thedesc>>.  ";
        }
    }

    ioAction75_with(arg1, arg2) = { self.verIoAction75_with(arg1); }

    verDoAction75_with(arg1, arg2) = { self.verDoAction157_search(arg1); }

    doAction75_with(arg1, arg2) = { self.doAction157_search(arg1); }

    verIoAction85_pry_with(arg1) = {
        if (self.prop611) {
        } else {
            "\^<<self.thedesc>> doesn't make a very good crowbar.  ";
        }
    }

    ioAction85_pry_with(arg1, arg2) = { self.verIoAction85_pry_with(arg1); }

    verDoAction85_pry_with(arg1, arg2) = { "You realize the futility of trying to pry open <<self.thedesc>> with <<arg2.thedesc>>.  "; }

    doAction85_pry_with(arg1, arg2) = { self.verDoAction85_pry_with(arg1, arg2); }

    verDoAction84_pry(arg1) = {
        if (arg1.prop125(obj238_crowbar)) {
            self.verDoAction85_pry_with(arg1, obj238_crowbar);
        } else {
            self.verDoAction85_pry_with(arg1, obj231_hands);
        }
    }

    doAction84_pry(arg1, arg2) = {
        if (arg1.prop125(obj238_crowbar)) {
            self.doAction85_pry_with(arg1, obj238_crowbar);
        } else {
            self.doAction85_pry_with(arg1, obj231_hands);
        }
    }

    verDoAction5_under(arg1, arg2) = { "You can't put anything under <<arg2.thedesc>>.  "; }

    verIoAction5_under(arg1) = { "You can't put anything under <<self.thedesc>>.  "; }

    verIoAction46_with(arg1) = {
        if (self.prop611) {
        } else {
            "You can't pull anything with <<self.thedesc>>.  ";
        }
    }

    ioAction46_with(arg1, arg2) = { self.verIoAction46_with(arg1); }

    verDoAction46_with(arg1, arg2) = { "You can't pull <<self.thedesc>>.  "; }

    doAction46_with(arg1, arg2) = { self.verDoAction46_with(arg1, arg2); }

    verIoAction16_with(arg1) = {
        if (self.prop611) {
        } else {
            "You can't open anything with <<self.thedesc>>.  ";
        }
    }

    ioAction16_with(arg1, arg2) = { self.verIoAction16_with(arg1); }

    verDoAction16_with(arg1, arg2) = { "You can't open <<self.thedesc>> with <<arg2.thedesc>>.  "; }

    doAction16_with(arg1, arg2) = { self.verDoAction16_with(arg1, arg2); }

    prop611 = {
        if (self.location != Me) {
            "You're not holding <<self.thedesc>>.  ";
            return true;
        } else {
            return nil;
        }
    }

    verIoAction23_with(arg1) = { "You can't pick up anything with <<self.thedesc>>.  "; }

    ioAction23_with(arg1, arg2) = { self.verIoAction23_with(arg1); }

    verDoAction23_with(arg1, arg2) = {
        if (self.location != obj239_boiler) {
            "\^<<self.thedesc>> isn't in anything that requires the use of <<arg2.thedesc>>  to retrieve it.  ";
        }
    }

    verIoAction6_against(arg1) = { }

    verDoAction6_against(arg1, arg2) = { "You don't need to place <<self.thedesc>> against <<arg2.thedesc>>.  "; }

    ioAction6_against(arg1, arg2) = { arg2.doAction6_against(arg1, self); }

    doAction6_against(arg1, arg2) = { self.verDoAction6_against(arg1, arg2); }

    cantReach(arg1) = {
        if (self.location == nil) {
            if (arg1.location.location) {
                arg1.location.prop638(arg1);
            }
            return;
        }
        if (!self.location.prop178 || self.location.prop124) {
            self.location.cantReach(arg1);
        } else {
            "%You%'ll have to open <<self.location.thedesc>> first. ";
        }
    }

    verDoAction36_turn_on(arg1) = { "\^<<self.thedesc>> <<(self.prop509 ? "aren't" : "isn't")>> something that  can be turned on or off.  "; }

    verDoAction37_turn_off(arg1) = { "\^<<self.thedesc>> <<(self.prop509 ? "aren't" : "isn't")>> something that  can be turned on or off.  "; }

    verDoAction47_read(arg1) = { "\^<<self.thedesc>> <<(self.prop509 ? "aren't" : "isn't")>> something that  can be read.  "; }

    verDoAction161_tan(arg1) = { "Now you're just being silly.  "; }

    verDoAction135_clean(arg1) = { "You consider the never-ending actions of the elements and decide not to bother. "; }

    doAction134_clean_with(arg1, arg2) = { "You consider the never-ending actions of the elements and decide not to bother. "; }

    verDoAction86(arg1) = {
        if (arg1.prop125(obj240_sieve)) {
            self.verDoAction87_with(arg1, obj240_sieve);
        } else {
            self.verDoAction87_with(arg1, obj231_hands);
        }
    }

    verDoAction87_with(arg1, arg2) = { "\^<<self.thedesc>> <<(self.prop509 ? "aren't" : "isn't")>> something that can be sifted.  "; }

    verIoAction87_with(arg1) = { "\^<<self.thedesc>> <<(self.prop509 ? "aren't" : "isn't")>> something you can use to sift things with.  "; }

    verDoAction162_feed(arg1) = { "It seems unlikely that <<self.thedesc>> would eat anything you might have to offer.  "; }

    verDoAction163_feed_to(arg1, arg2) = { }

    verIoAction163_feed_to(arg1) = { self.verDoAction162_feed(arg1); }

    verDoAction164_gimme(arg1) = {
        if (self.prop137) {
            "Sorry, but <<self.thedesc>> <<(self.prop509 ? "are" : "is")>> a fixed item.  ";
        }
    }

    doAction164_gimme(arg1) = {
        "You hear a distant clap of thunder from  <<(self.location ? self.location.thedesc : "nowhere in particular")>>  as air rushes in to fill the gap left by <<self.thedesc>>.  ";
        self.moveInto(arg1);
        if (!self.prop131) {
            self.prop131 = true;
        }
        "Ok, you now have <<self.thedesc>>.  ";
    }

    verDoAction166_ride(arg1) = { "\^<<self.thedesc>> can't be ridden.  "; }
;

Me: class61_you
;

class class42: class241
    prop649 = 0

    isVisible(arg1) = {
        if (self.location == nil) {
            return nil;
        } else if (isclass(Me.location, obj217) && Me.location == self.location.prop650) {
            return true;
        } else {
            pass isVisible;
        }
    }
;

class class43: class42
    prop129 = true

    doAction36_turn_on(arg1) = {
        local local1 = arg1.location.prop130;

        self.prop273 = true;
        "You switch on <<self.thedesc>>";
        if (arg1.location.prop130 && !local1) {
            ", lighting the area.\b";
            arg1.location.prop155(arg1);
        } else {
            ".";
        }
    }
;

class class44: class42
    verDoAction157_search(arg1) = { "%You%'ll have to be more specific about how %you% want%s% to search that. "; }

    prop274(arg1, arg2) = {
        local local1, local2, local3, local4;

        if (self.prop275) {
            local1 = [] + car(arg2);
            arg2 = cdr(arg2);
        } else {
            local1 = arg2;
            arg2 = nil;
        }
        if (length(local1) == 1) {
            setit(local1[1]);
        } else {
            setit(local1);
        }
        local2 = arg1;
        if (!self.prop276) {
            local2 = local2.location;
        }
        "%You% find%s% ";
        local4 = length(local1);
        local3 = 1;
      label21915:
        if (local3 <= local4) {
            local1[local3].adesc;
            if (local3 + 1 < local4) {
                ", ";
            } else if (local3 == 1 && local4 == 2) {
                " and ";
            } else if (local3 + 1 == local4 && local4 > 2) {
                ", and ";
            }
            local1[local3].moveInto(local2);
            local3 = local3 + 1;
            goto label21915;
        }
        if (self.prop276) {
            ", which %you% take%s%. ";
        } else {
            "! ";
        }
        if (arg2 != nil && length(arg2) == 0) {
            arg2 = nil;
        }
        return arg2;
    }

    prop275 = nil

    prop276 = true
;

class class45: class44
    prop145 = []

    verDoAction64_look_under(arg1) = { }

    doAction64_look_under(arg1) = {
        if (self.prop145 == nil) {
            "There's nothing else under <<self.thedesc>>. ";
        } else {
            self.prop145 = self.prop274(arg1, self.prop145);
        }
    }
;

class class46: class44
    prop147 = []

    verDoAction65_look_behind(arg1) = { }

    doAction65_look_behind(arg1) = {
        if (self.prop147 == nil) {
            "There's nothing else behind <<self.thedesc>>. ";
        } else {
            self.prop147 = self.prop274(arg1, self.prop147);
        }
    }
;

class class47: class44
    prop143 = []

    verDoAction157_search(arg1) = { }

    doAction157_search(arg1) = {
        if (self.prop143 == nil) {
            "There's nothing else in <<self.thedesc>>. ";
        } else {
            self.prop143 = self.prop274(arg1, self.prop143);
        }
    }

    verDoAction26_look_in(arg1) = {
        if (self.prop143 == nil) {
            pass verDoAction26_look_in;
        }
    }

    doAction26_look_in(arg1) = {
        if (self.prop143 == nil) {
            pass doAction26_look_in;
        } else {
            self.prop143 = self.prop274(arg1, self.prop143);
        }
    }
;

class class48: class42
    verDoAction47_read(arg1) = { }

    doAction47_read(arg1) = { self.prop168; }

    prop168 = { self.prop167; }
;

class class49: class294
    verDoAction112_eat(arg1) = {
        if (!arg1.prop125(self)) {
            "You don't have <<self.thedesc>>. ";
        } else if (isclass(Me.location, obj217)) {
            "You consider trying to eat <<self.thedesc>> while underwater, but  you suspect that it's going to take more effort than it's worth.  ";
        } else {
            self.prop177(arg1);
        }
    }
;

class class51: class33
    prop286 = 10

    prop287 = 1

    prop167 = {
        caps();
        self.thedesc;
        " can be turned to settings numbered from 1 to <<self.prop286>>. It's currently set to <<self.prop287>>. ";
    }

    verDoAction33_turn(arg1) = { }

    doAction33_turn(arg1) = { askio(obj52_to); }

    verDoAction31_turn_to(arg1, arg2) = { }

    doAction31_turn_to(arg1, arg2) = {
        if (arg2 == numObj) {
            if (numObj.value < 1 || numObj.value > self.prop286) {
                "There's no such setting! ";
            } else if (numObj.value != self.prop287) {
                self.prop287 = numObj.value;
                "Okay, it's now turned to ";
                say(self.prop287);
                ". ";
            } else {
                "It's already set to ";
                say(self.prop287);
                "! ";
            }
        } else {
            "I don't know how to turn ";
            self.thedesc;
            " to that. ";
        }
    }
;

obj52_to: class184
    preposition = 'to'

    sdesc = "to"
;

class class53: class33
    verDoAction34_switch(arg1) = { }

    doAction34_switch(arg1) = {
        self.prop273 = !self.prop273;
        "Okay, ";
        self.thedesc;
        " is now switched ";
        if (self.prop273) {
            "on";
        } else {
            "off";
        }
        ". ";
    }

    verDoAction36_turn_on(arg1) = {
        if (!arg1.location.prop130 && !arg1.prop125(self)) {
            "It's pitch black.";
        } else if (self.prop273) {
            "It's already turned on! ";
        }
    }

    doAction36_turn_on(arg1) = {
        self.prop273 = true;
        "Okay, it's now turned on. ";
    }

    verDoAction37_turn_off(arg1) = {
        if (!self.prop273) {
            "It's already turned off! ";
        }
    }

    doAction37_turn_off(arg1) = {
        self.prop273 = nil;
        "Okay, it's now turned off. ";
    }
;

class class54: class31
    prop130 = {
        local local1, local2, local3, local4;

        if (self.prop314) {
            return true;
        }
        local1 = obj20.prop315;
        local3 = length(local1);
        local4 = 1;
      label23916:
        if (local4 <= local3) {
            local2 = local1[local4];
            if (local2.prop126(self) && local2.prop130) {
                return true;
            }
            local4 = local4 + 1;
            goto label23916;
        }
        return nil;
    }

    roomAction(arg1, arg2, arg3, arg4, arg5) = {
        if (!self.prop130 && !arg2.prop316) {
            "%You% can't see a thing. ";
            exit;
        } else {
            pass roomAction;
        }
    }

    statusLine = {
        if (self.prop130) {
            pass statusLine;
        } else {
            "In the dark.";
        }
    }

    lookAround(arg1) = {
        if (self.prop130) {
            pass lookAround;
        } else {
            "It's pitch black. ";
        }
    }

    prop156 = {
        if (self.prop130) {
            pass prop156;
        } else {
            fun13();
            return nil;
        }
    }

    roomCheck(arg1) = {
        if (self.prop130 || arg1.prop316) {
            return true;
        } else {
            "It's pitch black.\n";
            return nil;
        }
    }
;

obj55_ground: class259, class28, class232
    noun = 'floor' 'ground'

    prop681 = true

    prop666 = {
        if (Me.prop562) {
            "You can't go anywhere while you're buried in the sand.  ";
        } else {
            self.location.prop667;
        }
        "(Though you'll have to get off the floor before you can go anywhere.)  ";
    }

    prop485 = {
        if (Me.prop562) {
            return 'light hearted';
        } else {
            return nil;
        }
    }

    prop682 = { return self.location.prop682; }

    sdesc = "ground"

    adesc = "the ground"

    prop149 = "on"

    prop150 = "off of"

    prop293 = true

    prop167 = {
        Me.location.prop683;
        self.doAction26_look_in(Me);
    }

    prop684 = true

    prop127 = { return [self.location.contents, self.prop677, self.location.prop685, self.location.prop686] + self; }

    location = {
        local local1 = Me.location;

        if (isclass(local1, obj265) || isclass(local1, obj217) && local1.prop687 != nil) {
            return nil;
        } else if (local1 == self) {
            return self.prop317;
        } else {
            return local1;
        }
    }

    locationOK = true

    prop306 = { self.doAction151_get_out_of(Me); }

    prop688 = { "Just another of the many things you can't do while buried under a huge mound of sand.  "; }

    prop307 = { "You can't get any lower.  "; }

    prop662 = {
        if (Me.prop562) {
            self.prop156;
            exit;
        }
        "(Getting <<self.prop150>> <<self.thedesc>> first.)  \b";
        self.prop665 = 0;
        Me.moveInto(Me.location.location);
    }

    prop671(arg1, arg2) = {
        local local1 = Me.location;

        if (local1 != self) {
            if (isclass(local1, class32)) {
                "You climb <<local1.prop150>> <<local1.thedesc>> and <<say(arg2)>> on the ground.  ";
                self.prop317 = local1.location;
                Me.moveInto(self);
            } else {
                self.prop317 = local1;
                Me.moveInto(self);
                "You hop onto <<self.thedesc>> and <<say(arg2)>>.  ";
            }
        } else {
            "You <<say(arg2)>> on <<self.thedesc>>.  ";
        }
        self.prop665 = arg1;
    }

    prop156 = {
        if (Me.prop562) {
            "You're not going anywhere until you dig your way out of the sand you've  buried yourself beneath.  ";
        } else {
            "You're not going anywhere until you get <<self.prop150>> <<self.thedesc>>.  ";
        }
        return nil;
    }

    verDoAction38_sit_on(arg1) = {
        if (isclass(self.location, obj217)) {
            "You maneuver yourself into a cross legged position, hovering just above  the ocean floor.  You're too buoyant to actually sit on it though, and begin  slowly rising toward the surface.  ";
        } else {
            pass verDoAction38_sit_on;
        }
    }

    doAction38_sit_on(arg1) = {
        if (isclass(self.location, obj266)) {
            "You plop down into the shallow water and let the gentle waves knock against  your shoulders.  ";
            fun267(arg1.contents);
            outhide(true);
            self.prop671(1, 'take a seat');
            outhide(nil);
        } else {
            pass doAction38_sit_on;
        }
    }

    verDoAction39_lie_on(arg1) = {
        if (isclass(self.location, obj217)) {
            "You maneuver yourself into a horizontal position, hovering just above the ocean  floor.  You're too buoyant to actually sit on it though, and you begin to rise  toward the surface slowly.  ";
        } else {
            pass verDoAction39_lie_on;
        }
    }

    doAction39_lie_on(arg1) = {
        if (isclass(self.location, obj266)) {
            "You plop down onto your belly and let the gentle waves ride over your back and  shoulders.  ";
            fun267(arg1.contents);
            outhide(true);
            self.prop671(3, 'lie down');
            outhide(nil);
        } else {
            pass doAction39_lie_on;
        }
    }

    verDoAction54_stand_on(arg1) = {
        local local1 = Me.location;

        if (local1 == self.location) {
            if (isclass(local1, obj217)) {
                "You maneuver yourself so that you're perpendicular to the ground, but  you're not really standing on it.  ";
            } else if (!isclass(local1, class35)) {
                "You're already standing on the ground.  ";
            }
        }
    }

    doAction54_stand_on(arg1) = {
        if (isclass(Me.location, class35)) {
            Me.location.doAction151_get_out_of(arg1);
        } else {
            self.doAction151_get_out_of(arg1);
        }
    }

    doSynonym('Action151_get_out_of') = 'Action140_jump_over'

    verDoAction151_get_out_of(arg1) = { }

    doAction151_get_out_of(arg1) = {
        local local1 = Me.location;

        if (local1 == self.location) {
            "You can't leave the ground.  ";
        } else if (self.location == nil) {
            "There's no ground to leave, here.  ";
        } else if (Me.prop562) {
            if (Me.prop689) {
                "You claw your way out of the mound of sand and climb to your feet,  streams of sand pouring from your shorts.  ";
            } else {
                "You rise like an angry Gulliver, casting off grains of sand like so many  Lilliputians.  The thought makes you chuckle.  In your mind, you picture  yourself towering over a diminutive version of the building in which you  work.  You roar in titanic fury, alternately flailing your arms and beating  your chest as you lay waste to everything in your path with your colossal,  stomping feet.  As the vision fades, you discover with some embarrassment  that you have kicked the mounds of sand out of existence.  You look around  to see if anyone was watching.  An elderly couple stroll by, studiously  avoiding your gaze.  In a moment, they are gone.  ";
            }
            Me.prop562 = nil;
            Me.prop689 = true;
            Me.moveInto(local1.location);
            delword(obj261_dry_sand, &noun, 'mound');
            obj20.prop484 = ['capricious'];
        } else {
            "You get up off the ground.  ";
            self.prop665 = 0;
            Me.moveInto(local1.location);
        }
    }

    verIoAction101_bury_in(arg1) = {
        local local1 = Me.location;

        if (obj233_sandy_beach.location != local1 && obj268_mud.location != local1) {
            "You can't bury anything here.  ";
        } else if (obj233_sandy_beach.location == local1) {
            obj233_sandy_beach.verIoAction101_bury_in(arg1);
        } else if (obj268_mud.location == local1) {
            obj268_mud.verIoAction101_bury_in(arg1);
        }
    }

    ioAction101_bury_in(arg1, arg2) = { arg2.doAction100_bury(arg1); }

    verDoAction9_dig_with(arg1, arg2) = {
        if (!isclass(arg2, class242)) {
            "You can't dig in anything with <<arg2.thedesc>>.  ";
        }
    }

    doAction9_dig_with(arg1, arg2) = {
        local local1 = Me.location;

        if (obj233_sandy_beach.location == local1) {
            obj233_sandy_beach.doAction9_dig_with(arg1, arg2);
        } else if (obj268_mud.location == local1) {
            obj268_mud.doAction9_dig_with(arg1, arg2);
        } else if (self.location == nil) {
            "There's nothing to dig in.  ";
        } else if (arg2 == obj231_hands && Me.prop690) {
            "The pain under your fingernails still hurts from the last attempt, convincing  you otherwise.  ";
        } else if (arg2 == obj231_hands && !Me.prop690) {
            "You painfully pull back several fingernails trying to dig a hole in the  <<local1.prop682>> floor.  ";
            Me.prop519(&prop690);
            obj20.prop484 = ['achy', 'sore'];
        } else {
            "You scrape <<arg2.thedesc>> against the floor, but it yields nothing.  ";
        }
    }

    verIoAction146_build_in(arg1) = { }

    ioAction146_build_in(arg1, arg2) = {
        local local1 = Me.location;

        if (obj233_sandy_beach.location == local1) {
            obj233_sandy_beach.ioAction146_build_in(arg1, arg2);
        } else {
            if (obj268_mud.location == local1) {
                "You can't build anything in the mud.  ";
            } else if (self.location == nil) {
                "There's nothing to build in here.  ";
            } else {
                "You can't build anything here.  ";
            }
        }
    }

    doAction96_dance(arg1) = {
        local local1 = Me.location;

        if (local1 == self) {
            "Not while you're <<self.prop661>> on it.  ";
        } else if (isclass(local1, class35)) {
            "Not while you're <<local1.prop661>> <<local1.prop149>> <<local1.thedesc>>.  ";
        } else if (local1 == obj269___Pavilion__) {
            Me.prop691;
        } else {
            "You do a happy little jig.  ";
        }
    }
;

class class56: class58
    prop131 = nil

    prop140 = 10

    prop141 = 10

    prop181 = 50

    prop182 = 20

    prop300 = true

    roomCheck(arg1) = { return self.location.roomCheck(arg1); }

    actorAction(arg1, arg2, arg3, arg4) = {
        caps();
        self.thedesc;
        " doesn't appear interested. ";
        exit;
    }

    prop125(arg1) = { return arg1.prop126(self); }

    prop301 = {
        caps();
        self.adesc;
        " is here. ";
    }

    prop165(arg1) = {
        caps();
        self.thedesc;
        " is carrying ";
        arg1.thedesc;
        " and won't let %youm% have it. ";
    }

    verDoAction3_follow(arg1) = {
        "But ";
        self.thedesc;
        " is right here! ";
    }

    moveInto(arg1) = {
        if (self.prop321) {
            self.prop321.moveInto(self.location);
        }
        pass moveInto;
    }

    prop112 = "he"

    prop113 = "his"

    prop114 = "he's"

    prop115 = "him"

    prop116 = "he's"

    prop117 = "s"

    prop118 = "es"

    prop119 = "has"

    prop120 = "does"

    prop121 = "is"

    prop122 = { self.thedesc; }

    prop322(arg1, arg2) = { return nil; }

    verDoAction136_ask_about(arg1, arg2) = { }

    doAction136_ask_about(arg1, arg2) = {
        local local1, local2, local3;

        local1 = objwords(2);
        local3 = length(local1);
        if (local3 == 1 && find(['it', 'them', 'him', 'her'], local1[1]) != nil || local3 == 0) {
            "\"Could you be more specific?\"";
            return;
        }
        local2 = 1;
      label29483:
        if (local2 <= local3) {
            if (self.prop322(local1[local2], local1)) {
                return;
            }
            ++local2;
            goto label29483;
        }
        self.prop323;
    }

    prop323 = "\"I don't know much about that.\""

    verIoAction13_in(arg1) = { "If you want to give that to <<self.thedesc>>, just say so."; }

    verIoAction123_give_to(arg1) = {
        if (arg1 == self) {
            "That wouldn't accomplish anything!";
        }
    }

    ioAction123_give_to(arg1, arg2) = { "\^<<self.thedesc>> rejects the offer."; }

    prop161(arg1) = {
        if (arg1 == nil) {
            return;
        }
        if (self.location == Me.location && self.location.prop130) {
            self.prop326;
        }
        self.moveInto(arg1);
        if (self.location == Me.location && self.location.prop130) {
            self.prop327;
        }
    }

    prop326 = { "\n\t\^<<self.thedesc>> leaves the area."; }

    prop327 = { "\n\t\^<<self.thedesc>> enters the area."; }

    preferredActor = true
;

class class57: class293
    prop527 = { "\^<<self.thedesc>> isn't saying anything!"; }

    prop521 = "That would be less than polite.  "

    prop525 = { "I don't think <<self.thedesc>> would appreciate that. "; }

    prop167 = { "\^<<self.thedesc>> looks just like <<self.adesc>>."; }

    thedesc = { "<<self.sdesc>>"; }

    prop323 = { "\^<<self.thedesc>> doesn't seem to be interested.  "; }

    prop702 = nil

    prop703 = nil

    verIoAction55_to(arg1) = { }

    ioAction55_to(arg1, arg2) = { self.prop323; }

    doAction136_ask_about(arg1, arg2) = {
        if (find(arg2.prop505, self) == nil) {
            self.prop706;
            return;
        }
        if (!self.prop702) {
            arg2.prop531 += self;
        }
        if (datatype(self.prop707) == 13) {
            switch (proptype(arg2, self.prop707)) {
              case 3:
                "\^<<self.thedesc>> says \"<<arg2.(self.prop707)>>\" ";
                return;
              case 6:
              case 9:
                arg2.(self.prop707);
                return;
              default:
                self.prop323;
                return;
            }
        }
        pass doAction136_ask_about;
    }

    ioAction123_give_to(arg1, arg2) = { "\^<<self.thedesc>> doesn't seem interested in <<arg2.thedesc>>."; }

    verDoAction1_for(arg1, arg2) = { "\^<<self.thedesc>> doesn't seem to take kindly to any kind of requests. "; }

    doAction1_for(arg1, arg2) = { self.verDoAction1_for(arg1, arg2); }

    verDoAction2_tell_about(arg1, arg2) = { }

    doAction2_tell_about(arg1, arg2) = { self.doAction136_ask_about(arg1, arg2); }

    actorAction(arg1, arg2, arg3, arg4) = {
        if (arg1 == obj38_tell && arg2 == Me && arg3 == obj84_about) {
            outhide(true);
            self.verDoAction136_ask_about(Me, arg4);
            if (outhide(nil)) {
                self.verDoAction136_ask_about(Me, arg4);
                exit;
            }
            self.doAction136_ask_about(Me, arg4);
            exit;
        }
        if (arg1 == obj123 && arg4 == Me && arg3 == obj52_to) {
            outhide(true);
            self.verDoAction1_for(Me, arg2);
            if (outhide(nil)) {
                self.verDoAction1_for(Me, arg2);
                exit;
            }
            self.doAction1_for(Me, arg2);
            exit;
        }
        pass actorAction;
    }

    verDoAction26_look_in(arg1) = { "What do you want to do, look down <<self.sdesc>>'s throat?"; }

    verDoAction157_search(arg1) = { "\"Hey, watch it buster!\"  "; }

    verIoAction126_buy_from(arg1, arg2) = { "\^<<self.thedesc>> <<(self.prop509 ? "don't" : "doesn't")>> appear to be  interested in selling you <<arg2.thedesc>>.  "; }

    verDoAction128_pay(arg1) = { "\^<<self.thedesc>> <<(self.prop509 ? "don't" : "doesn't")>> appear to be  interested in taking your money.  "; }

    verDoAction135_clean(arg1) = { "It's unlikely that <<self.thedesc>> would care for that. "; }

    doAction134_clean_with(arg1, arg2) = { "It's unlikely that <<self.thedesc>> would care for that. "; }

    ioAction53_on(arg1, arg2) = { "You decide against antagonizing <<self.thedesc>>.  "; }
;

class class58: class74
    prop136 = true
;

class class59: class57
    sdesc = { self.prop328.sdesc; }

    prop329 = true

    prop167 = {
        caps();
        self.thedesc;
        " is no longer here. ";
    }

    actorAction(arg1, arg2, arg3, arg4) = {
        self.prop167;
        exit;
    }

    prop301 = { }

    prop328 = nil

    verDoAction3_follow(arg1) = { }

    doAction3_follow(arg1) = { arg1.prop161(self.prop328.location); }

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (arg2 != obj60_follow) {
            "\^<<self.prop328.thedesc>> is no longer here.";
            exit;
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = {
        "\^<<self.prop328.thedesc>> is no longer here.";
        exit;
    }
;

obj60_follow: class82
    verb = 'follow'

    sdesc = "follow"

    doAction = 'Action3_follow'
;

class class61_you: class220, class57, class28
    noun = 'myself' 'me'

    roomCheck(arg1) = { return self.location.roomCheck(arg1); }

    sdesc = "you"

    thedesc = "you"

    adesc = "yourself"

    verDoAction3_follow(arg1) = {
        if (arg1 == self) {
            "You can't follow yourself! ";
        }
    }

    actorAction(arg1, arg2, arg3, arg4) = { }

    ioAction123_give_to(arg1, arg2) = {
        "You accept <<arg2.thedesc>> from <<arg1.thedesc>>.";
        arg2.moveInto(Me);
    }

    prop112 = "you"

    prop113 = "your"

    prop114 = "you're"

    prop115 = "you"

    prop116 = "you've"

    prop117 = ""

    prop118 = ""

    prop119 = "have"

    prop120 = "do"

    prop121 = "are"

    prop122 = "me"

    prop181 = 13

    prop182 = 12

    prop681 = true

    prop968 = 0

    prop519(arg1) = {
        if (!self.(arg1)) {
            self.(arg1) = true;
            ++self.prop968;
            if (self.prop968 == 16) {
                "\bCongratulations!  You've endured every bit of pain \(Sunset Over  Savannah\) has to dish out!  You don't get a reward, but don't you  feel stronger for having survived some valuable lessons about  causality and common sense?  ";
                fun226(['Good for you!  ', 'Oh, well.  There\'s just no helping some people.  ', 'It\'s something you should think long and hard about, then.  ']);
                return true;
            } else {
                return nil;
            }
        } else {
            return nil;
        }
    }

    prop969 = nil

    prop520 = nil

    prop922 = nil

    prop920 = nil

    prop921 = nil

    prop926 = nil

    prop690 = nil

    prop970 = nil

    prop971 = nil

    prop972 = nil

    prop925 = nil

    prop973 = nil

    prop877 = nil

    prop929 = nil

    prop940 = nil

    prop752 = nil

    prop957 = nil

    prop974 = nil

    prop876 = nil

    prop975 = nil

    prop903 = nil

    prop976 = nil

    prop899 = nil

    prop689 = nil

    prop562 = nil

    prop720 = ['fuck', 'fuck you', 'shit', 'damn', 'piss', 'hell', 'dick', 'cunt', 'fart', 'asshole', 'bite me', 'suck me', 'fuck me', 'cock', 'cock sucker', 'mother fucker']

    prop719 = ['hello', 'hi', 'howdy', 'hola', 'good evening', 'evening', 'nice day']

    verDoAction136_ask_about(arg1, arg2) = { "You only know what you know.  "; }

    verDoAction2_tell_about(arg1, arg2) = { "You only know what you know.  "; }

    verDoAction1_for(arg1, arg2) = { "You're not going to get anything done that way.  "; }

    prop167 = {
        if (Me.location == obj381___Grotto__) {
            "Ugh.  Everything hurts.  Especially your head, which is throbbing to beat the band.  ";
            exit;
        }
        "You pause for a moment to take stock of your physical condition.  ";
        if (Me.prop968 == 0) {
            "You're feeling quite fit and healthy after your week of  relaxation and exercise.  ";
        } else if (Me.prop926 != nil) {
            "\n\tYour head, back and neck are stiff and sore from your fall from the  pavilion canopy.  ";
        }
        if (Me.prop752 != nil) {
            "\n\tYou've <<(Me.prop926 != nil ? "also" : "")>> got a painful knot on your head  from the mishap in the diving bell<<(Me.prop957 != nil ? "" : ".  ")>>";
        }
        if (Me.prop957 != nil) {
            "<<(Me.prop752 != nil ? ", and another" : "\n\tYou've got a painful knot on your head")>>  from the incident with the benches.  ";
        }
        if (Me.prop520 != nil) {
            "\n\tA nasty trickle of brine in your throat reminds you of your near drowning.  ";
        }
        if (Me.prop877 != nil) {
            "\n\tYour eyes sting a bit from being open underwater.  ";
        }
        if (Me.prop920 != nil) {
            "\n\tYour behind is sore from leaping ass backwards onto the beach with  the brick<<(Me.prop921 != nil ? " and" : ".  ")>>";
        }
        if (Me.prop921 != nil) {
            "<<(Me.prop920 != nil ? " y" : "\n\tY")>>our chest still hurts from  <<(Me.prop920 != nil ? "the face forward dive" : "your face forward dive onto the beach")>>.  ";
        }
        if (Me.prop925 != nil) {
            "\n\tYour knees are sore from your leap from the roof of the enclosure.  ";
        }
        if (Me.prop957 != nil) {
            "\n\tYou've got a nasty bruise on one elbow, another injury from the   battle of the benches.  ";
        }
        if (Me.prop922 != nil) {
            "\n\tThe soles of both feet sting a bit from your leap over the  railing<<(Me.prop970 != nil || Me.prop972 != nil ? ", and" : ".  ")>>";
        }
        if (Me.prop970 != nil) {
            "<<(Me.prop922 != nil ? " t" : "\n\tT")>>he foot with which you kicked the glassy  castle is swollen and tender<<(Me.prop972 != nil ? ", and" : ".  ")>>";
        }
        if (Me.prop972 != nil) {
            "<<(Me.prop922 != nil || Me.prop970 != nil ? " y" : "\n\tY")>>ou've got  terrible yellow bruises on both feet from the accident with the brick.  ";
        }
        if (Me.prop974 != nil) {
            "\n\tYou have a nasty red welt on the heel of one hand left by  one of the castle mites<<(Me.prop971 != nil ? ", and" : ".  ")>>";
        }
        if (Me.prop971 != nil) {
            "<<(Me.prop974 != nil ? " t" : "\n\tT")>>he knuckles of one hand are raw and red  from punching the glass castle<<(Me.prop690 != nil ? ".  Oh, and" : ".  ")>>";
        }
        if (Me.prop690 != nil) {
            if (Me.prop974 != nil || Me.prop971 != nil) {
                " y";
            } else {
                "\n\tY";
            }
            "ou've got deep bruises beneath your fingernails from attempting  to dig through the solid floor.  ";
        }
        if (Me.prop973 != nil) {
            "\n\tThe hand you plunged into the boiling peanut water still burns  angrily<<(Me.prop929 != nil ? ", and" : ".  ")>>";
        }
        if (Me.prop929 != nil) {
            "<<(Me.prop973 != nil ? " a" : "\n\tA")>>n ugly cut mars one finger.  ";
        }
        if (Me.prop940 != nil) {
            "<<(self.prop968 > 0 ? " And t" : "\n\tT")>>hough it didn't leave a mark, you can still feel  the pinch you received from the crab.  ";
        }
    }

    verDoAction119_drown_in(arg1, arg2) = { }

    verDoAction118_drown(arg1) = { }

    doAction118_drown(arg1) = {
        local local1 = fun227(Me);

        if (Me.prop969 == true) {
            "A nasty trickle of brine in the back of your throat convinces you not  to try that again.  ";
        } else if (isclass(local1, obj266) || local1 == obj339___Inside_the__Octopu) {
            "The water here's pretty shallow.  Perhaps you should try moving out  into deeper water.  ";
        } else if (isclass(local1, obj265) || isclass(local1, obj217)) {
            "Your mind wanders from the here and now, and you contemplate just letting  it all slip away, allowing yourself to slowly sink into the dark, murky depths,  away from all sorrow, all joy, just a vast, timeless calm.  Serenity slips  over you like the warm touch of a smooth, caressing hand, enveloping, soothing.   You smell a subtle aroma of... bread?  You inhale gently to better discern the  odor, and... \(Cough!\)  You rise, clawing, kicking and struggling to the surface,  your sinuses stinging with ocean salt, and break the surface, gasping.  A nasty  trickle of brine in the back of your throat convinces you not to try that again.  ";
            if (isclass(local1, obj217)) {
                "\b";
                Me.moveInto(local1.prop518);
                obj20.prop491 = nil;
                local1.prop518.lookAround(true);
            }
            Me.prop969 = true;
            Me.prop519(&prop520);
            obj20.prop484 = ['panicked', 'agitated', 'irritated'];
        } else {
            "Perhaps you'd better enter the water, first.  ";
        }
    }

    verDoAction101_bury_in(arg1, arg2) = {
        local local1, local2;

        local1 = Me.location;
        local2 = local1.prop682;
        if (!isclass(arg2, class232)) {
            "You can't bury yourself in <<arg2.thedesc>>.  ";
        } else if (Me.location == obj439_hole) {
            "You consider the sand spilling over the rim of the hole, and decide not to risk it.  ";
        } else if (arg2 == obj268_mud && (arg2 == obj55_ground && isclass(local1, obj217))) {
            if (local1.prop687 == nil) {
                "You can't.  There's no bottom in sight.  ";
            } else {
                "You twist and turn, trying to anchor yourself in the fine mud of the  ocean floor, but you're just too buoyant.  All you succeed in doing is  raising a cloud of mud, which settles quickly.  ";
            }
        } else if (arg2 == obj268_mud || arg2 == obj55_ground && local2 == 'mud') {
            "You try to cover yourself in mud, but the surf pushes you around and  carries the mud away.  Disappointed, you quickly give up.  ";
        } else if (arg2 == obj262_wet_sand || (arg2 == obj55_ground || isclass(arg2, obj234_shallow_hole) || arg2 == obj233_sandy_beach) && local2 == 'wetsand') {
            "You try to scrape up enough sand to bury yourself, but the bronzed sand is  too tightly packed for you to easily cover yourself with it.  ";
        } else if (Me.prop562) {
            "But you're already buried!  ";
        }
    }

    doAction101_bury_in(arg1, arg2) = {
        local local1, local2, local3;

        local1 = Me.location;
        local3 = local1.prop682;
        local2 = fun219(Me);
        if (arg2 == obj55_ground && local3 != 'drysand' && local3 != 'wetsand' && local3 != 'mud') {
            if (Me.prop690 == nil) {
                "You pull back several fingernails painfully, trying to dig a hole in the  <<local3>> floor.  ";
                Me.prop519(&prop690);
                obj20.prop484 = ['achy'];
            } else {
                "The pain under your fingernails still hurts from the last attempt, convincing  you otherwise.  ";
            }
            exit;
        }
        "You ";
        if (local2) {
            "set down ";
            if (local2 > 1) {
                "the other stuff";
            } else {
                fun221(Me);
            }
            " you were carrying and ";
        }
        if (Me.prop689) {
            "lie on your back in the warm sand.  You pile sand up all around you and then  lie happily ensconced, like some burrowing animal.  ";
        } else {
            " lie on your back in the warm sand.  Sand rides up your bathing suit, but you  find it oddly comforting.  You begin scooping up armloads of sand, leaving  behind feathery traces as of angels' wings.  You push the sand into mounds,  first covering your feet, then your calves, then your thighs and hips.  You  gently lever yourself down, resting your back and head on the sandy ground,  and start to pile sand on your stomach and chest.  You crane your head forward  uncomfortably, afraid to lie completely flat, for fear that the sand on your  chest will slide down over your face.  So you stretch your arms up and back,  and pile up a cushion of sand on which to rest your head.  Finally, you wriggle  your arms in against your sides until they too are covered.  At last you lie still,  happily ensconced in the sand like some burrowing animal.  ";
        }
        if (isclass(local1, obj234_shallow_hole)) {
            fun207(Me, local1.location);
            obj55_ground.prop317 = local1.location;
            Me.moveInto(obj55_ground);
            if (fun4(local1.contents)) {
                fun207(local1, local1.location);
            }
            local1.location.prop678 = nil;
            local1.location.prop685 = nil;
            delete local1;
        } else if (local1 != obj55_ground) {
            fun207(Me, local1);
            obj55_ground.prop317 = local1;
            Me.moveInto(obj55_ground);
        } else {
            fun207(Me, local1.location);
        }
        obj55_ground.prop665 = 3;
        self.prop562 = true;
        addword(obj261_dry_sand, &noun, 'mound');
    }

    verDoAction88_uncover(arg1) = {
        if (!Me.prop562) {
            "You're not in anything that you can dig yourself out of.  ";
        }
    }

    doAction88_uncover(arg1) = { obj55_ground.doAction151_get_out_of(arg1); }

    prop691 = {
        local local1 = Me.location;

        if (local1 == obj269___Pavilion__ && obj268_mud.prop924 > 2 && !obj530_ghostly_dancers.prop891) {
            obj346.prop977;
        } else if (isclass(local1, obj217) || isclass(local1, obj265)) {
            "You can't dance in the water, but you do manage a provocative wiggle.  ";
        } else {
            "You dance a happy little jig.  ";
            if (obj530_ghostly_dancers.prop891) {
                "It reminds you pleasantly of the graceful, ghostly gentlemen and ladies  and the joyous dances you shared with them.  ";
            }
        }
    }

    prop161(arg1) = {
        if (arg1) {
            if (arg1.prop331) {
                self.prop161(arg1.prop332);
            } else if (self.location) {
                self.location.prop230(self);
            }
            obj20.prop489 = self.location;
            self.location = arg1;
            arg1.prop155(self);
        }
    }

    moveInto(arg1) = {
        obj20.prop489 = self.location;
        self.location = arg1;
    }

    prop708 = 9

    prop502 = []

    prop978 = [obj296_wrist, obj297_ankle, obj298_waist]

    verIoAction148_attach_to(arg1) = { }

    ioAction148_attach_to(arg1, arg2) = {
        if (arg2 == obj255_white_rubber_strap) {
            arg2.doAction148_attach_to(arg1, obj296_wrist);
        } else if (arg2 == obj302_length_of_rope) {
            arg2.doAction148_attach_to(arg1, obj298_waist);
        } else {
            "You can't attach <<arg2.thedesc>> to yourself.  ";
        }
    }

    verDoAction148_attach_to(arg1, arg2) = {
        if (arg2 == obj255_white_rubber_strap) {
            arg2.verDoAction148_attach_to(arg1, obj296_wrist);
        } else if (arg2 == obj302_length_of_rope) {
            arg2.verDoAction148_attach_to(arg1, obj298_waist);
        } else {
            "You can't attach <<arg2.thedesc>> to yourself.  ";
        }
    }

    doAction148_attach_to(arg1, arg2) = {
        if (arg2 == obj255_white_rubber_strap) {
            arg2.doAction148_attach_to(arg1, obj296_wrist);
        } else if (arg2 == obj302_length_of_rope) {
            arg2.doAction148_attach_to(arg1, obj298_waist);
        } else {
            "You can't attach <<arg2.thedesc>> to yourself.  ";
        }
    }

    verIoAction149_detach_from(arg1) = { }

    ioAction149_detach_from(arg1, arg2) = {
        if (find(arg2.prop502, obj296_wrist)) {
            arg2.doAction149_detach_from(arg1, obj296_wrist);
        } else if (find(arg2.prop502, obj297_ankle)) {
            arg2.doAction149_detach_from(arg1, obj297_ankle);
        } else if (find(arg2.prop502, obj298_waist)) {
            arg2.doAction149_detach_from(arg1, obj298_waist);
        } else {
            "\^<<arg2.thedesc>> can't be detached from you.  ";
        }
    }

    verDoAction150_detach(arg1) = {
        if (length(obj296_wrist.prop502)) {
            obj296_wrist.prop502[1].verDoAction149_detach_from(arg1, obj296_wrist);
        } else if (length(obj297_ankle.prop502)) {
            obj297_ankle.prop502[1].verDoAction149_detach_from(arg1, obj297_ankle);
        } else if (length(obj298_waist.prop502)) {
            obj298_waist.prop502[1].verDoAction149_detach_from(arg1, obj298_waist);
        } else {
            "Nothing is tied to you.  ";
        }
    }

    doAction150_detach(arg1) = {
        if (length(obj296_wrist.prop502)) {
            obj296_wrist.prop502[1].doAction149_detach_from(arg1, obj296_wrist);
        } else if (length(obj297_ankle.prop502)) {
            obj297_ankle.prop502[1].doAction149_detach_from(arg1, obj297_ankle);
        } else if (length(obj298_waist.prop502)) {
            obj298_waist.prop502[1].doAction149_detach_from(arg1, obj298_waist);
        } else {
            "Nothing is tied to you.  ";
        }
    }

    doSynonym('Action149_detach_from') = 'Action154_take_off_from'

    verDoAction149_detach_from(arg1, arg2) = {
        if (find(arg2.prop502, obj296_wrist)) {
            obj296_wrist.verDoAction149_detach_from(arg1, arg2);
        } else if (find(arg2.prop502, obj297_ankle)) {
            obj297_ankle.verDoAction149_detach_from(arg1, arg2);
        } else if (find(arg2.prop502, obj298_waist)) {
            obj298_waist.verDoAction149_detach_from(arg1, arg2);
        } else {
            "\^<<arg2.thedesc>> isn't attached to you.  ";
        }
    }

    doAction149_detach_from(arg1, arg2) = {
        if (find(arg2.prop502, obj296_wrist)) {
            obj296_wrist.doAction149_detach_from(arg1, arg2);
        } else if (find(arg2.prop502, obj297_ankle)) {
            obj297_ankle.doAction149_detach_from(arg1, arg2);
        } else if (find(arg2.prop502, obj298_waist)) {
            obj298_waist.doAction149_detach_from(arg1, arg2);
        }
    }

    verDoAction19_out(arg1, arg2) = {
        if (isclass(arg2, class215) && (find(arg2.prop502, obj296_wrist) || find(arg2.prop502, obj297_ankle) || find(arg2.prop502, obj298_waist))) {
            arg2.verDoAction149_detach_from(arg1, self);
        } else {
            pass verDoAction19_out;
        }
    }

    doAction19_out(arg1, arg2) = {
        if (isclass(arg2, class215) && (find(arg2.prop502, obj296_wrist) || find(arg2.prop502, obj297_ankle) || find(arg2.prop502, obj298_waist))) {
            arg2.doAction149_detach_from(arg1, self);
        } else {
            pass doAction19_out;
        }
    }

    verDoAction18_off(arg1, arg2) = {
        if (isclass(arg2, class215) && (find(arg2.prop502, obj296_wrist) || find(arg2.prop502, obj297_ankle) || find(arg2.prop502, obj298_waist))) {
            arg2.verDoAction149_detach_from(arg1, self);
        } else {
            pass verDoAction18_off;
        }
    }

    doAction18_off(arg1, arg2) = {
        if (isclass(arg2, class215) && (find(arg2.prop502, obj296_wrist) || find(arg2.prop502, obj297_ankle) || find(arg2.prop502, obj298_waist))) {
            arg2.doAction149_detach_from(arg1, self);
        } else {
            pass doAction18_off;
        }
    }

    prop919 = {
        local local1, local2, local3, local4;

        local1 = 1;
      label41599:
        if (local1 <= length(Me.prop978)) {
            local2 = Me.prop978[local1];
            if (length(local2.prop502)) {
                local4 = local2.prop502[1];
                local3 = local2.prop710;
                local4.prop128 = nil;
                local4.prop502 -= local2;
                if (local3 != nil) {
                    local3.prop128 = nil;
                }
            }
            ++local1;
            goto label41599;
        }
    }

    prop561 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "Not while you're carrying that  <<(obj212_brick.location == Me ? "brick" : "pale full of water")>>.  ";
            return true;
        } else {
            return nil;
        }
    }

    verDoAction43_attack_with(arg1, arg2) = { "No.  Your will to live is stronger than all the forces of mediocrity that  would push you down.  "; }

    verDoAction161_tan(arg1) = { obj400_tan.action(arg1); }
;

class class62: class250
    prop654 = [obj36_inspect, obj38_tell, obj37]

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (find(self.prop654, arg2) == nil) {
            "You can't do anything useful with <<self.thedesc>>.  ";
            exit;
        }
    }
;

class class63: class251
    prop654 = [obj36_inspect, obj38_tell, obj37]

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (find(self.prop654, arg2) == nil) {
            "\^<<self.thedesc>> <<(self.prop509 ? "are" : "is")>> too far away.  ";
            exit;
        }
    }
;

class class64_button: class33
    noun = 'button'

    plural = 'buttons'

    verDoAction155_push(arg1) = { }
;

class class65: class256
    prop659(arg1) = {
        if (self.prop128) {
            self.verDoAction153_take_off(arg1);
        } else {
            pass verDoAction24;
        }
    }

    prop660(arg1) = {
        if (self.prop128) {
            self.doAction153_take_off(arg1);
        } else {
            pass doAction24;
        }
    }

    verDoAction153_take_off(arg1) = {
        if (!self.prop128) {
            "%You're% not wearing <<self.thedesc>>. ";
        } else if (obj212_brick.location == arg1) {
            "You can't, while you're carrying that brick!  ";
        }
    }
;

class class66: object
    prop331 = true
;

class class67: class33, class66
    prop336 = true

    prop332 = {
        if (self.prop124) {
            return self.prop337;
        } else if (!self.prop338 && !self.prop339) {
            self.prop124 = true;
            if (self.prop340) {
                self.prop340.prop124 = true;
            }
            "(Opening <<self.thedesc>>)\n";
            return self.prop337;
        } else {
            "%You%'ll have to open <<self.thedesc>> first. ";
            setit(self);
            return nil;
        }
    }

    verDoAction156_open(arg1) = {
        if (self.prop124) {
            "It's already open. ";
        } else if (self.prop338) {
            "It's locked. ";
        }
    }

    doAction156_open(arg1) = {
        "Opened. ";
        self.prop124 = true;
        if (self.prop340) {
            self.prop340.prop124 = true;
        }
    }

    verDoAction17_close(arg1) = {
        if (!self.prop124) {
            "It's already closed. ";
        }
    }

    doAction17_close(arg1) = {
        "Closed. ";
        self.prop124 = nil;
        if (self.prop340) {
            self.prop340.prop124 = nil;
        }
    }

    verDoAction68_lock(arg1) = {
        if (self.prop338) {
            "It's already locked! ";
        } else if (!self.prop346) {
            "It can't be locked. ";
        } else if (self.prop124) {
            "%You%'ll have to close it first. ";
        }
    }

    doAction68_lock(arg1) = {
        if (self.prop348 == nil) {
            "Locked. ";
            self.prop338 = true;
            if (self.prop340) {
                self.prop340.prop338 = true;
            }
        } else {
            askio(obj68_with);
        }
    }

    verDoAction70_unlock(arg1) = {
        if (!self.prop338) {
            "It's not locked! ";
        }
    }

    doAction70_unlock(arg1) = {
        if (self.prop348 == nil) {
            "Unlocked. ";
            self.prop338 = nil;
            if (self.prop340) {
                self.prop340.prop338 = nil;
            }
        } else {
            askio(obj68_with);
        }
    }

    verDoAction67_lock_with(arg1, arg2) = {
        if (self.prop338) {
            "It's already locked. ";
        } else if (!self.prop346) {
            "It can't be locked. ";
        } else if (self.prop348 == nil) {
            "%You% %do%n't need anything to lock it. ";
        } else if (self.prop124) {
            "%You%'ll have to close it first. ";
        }
    }

    doAction67_lock_with(arg1, arg2) = {
        if (arg2 == self.prop348) {
            "Locked. ";
            self.prop338 = true;
            if (self.prop340) {
                self.prop340.prop338 = true;
            }
        } else {
            "It doesn't fit the lock. ";
        }
    }

    verDoAction69_unlock_with(arg1, arg2) = {
        if (!self.prop338) {
            "It's not locked! ";
        } else if (self.prop348 == nil) {
            "%You% %do%n't need anything to unlock it. ";
        }
    }

    doAction69_unlock_with(arg1, arg2) = {
        if (arg2 == self.prop348) {
            "Unlocked. ";
            self.prop338 = nil;
            if (self.prop340) {
                self.prop340.prop338 = nil;
            }
        } else {
            "It doesn't fit the lock. ";
        }
    }

    prop167 = {
        if (self.prop124) {
            "It's open. ";
        } else if (self.prop338) {
            "It's closed and locked. ";
        } else {
            "It's closed. ";
        }
    }
;

obj68_with: class184
    preposition = 'with'

    sdesc = "with"
;

class class69: class67
    prop346 = true

    prop338 = true
;

class class70: class264
    verDoAction4_exit(arg1) = { self.verDoAction151_get_out_of(arg1); }

    doAction4_exit(arg1) = { self.doAction151_get_out_of(arg1); }
;

obj71: class372_get_out_of
    verb = 'get down' 'get offof' 'get off' 'get outof' 'get out'
;

obj72_exit: class358
    verb = 'leave' 'out' 'exit' 'go out'

    sdesc = "exit"

    doAction = 'Action4_exit'
;

obj73: class356_put
    verb = 'place' 'put'

    prop737 = true

    doDefault(arg1, arg2, arg3) = { return fun205(arg1.contents); }

    ioAction(obj191_under) = 'Action5_under'
    ioAction(obj310_against) = 'Action6_against'
    ioAction(obj189_through) = 'Action7_through'
;

class class74: class257
    prop149 = "in"

    prop150 = "out of"

    prop548(arg1) = { }

    prop549(arg1, arg2) = { self.ioAction13_in(arg1, arg2); }

    prop557 = { return nil; }

    verDoAction26_look_in(arg1) = { }

    doAction26_look_in(arg1) = {
        if (self.prop135 && fun4(self.contents) > 0) {
            "In ";
            self.thedesc;
            " you see ";
            fun7(self);
            ".  ";
        } else {
            "\^<<self.thedesc>> is empty.  ";
        }
    }

    ioAction13_in(arg1, arg2) = {
        if (fun11(self.contents) + arg2.prop141 > self.prop182) {
            "%You% can't fit that in ";
            self.thedesc;
            ". ";
        } else if (fun10(self.contents) + arg2.prop140 > self.prop181) {
            "%You% can't fit that in ";
            self.thedesc;
            ". ";
        } else {
            arg2.doAction13_in(arg1, self);
        }
    }
;

class class75: class42
    prop135 = { return true; }

    prop167 = {
        if (self.prop135 && fun4(self.contents) != 0) {
            "In ";
            self.thedesc;
            " %you% see%s% ";
            fun7(self);
            ". ";
        } else {
            "There's nothing in ";
            self.thedesc;
            ". ";
        }
    }

    prop165(arg1) = {
        if (self.prop178 && !self.prop124) {
            "%You% will have to open <<self.thedesc>> first. ";
        }
    }

    doAction156_open(arg1) = {
        self.prop124 = true;
        "Opened. ";
    }

    verDoAction26_look_in(arg1) = { }

    doAction26_look_in(arg1) = { self.prop167; }
;

class class76: class29
    verDoAction156_open(arg1) = {
        if (self.prop338) {
            "It's locked. ";
        } else {
            pass verDoAction156_open;
        }
    }

    verDoAction68_lock(arg1) = {
        if (self.prop338) {
            "It's already locked! ";
        }
    }

    doAction68_lock(arg1) = {
        if (self.prop124) {
            "%You%'ll have to close ";
            self.thedesc;
            " first. ";
        } else {
            "Locked. ";
            self.prop338 = true;
        }
    }

    verDoAction70_unlock(arg1) = {
        if (!self.prop338) {
            "It's not locked! ";
        }
    }

    doAction70_unlock(arg1) = {
        "Unlocked. ";
        self.prop338 = nil;
    }

    verDoAction67_lock_with(arg1, arg2) = {
        if (self.prop338) {
            "It's already locked. ";
        }
    }

    verDoAction69_unlock_with(arg1, arg2) = {
        if (!self.prop338) {
            "It's not locked! ";
        }
    }
;

class class77: class76
    prop348 = nil

    doAction68_lock(arg1) = { askio(obj68_with); }

    doAction70_unlock(arg1) = { askio(obj68_with); }

    doAction67_lock_with(arg1, arg2) = {
        if (self.prop124) {
            "%You% can't lock <<self.thedesc>> when it's open. ";
        } else if (arg2 == self.prop348) {
            "Locked. ";
            self.prop338 = true;
        } else {
            "It doesn't fit the lock. ";
        }
    }

    doAction69_unlock_with(arg1, arg2) = {
        if (arg2 == self.prop348) {
            "Unlocked. ";
            self.prop338 = nil;
        } else {
            "It doesn't fit the lock. ";
        }
    }
;

class class78: class42
    verIoAction69_unlock_with(arg1) = { }

    ioAction69_unlock_with(arg1, arg2) = { arg2.doAction69_unlock_with(arg1, self); }

    verIoAction67_lock_with(arg1) = { }

    ioAction67_lock_with(arg1, arg2) = { arg2.doAction67_lock_with(arg1, self); }
;

class class79: class42
    verDoAction40_look_through(arg1) = { }

    doAction40_look_through(arg1) = { self.prop206; }
;

class class80: object
    value = 0

    sdesc = { "<<self.value>>"; }

    adesc = "a number"

    thedesc = { "the number <<self.value>>"; }

    verDoAction66_type_on(arg1, arg2) = { }

    doAction66_type_on(arg1, arg2) = { "\"Tap, tap, tap, tap...\" "; }

    verIoAction31_turn_to(arg1) = { }

    ioAction31_turn_to(arg1, arg2) = { arg2.doAction31_turn_to(arg1, self); }
;

class class81: class304
    verDoAction55_to(arg1, arg2) = { }

    verDoAction158_say(arg1) = { }

    doAction158_say(arg1) = {
        local local1 = fun227(Me);

        if (local1 == obj222_the_vendor.location) {
            obj222_the_vendor.ioAction55_to(arg1, self);
        } else if (local1 == obj305_the_old_man.location) {
            obj305_the_old_man.ioAction55_to(arg1, self);
        } else if (local1 == obj306_scruffy_looking_indi.location) {
            obj306_scruffy_looking_indi.ioAction55_to(arg1, self);
        } else if (local1 == obj307_flock_of_gulls.location) {
            "The gulls seem unimpressed.  Perhaps they don't speak English.  ";
        } else if (isclass(local1, obj217)) {
            "The words burst out of your mouth in a swarm of bubbles.  ";
        } else if (find(Me.prop719, self.value) != nil) {
            "You say \"";
            say(self.value);
            "\".  It cheers you up a tiny bit.  ";
        } else if (find(Me.prop720, self.value) != nil) {
            "You say \"";
            say(self.value);
            "\".  It leaves a sour taste in your  mouth and doesn't make you feel any better.  ";
        }
    }
;

class class82: class347
    doDefault(arg1, arg2, arg3) = {
        if (self.prop737 == nil) {
            if (objwords(1) == ['A']) {
                obj20.prop506 = 'Wouldn\'t it be nifty if you could do that with  a whole bunch of stuff all at one time?  ';
                return [];
            }
            pass doDefault;
        } else {
            pass doDefault;
        }
    }

    validDoList(arg1, arg2, arg3) = {
        local local1, local2;

        local2 = arg1.location;
      label46626:
        if (local2.location) {
            local2 = local2.location;
            goto label46626;
        }
        local1 = fun30(arg1) + fun30(local2) + obj20.prop148 + obj20.prop497;
        return local1;
    }
;

class class83: class82
    prop316 = true

    prop721 = true
;

obj84_about: class184
    preposition = 'about'

    sdesc = "about"
;

obj85_dig: class82
    verb = 'dig in' 'dig'

    sdesc = "dig"

    action(arg1) = { obj55_ground.doAction8_dig(arg1); }

    doAction = 'Action8_dig'
    ioAction(obj68_with) = 'Action9_dig_with'
    ioAction(obj96_in) = 'Action10_dig_in'
;

obj86_jump: class82
    verb = 'hop' 'jump'

    sdesc = "jump"

    action(arg1) = {
        local local1 = Me.location;

        if (isclass(local1, obj217) || isclass(local1, obj265)) {
            "You find it difficult to jump while floating in the ocean currents.  ";
        } else if (isclass(local1, class259) && local1.prop665 != 2) {
            "You find it difficult to jump while <<(local1.prop665 == 1 ? "sitting" : "lying")>>  <<local1.prop149>> <<local1.thedesc>>.  ";
        } else if (isclass(local1, obj237)) {
            if (Me.prop752) {
                "Nope, not again.  You nearly knocked yourself out the last time.  ";
            } else {
                "You don't get very high before \(bash\)ing your head painfully  against the <<(local1 == obj363___In_the_Diving_Bell ? "air valve" : "rusted lump")>>  suspended overhead.  \(Ow!\)  You stagger around in the very limited  confines of the bell, clutching your head.  The initial sharp pain  slides across your scalp like an ice cream rush.  Eventually, it  subsides enough for you to wipe the tears from your eyes and  stand up straight.  ";
                obj20.prop484 = ['staggered'];
                Me.prop519(&prop752);
            }
        } else if (!Me.prop561) {
            "You throw your arms skyward and leap into the air.  ";
        }
    }
;

obj87: class375_push
    verb = 'push'

    ioAction(obj68_with) = 'Action11_with'
;

obj88: class370_attach
    verb = 'tie' 'attach' 'connect'

    action(arg1) = { "It occurs to you that you might try '\(tie thing1 to thing2\).'"; }
;

obj89_wear: class82, class83
    verb = 'put on' 'wear'

    sdesc = "wear"

    doAction = 'Action12_wear'
;

obj90: class348_drop
    verb = 'put down' 'drop'

    prop737 = true

    doDefault(arg1, arg2, arg3) = { return fun205(arg1.contents); }

    ioAction(obj96_in) = 'Action13_in'
    ioAction(obj189_through) = 'Action7_through'
;

obj91_on: class184
    preposition = 'downon' 'onto' 'upon' 'on'

    sdesc = "on"
;

obj92: class374_take_off
    verb = 'remove' 'take off'

    ioAction(obj68_with) = 'Action15_with'
;

obj93_from: class184
    preposition = 'from'

    sdesc = "from"
;

obj94: class376_open
    verb = 'open'

    ioAction(obj68_with) = 'Action16_with'
;

obj95_close: class82, class83
    verb = 'close'

    sdesc = "close"

    doAction = 'Action17_close'
;

obj96_in: class184
    preposition = 'downin' 'into' 'in'

    sdesc = "in"
;

takeVerb: class82
    verb = 'get' 'take' 'hold' 'pick up'

    sdesc = "take"

    doDefault(arg1, arg2, arg3) = {
        local local1, local2, local3, local4, local5, local6, local7, local8, local9;

        local1 = [];
        if ((arg2 == obj99_out || arg2 == obj98_off || arg2 == obj96_in || arg2 == obj91_on || arg2 == obj93_from) && arg3 != nil) {
            local2 = arg3.contents;
            local7 = 1;
            local6 = length(local2);
          label48586:
            if (local7 <= local6) {
                local3 = local2[local7];
                if (!local3.prop137 && self.validDo(arg1, local3, local7)) {
                    local1 += local3;
                }
                ++local7;
                goto label48586;
            }
            return local1;
        }
        local2 = arg1.location.contents;
        local6 = length(local2);
        local7 = 1;
      label48689:
        if (local7 <= local6) {
            local3 = local2[local7];
            if (local3.prop137) {
                if ((local3.prop178 && local3.prop124 || !local3.prop178) && !local3.prop300) {
                    local4 = local3.contents;
                    local8 = length(local4);
                    local9 = 1;
                  label48793:
                    if (local9 <= local8) {
                        local5 = local4[local9];
                        if (!local5.prop137 && !local5.prop394) {
                            local1 = local1 + local5;
                        }
                        local9 = local9 + 1;
                        goto label48793;
                    }
                }
            } else if (!local3.prop394) {
                local1 = local1 + local3;
            }
            local7 = local7 + 1;
            goto label48689;
        }
        return local1;
    }

    ioAction(obj98_off) = 'Action18_off'
    ioAction(obj99_out) = 'Action19_out'
    ioAction(obj93_from) = 'Action19_out'
    ioAction(obj96_in) = 'Action19_out'
    ioAction(obj91_on) = 'Action18_off'
    ioAction(obj68_with) = 'Action23_with'
    doAction = 'Action24'
;

obj98_off: class184
    preposition = 'offof' 'off'

    sdesc = "off"
;

obj99_out: class184
    preposition = 'outof' 'out'

    sdesc = "out"
;

obj100_plug: class82
    verb = 'plug'

    sdesc = "plug"

    prepDefault = obj96_in

    ioAction(obj96_in) = 'Action25_plug_in'
;

obj101_look_in: class82
    verb = 'l on' 'l in' 'look on' 'look in'

    sdesc = "look in"

    doAction = 'Action26_look_in'
;

obj102_screw: class82
    verb = 'screw'

    sdesc = "screw"

    ioAction(obj68_with) = 'Action27_screw_with'
    doAction = 'Action28_screw'
;

obj103_unscrew: class82
    verb = 'unscrew'

    sdesc = "unscrew"

    ioAction(obj68_with) = 'Action29_unscrew_with'
    doAction = 'Action30_unscrew'
;

obj104_turn: class82
    verb = 'twist' 'rotate' 'turn'

    sdesc = "turn"

    ioAction(obj52_to) = 'Action31_turn_to'
    ioAction(obj68_with) = 'Action32_turn_with'
    doAction = 'Action33_turn'
;

obj105_switch: class82
    verb = 'switch'

    sdesc = "switch"

    doAction = 'Action34_switch'
;

obj106_flip: class82
    verb = 'flip'

    sdesc = "flip"

    doAction = 'Action35_flip'
;

obj107_turn_on: class82, class83
    verb = 'activate' 'switch on' 'turn on'

    sdesc = "turn on"

    doAction = 'Action36_turn_on'
;

obj108_turn_off: class82
    verb = 'deactiv' 'switch off' 'turn off'

    sdesc = "turn off"

    doAction = 'Action37_turn_off'
;

obj109_look: class82
    verb = 'l around' 'l' 'look around' 'look'

    sdesc = "look"

    action(arg1) = { arg1.location.lookAround(true); }
;

obj110_sit_on: class82
    verb = 'sit downon' 'sit downin' 'sit down' 'sit' 'sit in' 'sit on'

    sdesc = "sit on"

    doAction = 'Action38_sit_on'
;

obj112_lie_on: class82
    verb = 'lie downin' 'lie downon' 'lie down' 'lie in' 'lie on' 'lie'

    sdesc = "lie on"

    doAction = 'Action39_lie_on'
;

obj113: class373_get_on
    verb = 'board' 'get on' 'get into' 'get in'
;

againVerb: class83
    verb = 'again' 'g'
;

obj115: class83
    verb = 'z' 'wait'

    action(arg1) = { "Time passes...\n"; }
;

obj116: class82
    verb = 'i' 'inventory'

    action(arg1) = {
        if (length(arg1.contents)) {
            "%You% %have% ";
            fun7(arg1);
            ". ";
            fun8(arg1);
        } else {
            "%You% %are% empty-handed.\n";
        }
    }
;

obj117_look_through: class82
    verb = 'l thru' 'l through' 'look thru' 'look through'

    sdesc = "look through"

    doAction = 'Action40_look_through'
;

obj118: class385_break
    verb = 'break' 'destroy' 'ruin'

    doAction = 'Action41'
;

obj119_attack: class82
    verb = 'whack' 'smack' 'punch' 'hit' 'attack' 'bang' 'bash' 'kill'

    sdesc = "attack"

    doAction = 'Action41'
    ioAction(obj68_with) = 'Action43_attack_with'
;

obj120: class367_climb
    verb = 'climb on' 'climb up' 'climb over' 'climb'
;

obj121: class333_eat
    verb = 'eat' 'consume' 'bite'
;

obj122: class334_drink
    verb = 'drink'

    ioAction(obj93_from) = 'Action44_from'
    ioAction(obj96_in) = 'Action44_from'
;

obj123: class349_give
    verb = 'bring' 'offer' 'give' 'sell'

    doDefault(arg1, arg2, arg3) = {
        if (objwords(1) == ['A']) {
            obj20.prop506 = 'You can only give one object at a time.';
            return [];
        }
        pass doDefault;
    }
;

obj124: class384_pull
    verb = 'pull'

    ioAction(obj68_with) = 'Action46_with'
;

obj125_read: class82
    verb = 'read'

    sdesc = "read"

    doAction = 'Action47_read'
;

obj126: class361_throw
    verb = 'throw' 'toss'

    doAction = 'Action48'
    ioAction(obj98_off) = 'Action49_off'
    ioAction(obj187_over) = 'Action50_over'
    ioAction(obj96_in) = 'Action13_in'
    ioAction(obj189_through) = 'Action7_through'
    ioAction(obj91_on) = 'Action53_on'
;

obj127_at: class184
    preposition = 'at'

    sdesc = "at"
;

obj128_stand_on: class82
    verb = 'stand on'

    sdesc = "stand on"

    doAction = 'Action54_stand_on'
;

obj129_stand: class82
    verb = 'stand up' 'stand' 'get up'

    sdesc = "stand"

    action(arg1) = {
        if (arg1.location == nil || arg1.location.location == nil) {
            "%You're% already standing! ";
        } else {
            arg1.location.doAction151_get_out_of(arg1);
        }
    }
;

obj130: class82
    verb = 'hello' 'greetings' 'hi'

    action(arg1) = { "Nice weather we've been having.\n"; }
;

obj131: class350_show
    verb = 'show'

    doDefault(arg1, arg2, arg3) = {
        if (objwords(1) == ['A']) {
            obj20.prop506 = 'You can only show one object at a time.';
            return [];
        }
        pass doDefault;
    }
;

obj132: class359_clean
    verb = 'clean' 'clear' 'wipe'
;

obj133: class383_say
    verb = 'say'

    ioAction(obj52_to) = 'Action55_to'
;

obj134_yell_at: class380
    verb = 'shout at' 'shout' 'yell at' 'yell'

    sdesc = "yell at"

    action(arg1) = {
        local local1 = Me.location;

        if (isclass(local1, obj217)) {
            "You open your mouth and let loose an unrestrained scream that echoes away  into the ocean and sends a glittering swarm of bubbles surface ward.  ";
        } else if (isclass(local1, obj237)) {
            "You let out a scream that reverberates through the hollow chamber and sets  your ears ringing.  ";
        } else if (local1 == obj381___Grotto__) {
            "You try to shout, but only a parched whisper emerges from your raw throat.  ";
        } else {
            "You throw back your head and let out a roar that rolls across the  <<(isclass(Me.location, obj228) ? "ocean" : "beach")>>, startling several <<(isclass(Me.location, obj228) ? "gulls" : "passerby")>>.  ";
        }
    }

    doAction = 'Action56_yell_at'
;

obj135_move: class82
    verb = 'move'

    sdesc = "move"

    ioAction(obj68_with) = 'Action57_move_with'
    ioAction(obj52_to) = 'Action58_move_to'
    doAction = 'Action59_move'
;

obj136_fasten: class82
    verb = 'buckle up' 'buckle' 'fasten'

    sdesc = "fasten"

    doAction = 'Action60_fasten'
;

obj137_unfasten: class82
    verb = 'unbuckle' 'unfasten'

    sdesc = "unfasten"

    doAction = 'Action61_unfasten'
;

obj138_unplug: class82
    verb = 'unplug'

    sdesc = "unplug"

    ioAction(obj93_from) = 'Action62_unplug_from'
    doAction = 'Action63_unplug'
;

obj139_look_under: class82
    verb = 'l beneath' 'l under' 'look beneath' 'look under'

    sdesc = "look under"

    doAction = 'Action64_look_under'
;

obj140_look_behind: class82
    verb = 'l behind' 'look behind'

    sdesc = "look behind"

    doAction = 'Action65_look_behind'
;

obj141_type: class82
    verb = 'type'

    sdesc = "type"

    prepDefault = obj91_on

    ioAction(obj91_on) = 'Action66_type_on'
;

obj142_lock: class82
    verb = 'lock'

    sdesc = "lock"

    prepDefault = obj68_with

    ioAction(obj68_with) = 'Action67_lock_with'
    doAction = 'Action68_lock'
;

obj143_unlock: class82
    verb = 'unlock'

    sdesc = "unlock"

    prepDefault = obj68_with

    ioAction(obj68_with) = 'Action69_unlock_with'
    doAction = 'Action70_unlock'
;

obj144: class371_detach
    verb = 'untie' 'detach' 'disconnect'

    ioAction(obj68_with) = 'Action71_with'
;

obj145: class399
    verb = 'sleep'

    action(arg1) = { "It occurs to you that, even in the unlikely event that you should want to sleep here,  you're too wound up to sleep anyway.  "; }
;

obj146_poke: class82
    verb = 'jab' 'poke'

    sdesc = "poke"

    doAction = 'Action72_poke'
;

obj147_touch: class82, class83
    verb = 'touch' 'feel'

    sdesc = "touch"

    doAction = 'Action73_touch'
;

obj148: class323_move_north
    verb = 'drag north' 'move n' 'move north' 'pull north' 'push n' 'push north'
;

obj149: class324_move_south
    verb = 'drag south' 'move s' 'move south' 'pull south' 'push s' 'push south'
;

obj150: class325_move_east
    verb = 'drag east' 'move e' 'move east' 'pull east' 'push e' 'push east'
;

obj151: class326_move_west
    verb = 'drag west' 'move w' 'move west' 'pull west' 'push w' 'push west'
;

obj152: class327_move_northeast
    verb = 'drag ne' 'drag northeast' 'move ne' 'move northeast' 'pull ne' 'pull northeast' 'push ne' 'push northeast'
;

obj153: class328_move_northwest
    verb = 'drag nw' 'drag northwest' 'move nw' 'move northwest' 'pull nw' 'pull northwest' 'push nw' 'push northwest'
;

obj154: class329_move_southeast
    verb = 'drag se' 'drag southeast' 'move se' 'move southeast' 'pull se' 'pull southeast' 'push se' 'push southeast'
;

obj155: class330_move_southwest
    verb = 'drag sw' 'drag southwest' 'move sw' 'move southwest' 'pull sw' 'pull southwest' 'push sw' 'push southwest'
;

obj156_center: class82
    verb = 'center'

    sdesc = "center"

    doAction = 'Action74_center'
;

obj157: class382_search
    verb = 'search through' 'search'

    ioAction(obj68_with) = 'Action75_with'
;

class class158: class82, class83
    prop464 = true
;

obj159: class158
    verb = 'e' 'east' 'go east'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = { return arg1.location.prop304; }
;

obj160: class158
    verb = 'south' 's' 'go south'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = { return arg1.location.prop303; }
;

obj161: class158
    verb = 'north' 'n' 'go north'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = { return arg1.location.prop302; }
;

obj162: class158
    verb = 'w' 'west' 'go west'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = { return arg1.location.prop305; }
;

obj163: class158
    verb = 'northeast' 'ne' 'go northeast' 'go ne'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = { return arg1.location.prop308; }
;

obj164: class158
    verb = 'northwest' 'go northwest' 'go nw' 'nw'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = { return arg1.location.prop309; }
;

obj165: class158
    verb = 'southeast' 'go southeast' 'go se' 'se'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = { return arg1.location.prop310; }
;

obj166: class158
    verb = 'southwest' 'go southwest' 'go sw' 'sw'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = { return arg1.location.prop311; }
;

obj167_enter: class158
    verb = 'enter' 'go in' 'in'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    sdesc = "enter"

    prop465(arg1) = { return arg1.location.prop312; }

    doAction = 'Action76_enter'
    ioAction(obj91_on) = 'Action77_enter_on'
    ioAction(obj96_in) = 'Action78_enter_in'
    ioAction(obj68_with) = 'Action79_enter_with'
;

obj168: class322
    verb = 'climb down' 'd' 'down' 'go down'
;

obj169: class158
    verb = 'u' 'go up' 'up'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = { return arg1.location.prop306; }
;

class class170: class82, class83
    prop472 = true
;

obj171: class170
    verb = 'quit'

    prop473(arg1) = {
        local local1;

        "Do you really want to quit? (YES or NO) > ";
        local1 = yorn();
        "\b";
        if (local1 == 1) {
            fun15();
            quit();
        } else {
            "Okay. ";
        }
    }

    action(arg1) = {
        self.prop473(arg1);
        abort;
    }
;

obj172: class170
    verb = 'verbose'

    prop474(arg1) = {
        "Okay, now in VERBOSE mode.\n";
        obj20.prop294 = true;
        Me.location.lookAround(true);
    }

    action(arg1) = {
        self.prop474(arg1);
        abort;
    }
;

obj173: class170
    verb = 'brief' 'terse'

    prop475(arg1) = {
        "Okay, now in TERSE mode.\n";
        obj20.prop294 = nil;
    }

    action(arg1) = {
        self.prop475(arg1);
        abort;
    }
;

obj174: class345
    verb = 'score' 'status'

    prop476(arg1) = { obj346.prop736; }
;

obj175_save: class170
    verb = 'save'

    sdesc = "save"

    prop372(arg1) = {
        local local1;

        local1 = askfile('File to save game in');
        if (local1 == nil || local1 == '') {
            "Failed. ";
            return nil;
        } else if (save(local1)) {
            "Saved failed. ";
            return nil;
        } else {
            "Saved. ";
            return true;
        }
    }

    action(arg1) = {
        self.prop372(arg1);
        abort;
    }

    doAction = 'Action80_save'
;

obj176_restore: class170
    verb = 'restore'

    sdesc = "restore"

    prop374(arg1) = {
        local local1;

        local1 = askfile('File to restore game from');
        if (local1 == nil || local1 == '') {
            "Failed. ";
            return nil;
        } else if (restore(local1)) {
            "Restore failed. ";
            return nil;
        } else {
            fun26(obj20.prop139, obj20.prop138);
            "Restored.\b";
            Me.location.lookAround(true);
            return true;
        }
    }

    action(arg1) = {
        self.prop374(arg1);
        abort;
    }

    doAction = 'Action81_restore'
;

obj177: class170
    verb = 'script'

    prop376(arg1) = {
        local local1;

        local1 = askfile('File to write transcript to');
        if (local1 == nil || local1 == '') {
            "Failed. ";
        } else {
            logging(local1);
            "All text will now be saved to the script file. Type UNSCRIPT at any time to discontinue scripting.";
        }
    }

    action(arg1) = {
        self.prop376(arg1);
        abort;
    }

    doAction = 'Action82'
;

obj178: class170
    verb = 'unscript'

    prop477(arg1) = {
        logging(nil);
        "Script closed.\n";
    }

    action(arg1) = {
        self.prop477(arg1);
        abort;
    }
;

obj179: class170
    verb = 'restart'

    prop478(arg1) = {
        local local1;

      label55846:
        if (true) {
            "Are you sure you want to start over? (YES or NO) > ";
            local1 = yorn();
            if (local1 == 1) {
                "\n";
                fun26(0, 0);
                restart(&fun19, obj20.prop479);
                goto label55994;
            } else if (local1 == 0) {
                "\nOkay.\n";
                goto label55994;
            }
            goto label55846;
        }
      label55994:
    }

    action(arg1) = {
        self.prop478(arg1);
        abort;
    }
;

obj180: class170
    verb = 'version'

    prop480(arg1) = { obj181_Release_1_0_4__8_2_9.sdesc; }

    action(arg1) = {
        self.prop480(arg1);
        abort;
    }
;

obj181_Release_1_0_4__8_2_9: object
    sdesc = "Release 1.0.4, 8/2/98."
;

obj182: class170
    verb = 'debug'

    prop481(arg1) = {
        if (debugTrace()) {
            "You can't think this game has any bugs left in it... ";
        }
    }

    action(arg1) = {
        self.prop481(arg1);
        abort;
    }
;

obj183: class170
    verb = 'undo'

    prop482(arg1) = {
        if (undo() && undo()) {
            "(Undoing one command)\b";
            Me.location.lookAround(true);
            fun26(obj20.prop139, obj20.prop138);
        } else {
            "No more undo information is available. ";
        }
    }

    action(arg1) = {
        self.prop482(arg1);
        abort;
    }
;

class class184: object
;

obj185_of: class184
    preposition = 'of'

    sdesc = "of"
;

obj186_between: class184
    preposition = 'between' 'inbetween'

    sdesc = "between"
;

obj187_over: class184
    preposition = 'over'

    sdesc = "over"
;

obj188_around: class184
    preposition = 'around'

    sdesc = "around"
;

obj189_through: class184
    preposition = 'through' 'thru'

    sdesc = "through"
;

obj190_north: class184
    preposition = 'north' 'south' 'northeast' 'southeast' 'northwest' 'southwest' 'east' 'down' 'west' 'ne' 'se' 'up' 'nw' 'sw'

    sdesc = "north"
;

obj191_under: class184
    preposition = 'under' 'beneath'

    sdesc = "under"
;

obj192_behind: class184
    preposition = 'behind'

    sdesc = "behind"
;

obj193: object
    article = 'the' 'a' 'an'
;

fun194: function {
    local local1;

    "\b*** You have died ***\b";
    fun14();
    "\bYou may restore a saved game, start over, quit, or undo the current command.\n";
  label56986:
    if (1) {
        "\nPlease enter RESTORE, RESTART, QUIT, or UNDO: >";
        local1 = upper(input());
        if (local1 == 'RESTORE') {
            local1 = askfile('File to restore');
            if (local1 == nil) {
                "Restore failed. ";
            } else if (restore(local1)) {
                "Restore failed. ";
            } else {
                Me.location.lookAround(true);
                fun26(obj20.prop139, obj20.prop138);
                abort;
            }
        } else if (local1 == 'RESTART') {
            fun26(0, 0);
            restart();
        } else if (local1 == 'QUIT') {
            fun15();
            quit();
            abort;
        } else if (local1 == 'UNDO') {
            if (undo()) {
                "(Undoing one command)\b";
                Me.location.lookAround(true);
                fun26(obj20.prop139, obj20.prop138);
                abort;
            } else {
                "Sorry, no undo information is available. ";
            }
        }
        goto label56986;
    }
}

init: function {
    "\b You follow the sand-strewn brick beach path for the last time, your thoughts a jumble of pleasant memories and angst-filled anticipation.   \b The past week has been a formless, blissful oasis of peace in your otherwise hectic, demanding life.  You spent it alternately exploring the cool shade of historic downtown Savannah and basking in the warm southern sun.  Today is the last day of your vacation  and the sun is setting fast, painting the sky with a breathtaking palette of pastel colors.  Tomorrow you'll be back in the office: answering phones, writing memos, and painfully plotting every moment of your waking life for the next month. \b This short liberty has given you an unexpected sense of perspective on  your life.  You've decided that you hate your job.  Though the realization  came as no surprise, you were slightly shocked to discover exactly how  \(much\) you hate your job.  It's not so much the work itself, as the way  it's slowly, subtly insinuated itself into your soul.  It fills your  thoughts and subverts your energies.  You feel you haven't created  anything decent in months, possibly even years. \b In fact, you're of half a mind to quit.  You've got enough cash in the bank for  an extended vacation, and with your skills, finding work will never be an issue.   You could even dedicate some time to pursuing your creative interests.   The only real obstacles are your own inertia and an overblown sense of loyalty  that goes unreciprocated anyway.  It feels like all you'd need is a little more  convincing that there's something more to life than constant, mind-numbing labor. \b Caught as you are between reverie and dread, you barely notice as your freshly callused feet carry you to the foot of the boardwalk... \b \n\(Sunset Over Savannah\) \nAn Existential Vacation, by Ivan Cockrum. \nWinner of the 1997 XYZZY Award for Best Writing. \nDeveloped with TADS, the Text Adventure Development System. \bType \(INFO\) to learn about the game or its author.  Type \(HELP\) for online hints. \b ";
    setdaemon(&fun9, nil);
    Me.location = obj199___Beach_Path__;
    obj199___Beach_Path__.lookAround(true);
    obj199___Beach_Path__.prop293 = true;
    obj199___Beach_Path__.prop295;
    randomize();
    setdaemon(&fun202, nil);
    fun26(0, 0);
    "\bYour stomach grumbles at the sight of the boiled peanut sign.  You realize  that, in your agitated state, you've completely forgotten to eat dinner.  ";
}

pardon: function {
    local local1 = ['Rootabaga?  ', 'Mumblemumble?  ', 'What?  ', 'Beg pardon?  ', 'Sorry?  ', 'Huh?  '];

    say(local1[rand(length(local1))]);
}

fun197: function(arg1) {
    local local1, local2, local3, local4;

    obj20.prop450 = obj20.prop450 + 1;
    local1 = obj20.prop450;
    local2 = obj20.prop451;
    if (local1 == local2 || local1 == local2 + 10 || local1 == local2 + 20) {
        "\bYou're feeling a bit drowsy; you should find a comfortable place to sleep. ";
    } else if (local1 == local2 + 25 || local1 == local2 + 30) {
        "\bYou really should find someplace to sleep soon, or you'll probably pass out from exhaustion. ";
    } else if (local1 >= local2 + 35) {
        obj20.prop450 = 0;
        if (Me.location.prop164 || Me.location.prop154) {
            "\bYou find yourself unable to stay awake any longer. Fortunately, you are <<Me.location.prop149>> <<Me.location.adesc>>, so you gently slip off into unconsciousness. \b* * * * * \bYou awake some time later, feeling refreshed. ";
        } else {
            "\bYou find yourself unable to stay awake any longer. You pass out, falling to the ground. \b* * * * * \bYou awaken, feeling somewhat the worse for wear. You get up and dust yourself off. ";
            local3 = Me.contents;
          label60606:
            if (car(local3)) {
                local4 = car(local3);
                if (!local4.prop128) {
                    local4.moveInto(Me.location);
                }
                local3 = cdr(local3);
                goto label60606;
            }
        }
    }
}

fun198: function(arg1) {
    local local1, local2;

    obj20.prop283 = obj20.prop283 + 1;
    local1 = obj20.prop285;
    local2 = obj20.prop283;
    if (local2 == local1 || local2 == local1 + 5 || local2 == local1 + 10) {
        "\bYou're feeling a bit peckish. Perhaps it would be a good time to find something to eat. ";
    } else if (local2 == local1 + 15 || local2 == local1 + 20 || local2 == local1 + 25) {
        "\bYou're feeling really hungry. You should find some food soon or you'll pass out from lack of nutrition. ";
    } else if (local2 == local1 + 30 || local2 == local1 + 35) {
        "\bYou can't go much longer without food. ";
    } else if (local2 >= local1 + 40) {
        "\bYou simply can't go on any longer without food. You perish from lack of nutrition. ";
        fun194();
    }
}

obj199___Beach_Path__: obj474
    noun = 'loc-path'

    prop675 = nil

    prop676 = nil

    prop682 = 'brick'

    sdesc = "\(Beach Path\)"

    prop167 = {
        "The brick beach path ends at the foot of a cement stairway that leads  east to the Tybrisa Pavilion.   To the northeast and southeast, twin boardwalks wrap around the pavilion towards  the beach.  By one of the boardwalks is a simple public shower, while a white diving  bell stands near the entrance of a small building to the northwest.  Your hotel towers  back to the west, obscuring the sunset.   \n\tA sign advertising boiled peanuts points east, into the pavilion.   ";
        if (obj473_path.prop891) {
            if (obj212_brick.prop892 == 0) {
                "\n\tThere seems to be a loose brick in the path.  ";
            } else if (obj212_brick.prop892 > 0) {
                if (obj212_brick.location == obj473_path) {
                    "\n\tWith the path breached, you could probably excavate another brick.  ";
                } else {
                    "\n\tThere's an ugly gap in the path.  ";
                }
            }
        }
    }

    prop666 = { "You can go west to your hotel, east into the pavilion, northeast or southeast  along the boardwalks, or enter the diving bell.  "; }

    prop155(arg1) = {
        if (obj473_path.prop891 == nil) {
            "As you step across the brick path, you stumble lightly on the rough bricks.  \b";
        }
        pass prop155;
    }

    prop498 = {
        if (rand(5) == 1) {
            "\bA slight gust of wind sends eddies of sand swirling over the brick path.  ";
        }
    }

    prop305 = {
        local local1, local2;

        local2 = length(obj20.prop487);
        local1 = obj20.prop486;
        if (local2 == 6) {
            "You set your feet back on the path to the hotel, but...  you're extremely conflicted over this whole idea of quitting.   If only someone or something would present you with some  convincing arguments to get you off the fence.  ";
        } else if (local2 == 5) {
            "You set your feet back on the path to the hotel, but...  you're still very confused about this whole idea of quitting.   You're going to need a lot more convincing  ";
        } else if (local2 == 4) {
            "You set your feet back on the path to the hotel, but...  You're now wavering over this whole idea of quitting, but you're still  going to need a few more convincing arguments.  ";
        } else if (local2 == 3) {
            "You set your feet back on the path to the hotel, but...  you're still quite hesitant about this whole idea of quitting.   You're not quite decided, but it would only take several  more arguments to set your mind.  ";
        } else if (local2 == 2) {
            "You set your feet back on the path to the hotel, but...  you're still a bit skittish about this whole idea of quitting.   You're not quite decided, but it would only take a couple  of more arguments to put your mind at rest.  ";
        } else if (local2 == 1) {
            "You set your feet back on the path to the hotel, and...  you're actually pretty excited about this whole idea of quitting.   If only you had one more argument to set your resolve.  ";
        } else if (local2 == 0) {
            fun201(Me);
        }
        return nil;
    }

    prop309 = {
        "You rattle the glass door of the Marine Center, but find it locked. A sign inside the door explains that the center is only open from 10am to 2pm.  However, beside the entrance is a sturdy looking white diving bell.  ";
        return nil;
    }

    prop311 = {
        "Your hotel blocks any movement in that direction.  ";
        return nil;
    }

    prop304 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "\^<<(obj212_brick.location == Me ? "brick" : "bucket")>>  in hands, you stagger up the concrete ramp.  It's a good thing the ramp was there, as you doubt you could have carried the  <<(obj212_brick.location == Me ? "brick" : "water filled bucket")>>  up all those stairs.  \b";
        } else {
            "You skip lightly up the concrete stairs to the pavilion.  \b";
        }
        return obj269___Pavilion__;
    }

    prop303 = {
        "You wander off along the dune barrier to the south, but you don't  want to get too far from your hotel, so eventually you head back.  ";
        return nil;
    }

    prop302 = {
        "You wander off along the dune barrier to the north, but you don't  want to get too far from your hotel, so eventually you head back.  ";
        return nil;
    }

    prop893 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "\^<<(obj212_brick.location == Me ? "brick" : "bucket")>>  in hands, you stagger across the wooden boardwalk to the beach.  The real trouble doesn't begin until you step off the boardwalk, when the weight of the  <<(obj212_brick.location == Me ? "brick" : "bucket")>>  drives your feet deep into the dry powdery sand.  \b";
        } else {
            "You skip along the wooden boardwalk to the beach, evoking a strong memory of the carefree summer days of your childhood.  \b";
        }
    }

    prop308 = {
        self.prop893;
        return obj450___Dry_Sand__North_of;
    }

    prop310 = {
        self.prop893;
        return obj451___Dry_Sand__South_of;
    }

    prop312 = {
        if (Me.prop894) {
            return nil;
        } else {
            "You duck your head and shoulders, and crab-walk under the lip of the bell.  \b";
            return obj363___In_the_Diving_Bell;
            "\bThe bell effectively muffles any outside sound, but an ominous low moan fills  your ears.  ";
        }
    }

    prop295 = {
        obj363___In_the_Diving_Bell.prop295;
        inherited.prop295;
    }

    prop895 = "\bA rumble in your stomach reminds you of the inviting boiled peanut sign  that pointed into the pavilion.  "
;

fun200: function { fun17(); }

fun201: function(arg1) {
    local local1, local2;

    "\b\b \t* \t*\t*\t*\t* \b\b As the last rays of the sun dip below the horizon, a scrap  of verse runs through your mind.  It's something you read on a tombstone in  Savannah's colonial cemetery. \b \"My life is like the Summer Rose, \n\t\"That opens to the morning sky; \n\"But ere the shades of evening close \n\t\"Is scattered on the ground - to die.\" \b You recall that it was penned by Richard Henry Wilde.  It was inspired by  brother James' descriptions of Florida, where he campaigned against  the Seminoles.  Richard left his epic poem unfinished after James was shot  through the heart in a duel with a fellow officer. \b You reflect on all the things you've seen and done here today.  Somehow, life  seems more precious now.  With life so short, why spend so much   time and energy on a job you hate?  Especially at the expense of the creative  pursuits that make life worth living. \b Yes, you think, it's definitely time for some change... \b\b \t* \t*\t*\t*\t* \b\b You have completed \(Sunset Over Savannah\).\b You may undo your last move, restore a saved game, start over,  view a list of fun things to try, view a list of painful things to try, or quit.\b";
  label66869:
    if (1) {
        if (!local2) {
            "\nPlease enter (U)NDO, (R)ESTORE, RE(S)TART, (F)UN, (P)AIN, or (Q)UIT: >";
        } else {
            "\nPlease enter (U)NDO, (R)ESTORE, RE(S)TART, (F)UN, (P)AIN, or (Q)UIT: >";
        }
        local2 = true;
        local1 = upper(input());
        if (local1 == 'UNDO' || local1 == 'U') {
            if (undo()) {
                "(Undoing one command)\b";
                Me.location.lookAround(true);
                fun26(0, 0);
                abort;
            } else {
                "Sorry, no undo information is available.";
            }
        } else if (local1 == 'RESTORE' || local1 == 'R') {
            local1 = askfile('File to restore');
            if (local1 == nil) {
                "Restore failed. ";
            } else if (restore(local1)) {
                "Restore failed. ";
            } else {
                fun26(0, 0);
                abort;
            }
        } else if (local1 == 'RESTART' || local1 == 'S') {
            fun26(0, 0);
            restart(&fun19, obj20.prop479);
        } else if (local1 == 'QUIT' || local1 == 'Q') {
            fun15();
            quit();
            abort;
        } else if (local1 == 'FUN' || local1 == 'F') {
            fun208('Have you tried...', obj209_Fun_things_to_try.prop488);
        } else if (local1 == 'PAIN' || local1 == 'P') {
            fun208('Things that can get you hurt...', obj210_Ways_to_get_hurt.prop488);
        }
        goto label66869;
    }
}

fun202: function(arg1) { Me.location.prop498; }

fun203: function(arg1) {
    local local1;

    local1 = obj20.prop499;
    if (local1 == 1) {
        "\bYour arms and shoulders feel a bit sore from carrying the weight of the brick.  ";
    } else if (local1 == 2) {
        "\bYou let the brick hang lower, and it relieves the soreness in your arms a bit, but your lower back strains as it's forced to pick up the slack.  ";
    } else if (local1 == 3) {
        "\bYour hands are starting to cramp from clutching the brick, and your lower back is in agony, forcing you to bend over almost double.  ";
    } else if (local1 == 4) {
        "\bFinally, you can carry the brick no more.  ";
        obj212_brick.prop500;
    }
    obj20.prop499 = obj20.prop499 + 1;
}

fun204: function(arg1) {
    if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
        "You stagger ";
        say(arg1);
        " under the <<(obj212_brick.location == Me ? "brick" : "bucket")>>'s weight.  \b";
    }
}

fun205: function(arg1) {
    local local1 = [], local2, local3;

    local2 = 1;
  label68300:
    if (local2 <= length(arg1)) {
        local3 = arg1[local2];
        if (local3.prop128 || isclass(local3, class224) || isclass(local3, class220) && length(local3.prop502) > 0 && local3 != obj225_goggles) {
        } else {
            local1 += local3;
        }
        local2 = local2 + 1;
        goto label68300;
    }
    return local1;
}

fun206: function(arg1) {
    local local1, local2;

    local1 = 1;
  label68447:
    if (local1 <= length(arg1)) {
        local2 = arg1[local1];
        if (find(local2.prop505, obj222_the_vendor)) {
        } else {
            local2.prop505 += obj222_the_vendor;
        }
        if ((!isclass(local2, class29) || local2.prop124) && local2.prop135) {
            fun206(local2.contents);
        }
        ++local1;
        goto label68447;
    }
}

fun207: function(arg1, arg2) {
    local local1, local2;

    local1 = arg1.contents;
  label68584:
    if (car(local1)) {
        local2 = car(local1);
        if (isclass(local2, class220) && length(local2.prop502) > 0) {
        } else if (!local2.prop128 && !isclass(local2, class224)) {
            if (isclass(arg2, obj228) || isclass(arg2, obj217)) {
                arg2.prop152(local2);
            } else {
                local2.moveInto(arg2);
            }
        }
        local1 = cdr(local1);
        goto label68584;
    }
}

fun208: function(arg1, arg2) {
    local local1, local2;

    local2 = length(arg2);
    local1 = 1;
  label68766:
    if (local1 <= 22 - local2 - 4) {
        "\b";
        ++local1;
        goto label68766;
    }
    "\(";
    say(arg1);
    "\)\b";
    local1 = 1;
  label68832:
    if (local1 <= local2) {
        say(local1);
        ") ";
        say(arg2[local1]);
        "\n";
        ++local1;
        goto label68832;
    }
    "\b";
}

obj209_Fun_things_to_try: class708
    sdesc = "Fun things to try"

    prop488 = ['Burying yourself in the sand?', 'Building (and destroying) a sand castle?', 'Removing your bathing suit in various places?', 'Typing "XYZZY"?', 'Saying "Hello, sailor" to the old man and asking him about the waving girl?', 'Saying "Hello, sailor" to the pirates, or cursing, greeting, or hitting them?', 'Jumping off the pavilion\'s canopy?', 'Eating the peanuts?', 'Eating the shrimp?', 'Eating the boiled crab?', 'Hitting the dragon?', 'Hitting or punching the sand castle?', 'Dropping the brick on various small items?', 'Pushing the aluminum canister out of the storage area?']
;

obj210_Ways_to_get_hurt: class708
    sdesc = "Ways to get hurt"

    prop488 = ['Drowning yourself.', 'Jumping in the diving bell.', 'Jumping from the roof of the enclosure.', 'Jumping off the pier into the sand.', 'Jumping off the pier into the sand with the brick.', 'Jumping off the pavilion canopy.', 'Trying to dig with bare hands in the cement.', 'Kicking the glass castle.', 'Punching the glass castle.', 'Putting your hand in the boiler while it\'s full of boiling water.', 'Swimming without eyegear.', 'Reaching into the fissure.', 'Climbing the benches while they\'re stacked in the north face.', 'Picking up a glass mite.', 'Dropping the brick on your feet.']
;

class class211: object
    prop138 = 0

    prop139 = 0

    prop483 = 100

    prop294 = nil

    prop450 = 0

    prop451 = 400

    prop283 = 0

    prop285 = 200

    prop315 = []
;

obj212_brick: class42
    noun = 'brick'

    adjective = 'heavy' 'loose' 'rough' 'single' 'paving'

    prop140 = 10

    prop141 = 5

    prop892 = 0

    prop131 = nil

    prop394 = true

    sdesc = {
        if (fun227(Me) == obj199___Beach_Path__) {
            "loose ";
        }
        "brick";
    }

    prop505 = [obj222_the_vendor]

    prop808 = {
        if (obj212_brick.location == Me || obj212_brick.location == obj427___By_the_Snack_Bar__) {
            "\"Hey, did you steal that from the path?  Nice going, jerk!  You know  how much effort went into bringing those bricks over here, and then  building that path with them?\"  ";
        } else {
            "\"Those bricks are really something, huh?  I mean, just think of all the  labor required to get them over here, just to dump them on the riverside.\"  ";
        }
    }

    prop167 = {
        "It's a rough, heavy looking brick.  ";
        if (self.location == obj473_path) {
            "It seems to be loose.  ";
        } else {
            "It's been ripped from its place in the path.  ";
        }
    }

    verDoAction53_on(arg1, arg2) = {
        if (self.location != arg1) {
            "You're not carrying the brick.  ";
        } else {
            "You can barely carry it, let alone throw it.  ";
        }
    }

    verDoAction48(arg1) = {
        if (self.location != arg1) {
            "You're not carrying the brick.  ";
        } else {
            "You can barely carry it, let alone throw it.  ";
        }
    }

    doAction122_drop(arg1) = { self.prop500; }

    prop838(arg1, arg2) = { self.doAction13_in(arg1, arg2); }

    prop500 = {
        local local1 = Me.location;

        obj212_brick.moveInto(local1);
        switch (local1.prop682) {
          case 'drysand':
            "It falls to the fine, powdery sand with a muffled \(thud\), nearly burying itself.  ";
            goto label72024;
          case 'wetsand':
            "It falls to the wet sand with a dull \(thud\), embedding itself nearly four  fingers deep.  ";
            goto label72024;
          case 'water':
            "It walls into the water with a loud \(glunk!\) and quickly disappears below  the waves.  ";
            obj212_brick.moveInto(obj473_path);
            obj212_brick.prop131 = nil;
            goto label72024;
          case nil:
            "It rapidly sinks out of sight.  ";
            obj212_brick.moveInto(obj473_path);
            obj212_brick.prop131 = nil;
            goto label72024;
          case 'cement':
            "It bangs to the ground with a loud, scraping \(thud\) that you feel in the  soles of your feet, and narrowly misses your toes.  ";
            goto label72024;
          case 'metal':
            "The brick falls to the bell's metal baseplate with a loud, resounding  \(clang\) that fills your ears and sets the bell to reverberating like  a gong.  The vibrations are so strong they set your feet atingle.  It takes  several moments for them to die down.  ";
            goto label72024;
        }
      label72024:
        "Relieved of the brick's weight, you quickly straighten up.  All your aching body  parts cry out in relief.  You flex your hands to loosen them up, then plant them  at your sides and bend backwards until you feel your spine crack.  Ahh!  ";
        obj20.prop499 = 0;
        remdaemon(&fun203, 0);
    }

    verDoAction153_take_off(arg1) = { self.verDoAction24(arg1); }

    doAction153_take_off(arg1) = { self.doAction24(arg1); }

    verDoAction159_pull(arg1) = {
        if (self.location == obj473_path) {
            self.verDoAction24(arg1);
        } else {
            pass verDoAction159_pull;
        }
    }

    doAction159_pull(arg1) = {
        if (self.location == obj473_path) {
            self.doAction24(arg1);
        } else {
            pass doAction159_pull;
        }
    }

    doAction24(arg1) = {
        if (fun219(Me)) {
            "You're going to need both hands free to carry that sucker.  You'll have to  drop anything else you're carrying.  ";
        } else if (obj212_brick.location == obj473_path) {
            "You rock the brick back and forth a bit, and manage to pry it from its berth.  ";
            obj212_brick.prop131 = true;
            if (obj606_gap.location == nil) {
                obj606_gap.moveInto(obj473_path);
                obj606_gap.prop293 = true;
            }
            self.prop892 = self.prop892 + 1;
        } else {
            "You rock the brick back and forth and manage to get your fingers under it.  ";
        }
        "\(Oof!\)  It's heavy!  It takes both hands to carry it, and the muscles in your lower back protest as you straighten up.  You'd better decide where you want to go now, because you won't be able to carry it for too long.  ";
        self.moveInto(arg1);
        obj20.prop499 = 0;
        setdaemon(&fun203, 0);
    }

    doAction13_in(arg1, arg2) = {
        if (arg2 == obj473_path || arg2 == obj606_gap) {
            self.moveInto(obj473_path);
            obj212_brick.prop131 = nil;
            "You position the brick over the gap in the path and, careful not to mash your  fingers, let go.  It drops into place with a satisfying \(clunk\).  ";
            self.prop892 = self.prop892 - 1;
            if (self.prop892 == 0) {
                obj606_gap.moveInto(nil);
            }
        } else if (arg2 == obj288_salt_water && obj423_ocean.location == Me.location || arg2 == obj423_ocean || arg2 == obj424_ocean_tide_surf) {
            "It tumbles into the water with a huge splash and a loud \(glunk!\), and  immediately disappears below the waves.  ";
            obj212_brick.moveInto(obj473_path);
            obj212_brick.prop131 = nil;
        } else if (arg2 == obj446_sandy_beach) {
            "It lands with a dull \(thud\), followed by a surprised scream.  It sounds like you  just missed killing someone.  ";
        } else {
            pass doAction13_in;
        }
        "Relieved of the brick's weight, you quickly straighten up.  All your aching body  parts cry out in relief.  You flex your hands to loosen them up, then plant them  at your sides and bend backwards until you feel your spine crack.  Ahh!  ";
        obj20.prop499 = 0;
        remdaemon(&fun203, 0);
    }
;

obj213_pail: class218
    noun = 'bucket' 'pail'

    adjective = 'empty'

    location = nil

    sdesc = "pail"

    prop167 = {
        "It's a large metal pail, left behind by the old man.  ";
        if (self.prop501) {
            "Currently, it's full to the brim with salt water.  ";
        }
        if (fun4(self.contents)) {
            "The pail <<(self.prop501 ? "also " : "")>>contains";
            fun7(self);
            ". ";
        }
    }

    prop504 = nil

    prop181 = 6

    prop182 = 6

    prop140 = {
        if (self.prop501) {
            return 10;
        } else {
            return 4;
        }
    }

    prop141 = 5

    prop861(arg1) = {
        local local1;

        if (arg1 == obj233_sandy_beach) {
            "You scoop handful after handful of sand into the bucket until it's completely  full.  Unfortunately, you discover that you can barely even lift all that  sand, so you kick the bucket over and empty it out again.  ";
        } else if (arg1 == obj423_ocean) {
            "You dip the bucket into the ocean, where it fills up immediately.   The added weight of the water in the bucket staggers you, forcing you to hold it with both hands.  ";
            if (obj436_conch_shell.location == Me) {
                "You set the conch in the pail to keep from losing it in the surf.  ";
                obj436_conch_shell.moveInto(obj213_pail);
            }
            local1 = fun219(Me);
            if (local1 > 1) {
                obj213_pail.moveInto(nil);
                "Unfortunately, you lose ";
                if (local1 > 2) {
                    "the other stuff";
                } else {
                    fun221(Me);
                }
                " you were carrying in the process.  ";
                fun207(Me, Me.location);
                obj213_pail.moveInto(Me);
            }
            obj213_pail.prop501 = true;
            obj213_pail.prop504 = 'salt water';
            if (fun4(self.contents)) {
                fun267(self.contents);
            }
        } else {
            "The <<say(arg1.prop504)>> in <<arg1.thedesc>> would hardly cover  the bottom of the bucket, so you decide to leave it in <<arg1.thedesc>>.";
        }
    }

    prop505 = [obj305_the_old_man]

    prop807 = { return obj673_pail.prop807; }
;

class class215: class42
    prop708 = 2

    prop709 = []

    prop502 = []

    prop133 = true

    verDoAction19_out(arg1, arg2) = {
        if (isclass(arg2, class220) && find(arg2.prop502, self)) {
            self.verDoAction149_detach_from(arg1, arg2);
        } else {
            pass verDoAction19_out;
        }
    }

    doAction19_out(arg1, arg2) = {
        if (isclass(arg2, class220) && find(arg2.prop502, self)) {
            self.doAction149_detach_from(arg1, arg2);
        } else {
            pass doAction19_out;
        }
    }

    verDoAction18_off(arg1, arg2) = {
        if (isclass(arg2, class220) && find(arg2.prop502, self)) {
            self.verDoAction149_detach_from(arg1, arg2);
        } else {
            pass verDoAction18_off;
        }
    }

    doAction18_off(arg1, arg2) = {
        if (isclass(arg2, class220) && find(arg2.prop502, self)) {
            self.doAction149_detach_from(arg1, arg2);
        } else {
            pass doAction18_off;
        }
    }

    verIoAction121_drop_on(arg1) = { "You can't put anything on <<self.thedesc>>"; }

    ioAction121_drop_on(arg1, arg2) = { self.verIoAction121_drop_on(arg1); }

    prop167 = {
        local local1 = length(self.prop502);

        if (local1 > 0) {
            "Currently, it's tied to ";
            self.prop502[1].adesc;
            if (local1 > 1) {
                " and <<self.prop502[2].adesc>>";
            }
            ".  ";
        }
    }

    doSynonym('Action150_detach') = 'Action153_take_off'

    verDoAction150_detach(arg1) = {
        if (length(self.prop502) == 0) {
            "\^<<self.thedesc>> isn't attached to anything.  ";
        } else if (length(self.prop502) > 1) {
            "You'll have to specify whether you'd like to detach it from  <<self.prop502[1].thedesc>> or <<self.prop502[2].thedesc>>.  ";
        } else {
            self.verDoAction149_detach_from(arg1, self.prop502[1]);
        }
    }

    doAction150_detach(arg1) = { self.doAction149_detach_from(arg1, self.prop502[1]); }

    doSynonym('Action149_detach_from') = 'Action154_take_off_from'

    verDoAction149_detach_from(arg1, arg2) = {
        local local1, local2;

        local2 = length(self.prop502);
        if (arg2 == self) {
            "You can't detach <<self.thedesc>> from itself.  ";
            return;
        }
        if (arg2 == Me || arg2 == obj295_body) {
            if (find(self.prop502, obj296_wrist)) {
                arg2 = obj296_wrist;
            } else if (find(self.prop502, obj297_ankle)) {
                arg2 = obj297_ankle;
            } else if (find(self.prop502, obj298_waist)) {
                arg2 = obj298_waist;
            }
        }
        if (find(self.prop502, arg2) == nil) {
            "\^<<self.thedesc>> isn't attached to <<arg2.thedesc>>.";
            return;
        }
        if (local2 > 1) {
            if (arg2 == self.prop502[1]) {
                local1 = self.prop502[2];
            } else {
                local1 = self.prop502[1];
            }
        }
        if (!isclass(arg2, class33) && arg2.location != Me) {
            if (local1 == nil) {
            } else if (!isclass(local1, class33)) {
                "You have to be holding <<arg2.thedesc>> to remove <<self.thedesc>> from it.  ";
                return;
            }
        }
        if (isclass(Me.location, obj265) || isclass(Me.location, obj217) && arg2 != obj299_deep_fissure && arg2 != obj300_busted_trap) {
            "You try to untie <<self.thedesc>> from <<arg2.thedesc>>,  but find it difficult to summon enough coordination while bobbing in the currents.  ";
        }
    }

    doAction149_detach_from(arg1, arg2) = {
        local local1, local2, local3, local4;

        if (arg2 == Me || arg2 == obj295_body) {
            if (find(self.prop502, obj296_wrist)) {
                arg2 = obj296_wrist;
            } else if (find(self.prop502, obj297_ankle)) {
                arg2 = obj297_ankle;
            } else if (find(self.prop502, obj298_waist)) {
                arg2 = obj298_waist;
            }
        }
        local4 = arg2.prop710;
        if (local4 != nil && isclass(local4, class301_your_body)) {
            arg2.prop128 = nil;
        }
        self.prop502 -= arg2;
        arg2.prop502 -= self;
        local3 = length(self.prop502);
        if (local3 > 0) {
            local1 = self.prop502[1];
        }
        if (local3 > 1) {
            local2 = self.prop502[2];
        }
        if (isclass(arg2, class301_your_body)) {
            self.prop128 = nil;
            if (local3 > 0) {
                local1.prop128 = nil;
            }
        }
        if (local3 == 0) {
            self.moveInto(Me);
        } else if (local3 > 0) {
            if (!arg2.prop137) {
                arg2.moveInto(Me);
            } else if (arg2.prop137) {
                self.moveInto(Me);
                local1.moveInto(Me);
            }
        }
        self.prop711(arg1, arg2);
    }

    prop711(arg1, arg2) = {
        "You detach <<self.thedesc>> from <<arg2.thedesc>>";
        if (length(self.prop502)) {
            ", separating <<(arg2.prop509 && !isclass(arg2, class301_your_body) ? "them" : "it")>>  from <<self.prop502[1].thedesc>>";
        }
        ".  ";
    }

    verIoAction148_attach_to(arg1) = { }

    ioAction148_attach_to(arg1, arg2) = { arg2.doAction148_attach_to(arg1, self); }

    verDoAction148_attach_to(arg1, arg2) = {
        local local1, local2, local3, local4, local5;

        local5 = length(self.prop502);
        if (local5 > 0) {
            local3 = self.prop502[1];
        }
        if (local5 > 1) {
            local4 = self.prop502[2];
        }
        local1 = 'tie';
        local2 = 'untying';
        if (local5 == 0 && self.location != Me) {
            "You need to be holding <<self.thedesc>> before you can attach it to anything.  ";
        } else if (arg2 == self) {
            "You can't attach <<self.thedesc>> to itself.  ";
        } else if (self == obj302_length_of_rope && arg2 == obj255_white_rubber_strap || self == obj255_white_rubber_strap && arg2 == obj302_length_of_rope) {
            "You tie the rope and the strap together, but you sense that it serves  no purpose, so you untie them.  ";
        } else if (isclass(arg2, class220) == nil) {
            "You can't tie <<self.thedesc>> to <<arg2.thedesc>>.";
        } else if (find(arg2.prop502, self) != nil) {
            "\^<<self.thedesc>> is already tied to <<arg2.thedesc>>.";
        } else if (local5 >= self.prop708) {
            "You can't tie <<self.thedesc>> to <<arg2.thedesc>> without untying it from ";
            local3.thedesc;
            if (local5 > 1) {
                " or <<local4.thedesc>>";
            }
            " first.  ";
        } else if (length(arg2.prop502) >= arg2.prop708) {
            "You'll have to remove <<arg2.prop502[1].thedesc>> ";
            if (length(arg2.prop502) > 1) {
                "or <<arg2.prop502[1].thedesc>>";
            }
            "before you can tie <<self.thedesc>> to it.  ";
        } else if (local5 == 1 && isclass(local3, class33) && isclass(arg2, class33)) {
            "\^<<self.thedesc>> isn't long enough to join <<local3.thedesc>> to <<arg2.thedesc>>.  ";
        } else if (arg2.location != Me && !isclass(arg2, class33)) {
            "You need to be holding <<arg2.thedesc>> before you can attach anything to it.  ";
        } else if (local5 == 1 && !isclass(local3, class33) && local3.location != Me) {
            "You'll have to take <<local3.thedesc>> that <<self.thedesc>> is tied to, first.  ";
        } else if (local5 == 1 && (local3 == obj303_broken_stave && (arg2 == obj296_wrist || arg2 == obj297_ankle))) {
            "The stave is too big and bulky to hang from <<arg2.thedesc>>.  ";
        } else if (local5 == 1 && (local3 == obj296_wrist || local3 == obj297_ankle) && arg2 == obj303_broken_stave) {
            "The stave is too big and bulky to hang from your wrists or ankles.  ";
        } else if (isclass(Me.location, obj265) || isclass(Me.location, obj217)) {
            "You try to tie <<self.thedesc>> to <<arg2.thedesc>>, but find it difficult to summon enough coordination while bobbing in the currents.  ";
        } else if (arg2.(self.prop712) != nil) {
        }
    }

    doAction148_attach_to(arg1, arg2) = {
        local local1, local2, local3;

        local3 = length(self.prop502);
        if (local3 > 0) {
            local1 = self.prop502[1];
        }
        if (local3 > 1) {
            local2 = self.prop502[2];
        }
        if (local3 == 0) {
            self.moveInto(arg2.location);
        } else if (local3 == 1) {
            if (isclass(arg2, class33)) {
                local1.moveInto(arg2.location);
            } else {
                arg2.moveInto(local1.location);
            }
        }
        if (isclass(arg2, class301_your_body)) {
            self.prop128 = true;
            if (local3 > 0) {
                local1.prop128 = true;
            }
        } else if (length(self.prop502) && isclass(local1, class301_your_body)) {
            arg2.prop128 = true;
        }
        self.prop502 += arg2;
        arg2.prop502 += self;
        self.prop713(arg1, arg2);
    }

    prop713(arg1, arg2) = {
        "You tie ";
        if (length(self.prop502) > 1) {
            "the other end of ";
        }
        "<<self.thedesc>> to <<arg2.thedesc>>";
        if (length(self.prop502) > 1) {
            if (isclass(self.prop502[1], class33)) {
                ", joining <<self.prop502[2].thedesc>> to <<self.prop502[1].thedesc>>";
            } else {
                ", joining <<self.prop502[1].thedesc>> to <<self.prop502[2].thedesc>>";
            }
        }
        ".  ";
    }

    verDoAction24(arg1) = {
        local local1 = length(self.prop502);

        if (self.location == arg1) {
            "You already have <<self.thedesc>>.  ";
        } else if (local1 > 0 && isclass(self.prop502[1], class33)) {
            "You'll have to untie <<self.thedesc>> from <<self.prop502[1].thedesc>> first.  ";
        } else if (local1 > 1 && isclass(self.prop502[2], class33)) {
            "You'll have to untie <<self.thedesc>> from <<self.prop502[2].thedesc>> first.  ";
        } else if (isclass(arg1.location, obj217) && isclass(self.location, obj265) && find(self.prop502, obj303_broken_stave) != nil) {
            "The buoyancy of the stave prevents you from pulling it under.  ";
        }
    }

    doAction24(arg1) = {
        local local1, local2, local3, local4, local5;

        local3 = length(self.prop502);
        if (local3 > 0) {
            local1 = self.prop502[1];
        }
        if (local3 > 1) {
            local2 = self.prop502[2];
        }
        if (local3 == 0) {
            pass doAction24;
        } else {
            local4 = fun11(arg1.contents) + fun11(self.prop515);
            local5 = fun10(arg1.contents);
            if (!arg1.prop125(self)) {
                local5 = local5 + fun10(self.prop515);
            }
            if (local5 > arg1.prop181 || local4 > arg1.prop182) {
                "You're carrying too much to take <<self.thedesc>>";
                if (local2 != nil) {
                    ", <<local2.thedesc>>";
                }
                " and <<local1.thedesc>>.  ";
            } else {
                self.moveInto(arg1);
                "You take <<self.thedesc>>";
                if (local2 != nil) {
                    ", <<local2.thedesc>>";
                }
                " and <<local1.thedesc>>.  ";
            }
        }
    }

    verDoAction13_in(arg1, arg2) = {
        if (inherited.verDoAction13_in(arg1, arg2)) {
        } else if (length(self.prop714)) {
            self.prop715(arg1, arg2);
        }
    }

    verDoAction121_drop_on(arg1, arg2) = {
        if (inherited.verDoAction121_drop_on(arg1, arg2)) {
        } else if (length(self.prop714)) {
            self.prop715(arg1, arg2);
        }
    }

    doAction121_drop_on(arg1, arg2) = {
        if (length(self.prop502) == 0) {
            pass doAction121_drop_on;
        } else {
            self.prop716(arg1, arg2);
        }
    }

    doAction13_in(arg1, arg2) = {
        if (length(self.prop502) == 0) {
            pass doAction13_in;
        } else {
            self.prop716(arg1, arg2);
        }
    }

    prop715(arg1, arg2) = {
        local local1, local2, local3;

        local1 = self.prop502;
        if (local1 > 0) {
            local2 = self.prop502[1];
        }
        if (local1 > 1) {
            local3 = self.prop502[2];
        }
        if (find(self.prop515, arg2) != nil) {
            "Not while <<self.thedesc>> is tied to ";
            if (local1 > 1) {
                ", <<local3.thedesc>> and ";
            }
            "<<local2.thedesc>>.  ";
        } else if (local1 > 1 && (isclass(local2, class33) || isclass(local3, class33))) {
            "Not while <<self.thedesc>> joins <<local2.thedesc>> to <<local3.thedesc>>.  ";
        } else if (isclass(local2, class33)) {
            "Not while <<self.thedesc>> is joined to <<local2.thedesc>>.  ";
        } else if (fun11(arg2.contents + self.prop515) > arg2.prop182) {
            "You can't fit <<self.thedesc>>";
            if (local1 > 1) {
                ", <<local3.thedesc>>";
            }
            " and <<local2.thedesc>> <<arg2.prop149>>to <<arg2.thedesc>>.  ";
        } else if (fun10(arg2.contents + self.prop515) > arg2.prop181) {
            "\^<<arg2.thedesc>> can't hold <<self.thedesc>>";
            if (local1 > 1) {
                ", <<local3.thedesc>>";
            }
            " and <<local2.thedesc>> <<arg2.prop149>>to <<arg2.thedesc>>.  ";
        }
    }

    prop716(arg1, arg2) = {
        local local1, local2, local3;

        local1 = length(self.prop502);
        if (local1 > 0) {
            local2 = self.prop502[1];
        }
        if (local1 > 1) {
            local3 = self.prop502[2];
        }
        self.moveInto(arg2);
        "You <<arg2.prop511>> <<self.thedesc>>";
        if (local1 > 1) {
            ", <<local3.thedesc>>";
        }
        " and <<local2.thedesc>> <<arg2.prop149>>to <<arg2.thedesc>>.  ";
        if (isclass(arg2, class218) && arg2.prop504 == 'salt water') {
            fun267(self.prop515);
        }
    }

    prop515 = {
        local local1 = [] + self;

        if (length(self.prop502) > 0) {
            local1 += self.prop502[1];
        }
        if (length(self.prop502) > 1) {
            local1 += self.prop502[2];
        }
        return local1;
    }

    verDoAction122_drop(arg1) = {
        local local1 = length(self.prop502);

        if (!arg1.prop125(self)) {
            "You don't have <<self.thedesc>>.  ";
        } else {
            self.prop177(arg1);
        }
    }

    prop177(arg1) = {
        local local1 = length(self.prop502);

        if (local1 > 0 && isclass(self.prop502[1], class33)) {
            "You'll have to untie <<self.thedesc>> from <<self.prop502[1].thedesc>> first.  ";
        } else if (local1 > 1 && isclass(self.prop502[2], class33)) {
            "You'll have to untie <<self.thedesc>> from <<self.prop502[2].thedesc>> first.  ";
        } else {
            pass prop177;
        }
    }

    moveInto(arg1) = {
        local local1, local2, local3, local4;

        local4 = length(self.prop502);
        local1 = self.location;
        if (local4 == 0) {
            pass moveInto;
            exit;
        }
        inherited.moveInto(arg1);
        if (local4 > 0) {
            local2 = self.prop502[1];
        }
        if (local4 > 1) {
            local3 = self.prop502[2];
        }
        if (local2 != nil && local2.location != arg1) {
            local2.moveInto(arg1);
        }
        if (local3 != nil && local3.location != arg1) {
            local3.moveInto(arg1);
        }
    }

    prop717 = {
        local local1, local2, local3;

        local1 = length(self.prop502);
        if (local1 > 0 && self != obj225_goggles) {
            local2 = self.prop502[1];
        }
        if (local1 > 1) {
            local3 = self.prop502[2];
        }
        if (local2 != nil && local3 != nil) {
            "\^<<self.thedesc>> is joined to <<local2.thedesc>> and <<local3.thedesc>>.  ";
        } else if (local2 != nil) {
            "\^<<self.thedesc>> hangs limply from <<local2.adesc>>.  ";
        } else {
            return nil;
        }
    }

    prop657 = {
        outhide(true);
        if (find(self.prop502, obj296_wrist) != nil) {
            self.doAction149_detach_from(Me, obj296_wrist);
        }
        if (find(self.prop502, obj297_ankle) != nil) {
            self.doAction149_detach_from(Me, obj297_ankle);
        }
        if (find(self.prop502, obj298_waist) != nil) {
            self.doAction149_detach_from(Me, obj298_waist);
        }
        outhide(nil);
    }
;

obj216: class31
    prop882 = true
;

obj217: obj469, obj216
    prop485 = 'cool'

    prop873 = true

    prop682 = {
        if (self.prop687 == nil) {
            return 'mud';
        } else {
            return nil;
        }
    }

    prop683 = { "The ocean floor is covered with a thin layer of suspended mud, which waves  in the current like a single enormous organism.  "; }

    prop692 = "The light of the setting sun shimmers on the surface above you.  "

    prop498 = {
        if (rand(4) == 1) {
            say(self.prop885[rand(length(self.prop885))]);
        }
    }

    prop885 = ['\bA big wave must have broken somewhere above you.  You can feel the dull  percussion of it throughout your body.  ', '\bA large red fish darts by, just barely out of reach.  ', '\bA few small bubbles escape your lips, glittering in the light as they rise  towards the surface.  ']

    prop693 = { "You struggle to remove your shorts and suit while holding your breath underwater.   You nearly lose your shorts as you try to slip them down around your ankles.   Since you don't want to lose them, you slip them back on and give up on the idea of  skinny dipping.  "; }

    prop307 = {
        "The ocean muck oozes through your fingers, but there doesn't seem to be anything  hidden beneath it.  ";
        return nil;
    }

    prop156 = {
        "The dim light and pulsing waves both serve to confound your sense of direction.   Nevertheless, you kick off in what you believe to be the right direction.  ";
        return nil;
    }
;

class class218: class74
    prop135 = true

    prop864 = true

    prop504 = nil

    prop501 = nil

    prop167 = { self.doAction26_look_in(Me); }

    prop819(arg1) = {
        self.prop501 = true;
        self.prop504 = arg1;
    }

    prop820 = {
        self.prop501 = nil;
        self.prop504 = nil;
    }

    verDoAction171_fill(arg1) = { }

    doAction171_fill(arg1) = {
        if (obj233_sandy_beach.location == Me.location) {
            self.doAction172_fill_from(arg1, obj233_sandy_beach);
        } else if (obj423_ocean.location == Me.location) {
            self.doAction172_fill_from(arg1, obj423_ocean);
        } else {
            "You'll have to specify something from which to fill it.  ";
        }
    }

    verIoAction173_fill_with(arg1) = { }

    verDoAction173_fill_with(arg1, arg2) = { }

    ioAction173_fill_with(arg1, arg2) = { self.ioAction172_fill_from(arg1, arg2); }

    doAction173_fill_with(arg1, arg2) = { self.doAction172_fill_from(arg1, arg2); }

    verIoAction172_fill_from(arg1) = { }

    verDoAction172_fill_from(arg1, arg2) = { }

    ioAction172_fill_from(arg1, arg2) = { arg2.doAction172_fill_from(arg1, self); }

    doAction172_fill_from(arg1, arg2) = {
        obj456.prop852(arg2, self);
        obj456.prop853(arg2, self);
        obj456.prop854(arg2);
        obj456.prop855(arg2, self);
        obj456.prop856(arg2);
        obj456.prop857(arg2, self);
        obj456.prop859(arg2);
        obj456.prop860(arg2, self);
    }

    verDoAction26_look_in(arg1) = {
        if (isclass(self, obj442)) {
            pass verDoAction26_look_in;
        }
    }

    doAction26_look_in(arg1) = {
        if (isclass(self, obj442)) {
            pass doAction26_look_in;
        } else if (!isclass(self, class75) && self.prop178 && !self.prop124) {
            "\^<<self.thedesc>> is closed.  ";
        } else if (self.prop135) {
            obj456.prop862(self);
        } else {
            "It appears to be empty.  ";
        }
    }

    verIoAction170_empty_from(arg1) = { self.verDoAction167_empty(arg1); }

    ioAction170_empty_from(arg1, arg2) = { self.doAction167_empty(arg1); }

    verDoAction167_empty(arg1) = { }

    doAction167_empty(arg1) = {
        local local1, local2;

        local1 = Me.location;
        local2 = self.prop504;
        obj456.prop856(self);
        obj456.prop853(self, obj233_sandy_beach);
        obj456.prop854(self);
        if (local2 == 'wet sand') {
            if (obj423_ocean.location == local1) {
                "You wave <<self.thedesc>> through the water, rinsing the wet sand from  it and filling it with water.  ";
                self.prop820;
                self.prop819('salt water');
                exit;
            } else {
                "The clotted wet sand clings to the inside of <<self.thedesc>>, making it  nearly impossible to pour out.  ";
                exit;
            }
        } else if (isclass(local1, obj265)) {
            "Treading water, you raise one arm and pour <<self.thedesc>> into the ocean,  but as soon as you lower your arm, it fills back up with water.  ";
            self.prop820;
            self.prop819('salt water');
            exit;
        } else if (obj233_sandy_beach.location == local1) {
            "You tip out <<self.thedesc>>, spilling <<say(local2)>> onto the beach.  ";
        } else if (obj423_ocean.location == local1) {
            "You tip out <<self.thedesc>>, spilling <<say(local2)>> into the shallow  water around your waist.  ";
        } else if (local1 == obj433___On_the_Canopy__) {
            "You tip out <<self.thedesc>>, spilling <<say(local2)>> down the  pavilion's inclined canopy.  ";
        } else if (local2 == 'salt water') {
            "You tip out <<self.thedesc>> onto the hot ground, where the water quickly  evaporates.  ";
        } else {
            "You tip out <<self.thedesc>> onto the ground, where the dry sand is carried  away by a sudden breeze.  ";
        }
        self.prop820;
    }

    verDoAction169_empty_on(arg1, arg2) = { }

    doAction169_empty_on(arg1, arg2) = {
        local local1 = Me.location;

        obj456.prop853(self, arg2);
        obj456.prop854(self);
        obj456.prop859(self);
        obj456.prop856(self);
        if (local1 == obj432___End_of_Pier__ && arg2 == obj424_ocean_tide_surf || (local1 == obj448_loc_benchroom || local1 == obj427___By_the_Snack_Bar__ || local1 == obj449___Middle_of_Pier__) && arg2 == obj446_sandy_beach) {
            "You tip <<self.thedesc>> out over the railing, spilling <<say(self.prop504)>>  over <<arg2.thedesc>> below.  ";
            self.prop820;
        } else if (self == obj457_bottle && obj425_single_mite.location == obj457_bottle && arg2 == obj458_bottle_bottles) {
            obj458_bottle_bottles.ioAction13_in(arg1, obj457_bottle);
            exit;
        } else {
            obj456.prop863(self);
        }
    }

    verDoAction168_empty_in(arg1, arg2) = { }

    doAction168_empty_in(arg1, arg2) = { arg2.doAction172_fill_from(arg1, self); }

    verIoAction168_empty_in(arg1) = { }

    ioAction168_empty_in(arg1, arg2) = { arg2.doAction168_empty_in(arg1, self); }

    ioAction13_in(arg1, arg2) = {
        local local1 = self.prop504;

        if (isclass(self, class431) || isclass(self, obj442)) {
            pass ioAction13_in;
        } else if (arg2 == obj461_colony_of_mites) {
            obj461_colony_of_mites.doAction13_in(arg1, self);
        } else if (local1 != 'salt water' && local1 != nil && !isclass(arg2, class422_generic_substance)) {
            "\^<<self.thedesc>> is already full of <<say(local1)>>.  ";
            exit;
        } else {
            pass ioAction13_in;
        }
    }

    verIoAction44_from(arg1) = {
        if (self.prop504 != 'salt water') {
            "\^<<self.thedesc>> doesn't appear to contain anything potable.  ";
        }
    }

    ioAction44_from(arg1, arg2) = { arg2.doAction44_from(arg1, self); }
;

fun219: function(arg1) {
    local local1 = arg1.contents, local2, local3, local4, local5, local6, local7;

    local3 = length(local1);
    local2 = 0;
    local4 = 1;
    local4 = 1;
    local2 = 0;
  label85825:
    if (local4 <= local3) {
        local5 = local1[local4];
        if (local5.prop131 && !local5.prop128 && (!isclass(local5, class220) || length(local5.prop502) <= 0)) {
            if (local5.isEquivalent) {
                local7 = firstsc(local5);
                local6 = local4 + 1;
              label85935:
                if (local6 <= local3) {
                    if (fun5(local5, local1[local6])) {
                        goto label85976;
                    }
                    ++local6;
                    goto label85935;
                }
            }
            ++local2;
        }
      label85976:
        ++local4;
        goto label85825;
    }
    return local2;
}

class class220: class40
    prop394 = {
        if (length(self.prop502) > 0 && self != obj225_goggles) {
            return true;
        } else {
            return nil;
        }
    }

    prop708 = 1

    prop502 = []

    verIoAction148_attach_to(arg1) = { }

    ioAction148_attach_to(arg1, arg2) = { arg2.doAction148_attach_to(arg1, self); }

    verDoAction148_attach_to(arg1, arg2) = {
        if (isclass(arg2, class215)) {
            arg2.verDoAction148_attach_to(arg1, self);
        } else {
            pass verDoAction148_attach_to;
        }
    }

    doAction148_attach_to(arg1, arg2) = {
        if (isclass(arg2, class215)) {
            arg2.doAction148_attach_to(arg1, self);
        } else {
            pass doAction148_attach_to;
        }
    }

    verIoAction149_detach_from(arg1) = { }

    ioAction149_detach_from(arg1, arg2) = { arg2.doAction149_detach_from(arg1, self); }

    verDoAction150_detach(arg1) = {
        if (length(self.prop502)) {
            self.prop502[1].verDoAction149_detach_from(arg1, self);
        } else {
            pass verDoAction150_detach;
        }
    }

    doAction150_detach(arg1) = {
        if (length(self.prop502)) {
            self.prop502[1].doAction149_detach_from(arg1, self);
        } else {
            pass doAction150_detach;
        }
    }

    doSynonym('Action149_detach_from') = 'Action154_take_off_from'

    verDoAction149_detach_from(arg1, arg2) = {
        if (isclass(arg2, class215)) {
            arg2.verDoAction149_detach_from(arg1, self);
        } else {
            pass verDoAction149_detach_from;
        }
    }

    doAction149_detach_from(arg1, arg2) = {
        if (isclass(arg2, class215)) {
            arg2.doAction149_detach_from(arg1, self);
        } else {
            pass doAction149_detach_from;
        }
    }

    verDoAction19_out(arg1, arg2) = {
        if (isclass(arg2, class215) && find(arg2.prop502, self)) {
            arg2.verDoAction149_detach_from(arg1, self);
        } else {
            pass verDoAction19_out;
        }
    }

    doAction19_out(arg1, arg2) = {
        if (isclass(arg2, class215) && find(arg2.prop502, self)) {
            arg2.doAction149_detach_from(arg1, self);
        } else {
            pass doAction19_out;
        }
    }

    verDoAction18_off(arg1, arg2) = {
        if (isclass(arg2, class215) && find(arg2.prop502, self)) {
            arg2.verDoAction149_detach_from(arg1, self);
        } else {
            pass verDoAction18_off;
        }
    }

    doAction18_off(arg1, arg2) = {
        if (isclass(arg2, class215) && find(arg2.prop502, self)) {
            arg2.doAction149_detach_from(arg1, self);
        } else {
            pass doAction18_off;
        }
    }

    verDoAction24(arg1) = {
        if (isclass(arg1.location, obj217) && isclass(self.location, obj265) && (self == obj303_broken_stave || find(self.prop515, obj303_broken_stave) != nil)) {
            "The buoyancy of the stave prevents you from pulling it under.  ";
        } else if (self.prop137 || length(self.prop502) == 0 || self == obj225_goggles) {
            pass verDoAction24;
        } else if (Me.prop125(self)) {
            "You're already carrying <<self.thedesc>>.  ";
        } else {
            self.prop502[1].verDoAction24(arg1);
        }
    }

    doAction24(arg1) = {
        if (length(self.prop502) > 0 && self != obj225_goggles) {
            self.prop502[1].doAction24(arg1);
        } else {
            pass doAction24;
        }
    }

    doAction122_drop(arg1) = {
        if (length(self.prop502) > 0 && self != obj225_goggles) {
            self.prop502[1].doAction122_drop(arg1);
        } else {
            pass doAction122_drop;
        }
    }

    verDoAction13_in(arg1, arg2) = {
        if (inherited.verDoAction13_in(arg1, arg2)) {
        } else if (length(self.prop714)) {
            self.prop502[1].prop715(arg1, arg2);
        }
    }

    verDoAction121_drop_on(arg1, arg2) = {
        if (inherited.verDoAction121_drop_on(arg1, arg2)) {
        } else if (length(self.prop714)) {
            self.prop502[1].prop715(arg1, arg2);
        }
    }

    doAction121_drop_on(arg1, arg2) = {
        if (length(self.prop502) == 0 || self == obj225_goggles) {
            pass doAction121_drop_on;
        } else {
            self.prop502[1].prop716(arg1, arg2);
        }
    }

    doAction13_in(arg1, arg2) = {
        if (length(self.prop502) == 0 || self == obj225_goggles) {
            pass doAction13_in;
        } else {
            self.prop502[1].prop716(arg1, arg2);
        }
    }

    prop177(arg1) = {
        local local1 = self.prop710;

        if (local1 != nil && isclass(local1, class33)) {
            "Not while <<self.thedesc>> is joined to <<local1.thedesc>>  by <<self.prop502[1].thedesc>>.  ";
        } else {
            pass prop177;
        }
    }

    prop515 = {
        local local1 = [];

        if (length(self.prop502)) {
            local1 += self.prop502[1];
            local1 += self.prop502[1].prop502[1];
            if (length(self.prop502[1].prop502) > 1) {
                local1 += self.prop502[1].prop502[2];
            }
        } else {
            local1 += self;
        }
        return local1;
    }

    prop710 = {
        local local1, local2;

        local2 = [];
        local1 = nil;
        if (length(self.prop502) > 0 && length(self.prop502[1].prop502) > 1) {
            local2 = self.prop502[1].prop502;
            local2 -= self;
            local1 = local2[1];
        }
        return local1;
    }

    moveInto(arg1) = {
        local local1, local2;

        if (self == obj225_goggles || length(self.prop515) == 1) {
            pass moveInto;
        } else {
            local1 = self.location;
            local2 = self.prop710;
            inherited.moveInto(arg1);
            if (length(self.prop502)) {
                self.prop502[1].moveInto(arg1);
            }
        }
    }

    prop717 = {
        local local1, local2;

        if (length(self.prop502) && self != obj225_goggles) {
            local1 = self.prop502[1];
        }
        local2 = self.prop710;
        if (local1 != nil && local2 != nil) {
            "\^<<self.thedesc>> is joined to <<local2.thedesc>> by <<local1.thedesc>>.  ";
        } else if (local1 != nil) {
            "Tied to <<self.thedesc>> is <<local1.adesc>>, which hangs limply.  ";
        } else {
            return nil;
        }
    }

    prop657 = {
        if (self.prop128) {
            self.prop128 = nil;
        }
        if (length(self.prop502) > 0) {
            self.prop502[1].prop502 -= self;
            self.prop502 -= self.prop502[1];
        }
    }
;

fun221: function(arg1) {
    local local1 = arg1.contents, local2, local3, local4, local5, local6, local7;

    local3 = length(local1);
    local2 = 0;
    local4 = 1;
    local4 = 1;
    local2 = 0;
  label88204:
    if (local4 <= local3) {
        local5 = local1[local4];
        if (local5.prop131 && !local5.prop128 && (!isclass(local5, class220) || length(local5.prop502) <= 0)) {
            if (local5.isEquivalent) {
                local7 = firstsc(local5);
                local6 = local4 + 1;
              label88314:
                if (local6 <= local3) {
                    if (fun5(local5, local1[local6])) {
                        goto label88363;
                    }
                    ++local6;
                    goto label88314;
                }
            }
            say(local5.thedesc);
        }
      label88363:
        ++local4;
        goto label88204;
    }
}

obj222_the_vendor: class57
    noun = 'vendor' 'ivan'

    adjective = 'boiled' 'peanut'

    location = obj427___By_the_Snack_Bar__

    isHim = true

    sdesc = "the vendor"

    thedesc = "the vendor"

    adesc = "the vendor"

    prop167 = {
        if (obj239_boiler.prop501) {
            "He's somewhere between twenty and thirty, on the short side, with sandy blonde hair and tranquil green eyes.  Too many extra pounds and a lobster red sunburn detract from his otherwise fair good looks, but a good-natured smile graces his face.  He's wearing blue athletic shorts and a plain white t-shirt.  Over the t-shirt and shorts, he's wearing an unbuttoned, orange and white striped shirt, which is so large that it hangs like a smock, even over his broad frame.  The shirt's breast pocket is so big it could envelop your entire outstretched hand.  ";
        } else {
            "He's headed out of the pavilion on his way home for the night.  ";
        }
    }

    prop301 = {
        if (obj239_boiler.prop501) {
            "\bBehind the counter, a vendor is busily locking things away for the night.  ";
            if (!obj427___By_the_Snack_Bar__.prop293) {
                "\bThe vendor sees you approaching and throws a welcoming nod in your direction,  followed by a rhetorical sounding \"Hey, how's it going?\"  ";
            }
        } else {
            "\bThe boiled peanut vendor is here, apparently on his way home for the night.  ";
        }
    }

    ioAction124_show_to(arg1, arg2) = { self.doAction136_ask_about(arg1, arg2); }

    doAction136_ask_about(arg1, arg2) = {
        if (!obj239_boiler.prop501) {
            "The vendor chuckles at you and keeps walking.   \"Hey, I'm sorry, but I'm outta here.  See ya!\"  ";
        } else {
            pass doAction136_ask_about;
        }
    }

    verDoAction128_pay(arg1) = { }

    doAction128_pay(arg1) = { self.ioAction123_give_to(arg1, obj236_some_money); }

    ioAction123_give_to(arg1, arg2) = {
        if (arg2 == obj647_life) {
            self.verDoAction130_animate(arg1);
        } else if (arg2 == obj567_steel_key) {
            "It occurs to you to keep that bit of information to yourself, as you may  not get another chance to acquire the key.  ";
        } else if (arg2 != obj236_some_money) {
            "\"Thanks, but I don't need <<arg2.thedesc>>.\"  ";
        } else if (!obj239_boiler.prop501) {
            self.prop964;
        } else if (arg2 == obj236_some_money) {
            if (obj556_husks_peanuts_peanut.location != obj239_boiler) {
                "\"Sorry, those peanuts you bought were all I had left.\"  ";
            } else if (obj212_brick.location == Me) {
                "\"How'm I supposed to hand anything to you while you're holding  that brick?\"  ";
                exit;
            }
            "The vendor looks up from his work and says \"Sorry, I'm closing down  for the night, everything's locked up.  I've still got some boiled peanuts  left, but that's it.  You want 'em?\"  \b(You sense that the  vendor is waiting for a 'Yes' or 'No' answer.) >";
            if (yorn() == 1) {
                "\"Ok, comin' up in a sec.\"  ";
                obj556_husks_peanuts_peanut.prop994;
            } else {
                "The vendor shrugs and says \"Can't say I blame you.\"  ";
            }
        }
    }

    prop964 = "The vendor chuckles at you and keeps walking.   \"Hey, sorry, but I'm outta here.  See ya!\"  "

    verDoAction129_pay_for(arg1, arg2) = { self.verDoAction1_for(arg1, arg2); }

    doAction129_pay_for(arg1, arg2) = { self.doAction1_for(arg1, arg2); }

    verIoAction126_buy_from(arg1) = { }

    ioAction126_buy_from(arg1, arg2) = {
        outhide(true);
        self.verDoAction1_for(Me, arg2);
        if (outhide(nil)) {
            self.verDoAction1_for(Me, arg2);
            exit;
        }
        self.doAction1_for(Me, arg2);
    }

    verDoAction1_for(arg1, arg2) = {
        if (!obj239_boiler.prop501) {
            self.prop964;
        } else if (arg2 == obj556_husks_peanuts_peanut || arg2 == obj665_snacks) {
            if (obj556_husks_peanuts_peanut.location != obj239_boiler) {
                "The vendor puts hands on hips and looks towards you apologetically.   \"Sorry, those peanuts you bought were all I had left.\"  ";
            }
        } else if (arg2 == obj240_sieve) {
            "He glances toward the sieve.  \"No can do.  For some strange reason,  the owner doesn't like us to give away the equipment.\"  ";
        } else if (!self.prop125(arg2) && arg2 != obj567_steel_key) {
            "The vendor doesn't have <<arg2.thedesc>> to give you.  ";
        } else {
            if (arg2 == obj567_steel_key) {
                "He doesn't even look up from his work.   \"No way.  You know the hassle I went through just to get \(this\) copy?\"  ";
            } else {
                "The vendor pauses in his work and looks at you with a quizzical expression.   \"You're kidding, right?\" he says.  ";
            }
        }
    }

    doAction1_for(arg1, arg2) = { arg2.doAction125_buy(arg1); }

    prop995 = {
        "The vendor frowns at you";
        say(self.prop996[rand(4)]);
    }

    prop996 = [' and says "Yeah, right.  What have \(you\) been smoking?"  ', ' as if to say "What kind of idiot do you think I am?"  ', ' just long enough to make you feel uncomfortable before resuming his work.  ', ' as if to say "What are you, a wiseguy?"  ']

    verDoAction130_animate(arg1) = { "He's already alive, Doctor Frankenstein.  "; }

    prop707 = &prop808

    prop702 = true

    prop706 = { say(self.prop997[rand(5)]); }

    prop997 = ['The vendor shrugs.  "Sorry, I don\'t know anything about that."  ', 'The vendor purses his mouth.  "Hmm.  You got me on that one."  ', 'The vendor stares at you.  "I have no idea what you\'re talking about."  ', 'The vendor just looks at you blankly and shrugs.  ', 'The vendor shrugs without looking your way.  "Can\'t help you there."  ']

    prop505 = [obj222_the_vendor]

    prop808 = {
        "The vendor gazes at you penetratingly for a long moment before responding.  \"I'm from New York, but I finally left, not long ago.  I've spent most of my adult life doing bullshit corporate work, and I'm absolutely sick of it.  After I got out, I spent some time travelling around the country, and while I was here I fell in love with Savannah.  So here I am.\"  He grins at you.  \"Just selling peanuts and making sand sculptures until I decide what to do next.\"  ";
        obj557_crappy_corporate_job.prop891;
        obj20.prop484 = ['sympathetic'];
    }

    ioAction55_to(arg1, arg2) = {
        arg2 = arg2.value;
        if (lower(arg2) == 'hello sailor' || lower(arg2) == 'hello, sailor') {
            "The vendor puts one hand over his stomach, and grimaces in a queasy way.   \"Sorry, 'fraid you've got the wrong guy.  I get seasick just \(looking\)  at sailboats.\"  ";
        } else if (find(Me.prop719, lower(arg2)) != nil) {
            "The vendor looks to you cheerfully.  \"Howdy!  What can I do for you?\"  ";
        } else if (find(Me.prop720, lower(arg2)) != nil) {
            "The vendor looks mildly surprised.  \"Hey hey!  \^<<lower(arg2)>> to you too!\"  ";
            obj20.prop484 = ['bemused'];
        } else {
            "The vendor just looks at you and shrugs.  ";
        }
    }

    prop323 = { say(self.prop998[rand(5)]); }

    prop998 = ['The vendor shrugs.  "I don\'t have much to say about it."  ', 'The vendor purses his mouth.  "Is this a trick question?"  ', '\^The vendor just looks at you and shrugs.  ', 'The vendor stares at you.  "What about it?"  ', 'The vendor shrugs without looking your way.  "Don\'t know what to tell you."  ']

    prop532 = { say(self.prop999[rand(4)]); }

    prop999 = ['The vendor shrugs.  "Not much else to say about it, you know?"  ', 'The vendor purses his mouth.  "I don\'t know what else to tell you."  ', 'The vendor stares at you.  "Sorry, there\'s not much else to say about it."  ', 'The vendor just looks at you and shrugs.  ']

    prop902 = { notify(obj222_the_vendor, &prop901, 0); }

    prop901 = {
        local local1 = fun227(Me);

        if (local1 == self.location) {
            "\b";
            say(self.prop934[rand(length(self.prop934))]);
        }
    }

    prop934 = ['The vendor bends down and slams a cupboard somewhere behind the counter.  ', 'The vendor whistles a few bars of "The Imperial March" while he works.  ', 'The vendor tosses a piece of trash in a hidden receptacle.  ', 'The vendor sings a few lines of "Yellow Submarine" as he wipes down the counter.  ', 'The vendor whips out a note pad and jots down a quick note.  ', 'The vendor takes a quick break to juggle plastic salt shakers.  Salt goes flying  everywhere.  ', 'Something behind the counter falls loudly, followed by a cry of "Damn!" from  the vendor.  ', 'The vendor chases off a gull that has wandered behind the counter.  ', 'The vendor sweeps the patch of floor behind the counter.  ', 'The vendor looks at the setting sun and says "Whoops, almost time for the  Simpsons!"  ', 'The vendor laces his fingers together and cracks his knuckles loudly.  ', 'The vendor jerks his head sharply right, then left, issuing an uncomfortably loud  \(crack\) each time.  ', 'The vendor hiccups once, then says "S\'cuse me!"  ', 'A bikini clad woman jogs by, and the vendor pauses to ogle her.  ', 'The vendor stoops to pet a Pekingese dog that has bounded behind the counter, before  gently shooing it away.  ', 'The vendor looks at you as if to say he\'s sorry that he had to close before you  got here.  ']

    prop1000 = {
        local local1, local2;

        local2 = fun227(Me);
        unnotify(obj222_the_vendor, &prop901);
        if (local2 == obj427___By_the_Snack_Bar__) {
            "\bSuddenly, the vendor pulls a white plastic bucket from beneath the counter.  To your surprise, he spills it out over the railing before locking it away again.  \"Ah, just about done,\" he says to no one in particular.  \"Just have to dump the peanut water and I'm outta here.\"  He grabs the sieve from the boiler and sets it on the counter.  \"Hey, would you lend me a hand here?  I'd really appreciate it.\"  \b(You sense that the  vendor is waiting for a 'Yes' or 'No' answer.) >";
            local1 = yorn();
            if (local1 == -1) {
                local1 = 0;
            }
            "\b<<(local1 ? "\"Thanks!\"  With your help, t" : "\"S'okay.  I wouldn't want to do it either, if I didn't have to.\"  T")>>he vendor lifts the boiler pan off its foundation and muscles it to the railing.  He calls out, \"Anybody down there?\"  In an aside to you he says \"Don't worry, we only toss out stuff that's edible.  It all gets eaten by the birds and the crabs.  Everything else goes to the dump or gets recycled.\"  He turns back to the railing and, having  received no response from below,  yells \"Ok, boiling water coming down!\" and <<(local1 ? "leads you in tipping" : "tips")>> out the boiler.  The boiling water cascades down into the sand, filling the air with billowing clouds of steam.  Then, the vendor sets the empty boiling pan back on its base and  folds down the lid.  He reaches beneath the counter and  withdraws a sturdy looking clamp, which he uses to fix the lid in  place.  \"Welp, that's  it for me.  <<(local1 ? "Thanks much for the help." : "")>>  See ya!\"   \b With that, the vendor steps out from behind the counter and sets  his feet toward the center of the pavilion to the north.   ";
            Me.prop1001 = true;
            Me.prop975 = true;
            Me.prop903 = true;
        } else if (local2 == obj451___Dry_Sand__South_of) {
            "\bYou notice with curiosity that numerous gulls have begun to gather near the base of the pavilion.  While you're watching them, a motion from above catches your eye.  You look up to see the snack bar vendor, silhouetted against the pavilion's dark canopy.  He's tipping out a white bucket, dumping its contents on the beach.  The gulls descend hungrily on their fallen spoils.  A moment later, the vendor calls out \"Anybody down there?\"  \b(You sense that the  vendor is waiting for a 'Yes' or 'No' answer.) >";
            local1 = yorn();
            if (local1 == -1) {
                local1 = 0;
            }
            "\"Well step back, willya?\"  You comply with his request, and shortly after, he muscles something up to the railing.  You recognize it as the metal pan of the peanut boiler and back away even further.  The vendor cries \"Ok, boiling water coming down!\" and tips the pan onto the beach.  Boiling peanut water cascades down into the sand, filling the air with billowing clouds of steam.  The gulls leap angrily into the air, but flock back to the spot before  the steam has even cleared.  Boiler empty, the vendor disappears back  into the shadows of the pavilion.  ";
            notify(obj307_flock_of_gulls, &prop901, 0);
            Me.prop975 = true;
            Me.prop903 = true;
        } else if (local2 == obj477___On_the_Enclosure__) {
            "\bBelow you, the vendor suddenly calls out \"Anybody down there?\"  You look down to investigate, and see him looking down on the beach,  with the pan of boiling peanut water resting on the bar of the railing.   It seems that no one replies, and a moment later he cries \"Ok, boiling water coming down!\"  Then, he tips the boiler out over the  railing, where it cascades down onto the sand and creates huge gouts  of steam.  Once he's done, he replaces the boiling pan, locks it in place, and steps out from behind the counter, apparently on his way  home for the night.  ";
            Me.prop975 = true;
            Me.prop903 = true;
        } else if (local2 == obj269___Pavilion__ || Me.location == obj448_loc_benchroom) {
            "\bYou hear an abrupt shout from the south.  You spot the snack bar vendor standing at the railing looking down over the beach.  A moment later he shouts again, and then raises to the railing something that you recognize as the pan of the boiler.  To your surprise, he pours it out onto the beach before setting it back below the counter.  Then, he steps out from behind the counter,  apparently on his way home for the night.  ";
            Me.prop975 = true;
            Me.prop903 = true;
        } else if (local2 == obj437___Under_Pavilion__ || local2 == obj447___Storage_Area__) {
            "\bYou hear a muffled shout from the other side of the dunes to the south.  A moment later you hear another shout, followed by what sounds like a stream of water.  Finally, you hear an eruption of frenzied shrieking.  It sounds like someone's being boiled in oil!  ";
            Me.prop975 = true;
        }
        notify(obj222_the_vendor, &prop1002, 1);
        obj567_steel_key.moveInto(nil);
        obj307_flock_of_gulls.moveInto(obj451___Dry_Sand__South_of);
        obj307_flock_of_gulls.prop295;
        obj627_trash_heap.moveInto(obj451___Dry_Sand__South_of);
        obj627_trash_heap.prop295;
        obj239_boiler.prop504 = nil;
        obj239_boiler.prop501 = nil;
        obj239_boiler.prop124 = nil;
        obj239_boiler.prop338 = true;
        obj239_boiler.prop804 = 0;
        obj239_boiler.prop273 = nil;
        obj576_clamp.moveInto(obj575_boiler_s_lid);
        obj240_sieve.moveInto(obj546_snack_bar);
    }

    prop1002 = {
        obj222_the_vendor.prop161(obj269___Pavilion__);
        notify(obj222_the_vendor, &prop1003, 1);
    }

    prop1003 = {
        obj222_the_vendor.prop161(obj199___Beach_Path__);
        notify(obj222_the_vendor, &prop1004, 1);
    }

    prop1004 = {
        if (Me.location == obj199___Beach_Path__) {
            "\bThe vendor gives you a friendly nod and then disappears along the  brick path to the west, on his way home for the night.  ";
        }
        obj222_the_vendor.moveInto(nil);
        obj666_the_vendor.moveInto(nil);
    }

    prop326 = {
        local local1 = obj222_the_vendor.location;

        Me.prop903 = true;
        if (local1 == obj427___By_the_Snack_Bar__) {
            "\bThe vendor exits the area and saunters north into the pavilion.  ";
        } else if (local1 == obj269___Pavilion__) {
            "\bThe vendor strolls off to the west, out of the pavilion.  ";
        } else if (local1 == obj199___Beach_Path__) {
            "\bThe vendor gives you a friendly nod and then disappears along the  brick path to the west, on his way home for the night.  ";
        }
    }

    prop327 = {
        local local1 = obj222_the_vendor.location;

        Me.prop903 = true;
        if (local1 == obj269___Pavilion__) {
            "\bThe snack bar vendor heads towards you, on his way out of the pavilion.  ";
        } else if (local1 == obj199___Beach_Path__) {
            "\bThe snack bar vendor approaches you from the pavilion.  It looks like  he's going home for the night.  ";
        }
    }

    prop321 = obj666_the_vendor
;

parseError: function(arg1, arg2) {
    local local1;

    if (obj20.prop506 != nil) {
        local1 = obj20.prop506;
        obj20.prop506 = nil;
        return local1;
    } else {
        return nil;
    }
}

class class224: class42
    prop140 = 0

    prop141 = 0

    prop131 = nil
;

obj225_goggles: class65, class220, class253, class79
    noun = 'goggles'

    adjective = 'dive' 'pair' 'of'

    prop141 = 3

    prop140 = 1

    prop509 = true

    prop394 = nil

    prop708 = 1

    prop502 = [obj254_white_rubber_strap]

    prop510 = obj614_shattered_pair_of_go

    location = nil

    sdesc = {
        if (obj254_white_rubber_strap.location != self) {
            "strapless ";
        }
        "pair of goggles";
    }

    prop167 = {
        if (self.prop128) {
            "You can't see much of them while they're on your head.  ";
        } else {
            "It's a cheap pair of plastic swim goggles";
            if (obj254_white_rubber_strap.location == self) {
                ", held together by a thin, white rubber strap.";
            } else {
                ".  The strap is missing, though, so there's no way to wear them.  ";
            }
        }
    }

    prop206 = { "The world looks pretty much the same through the plastic lenses of the goggles.  "; }

    verDoAction12_wear(arg1) = {
        if (self.prop128) {
            "You're already wearing the goggles.  ";
        } else if (obj471_scuba_mask.prop128) {
            "You try to put the goggles on over the mask, but they don't fit.  ";
        } else if (obj254_white_rubber_strap.location != self) {
            "You can't wear them.  They're missing their strap.  ";
        } else if (isclass(Me.location, obj217)) {
            "You try to slide the goggles over your eyes while floating beneath the  surface.  Unfortunately, they're full of water, and you have no way  to clear them, so you give up in disappointment.  ";
        } else {
            pass verDoAction12_wear;
        }
    }

    doAction12_wear(arg1) = {
        Me.prop876 = true;
        self.prop128 = true;
        "You slide the cheap white strap over your head and slide the goggles down  over your eyes.  They make an adequate, if uninspiring, seal.  ";
    }

    doAction153_take_off(arg1) = {
        self.prop128 = nil;
        Me.prop876 = nil;
        if (isclass(Me.location, obj217)) {
            "Chilly salt water rushes in the instant you break the seal between goggles  and skin, stinging your eyes and blurring your vision.  ";
            Me.prop519(&prop877);
            obj20.prop484 = ['irritated'];
        } else {
            "You strip the goggles off of your head.  ";
        }
    }

    verDoAction122_drop(arg1) = {
        if (self.prop128) {
            "You'll have to remove them first.  ";
        }
    }

    verIoAction149_detach_from(arg1) = { }

    ioAction149_detach_from(arg1, arg2) = {
        if (arg2 != obj254_white_rubber_strap) {
            "\^<<arg2.thedesc>> <<(arg2.prop509 ? "aren't" : "isn't")>> attached to the goggles.  ";
            exit;
        } else if (self.prop128 && arg2 == obj254_white_rubber_strap) {
            "You can't remove the strap while the goggles are on your head.  ";
            exit;
        } else {
            arg2.doAction150_detach(arg1);
        }
    }

    verIoAction148_attach_to(arg1) = { }

    ioAction148_attach_to(arg1, arg2) = { arg2.doAction148_attach_to(arg1, self); }

    prop295 = {
        obj254_white_rubber_strap.prop295;
        obj255_white_rubber_strap.prop295;
        pass prop295;
    }

    prop808 = "He glances at the goggles.  \"I've got a pair just like that.\"  "

    prop914 = { return obj302_length_of_rope.prop931(self); }
;

fun226: function(arg1) {
    obj20.prop492 = true;
    obj20.prop493 = obj20.prop138;
    obj20.prop494 = arg1[1];
    obj20.prop495 = arg1[2];
    obj20.prop496 = arg1[3];
}

fun227: function(arg1) {
    local local1 = arg1.location;

    if (local1.location) {
        local1 = local1.location;
    }
    return local1;
}

obj228: class31
    prop687 = nil

    prop152(arg1) = {
        local local1, local2, local3, local4, local5, local6, local7;

        if (arg1 == obj436_conch_shell || obj436_conch_shell.location == arg1) {
            obj436_conch_shell.prop811;
            exit;
        }
        if (length(arg1.prop502) > 0 && !isclass(arg1, class215) && arg1 != obj225_goggles) {
            arg1 = arg1.prop502[1];
        }
        local2 = length(arg1.prop502);
        if (local2 > 0 && arg1 != obj225_goggles) {
            local1 = true;
        }
        if (local2 > 0) {
            local3 = arg1.prop502[1];
        }
        if (local2 > 1) {
            local4 = arg1.prop502[2];
        }
        local5 = fun410(arg1.prop515);
        if (arg1 == obj426_shrimp && length(arg1.prop502) == 0) {
            "The instant you release your grip, the shrimp darts  from your hand and disappears into the depths.  ";
            obj426_shrimp.prop812;
            return;
        }
        "You let go of <<arg1.thedesc>>";
        if (local2 > 1) {
            ", <<local4.thedesc>>";
        }
        if (local1) {
            " and <<local3.thedesc>>";
        }
        ".  ";
        if (local5 > 0) {
            "<<(local1 ? "Together, they" : "It")>> fall<<(local1 ? "" : "s")>> to the water with  a splash and bob<<(local1 ? "" : "s")>> lightly on the surface.  \n";
            if (arg1.prop649 == 0) {
                if (local3.prop649 > 0) {
                    arg1 = local3;
                } else {
                    arg1 = local4;
                }
            }
            arg1.moveInto(self);
            if (isclass(arg1.location, obj265)) {
                setfuse(&fun416, 2, arg1);
            } else if (isclass(arg1.location, obj266)) {
                setfuse(&fun419, 2, arg1);
            }
            if (self == obj464___Deep_Water__South_ && obj465_conch_shell.location == obj299_deep_fissure && (arg1.prop710 == obj426_shrimp && arg1.prop649 > 0)) {
                obj465_conch_shell.prop870 = true;
                notify(obj465_conch_shell, &prop871, 1);
            }
        } else if (isclass(arg1, class218) && arg1.prop124 && !arg1.prop501) {
            local6 = true;
        } else if (local2 > 1) {
            if (isclass(local4, class218) && local4.prop124 && !local4.prop501) {
                arg1 = local4;
                local6 = true;
            }
        } else if (local1) {
            if (isclass(local3, class218) && local3.prop124 && !local3.prop501) {
                arg1 = local3;
                local6 = true;
            }
        }
        local7 = arg1.prop515 - arg1;
        "\^<<arg1.prop513>>";
        if (local6) {
            " fills with water,";
            arg1.prop819('salt water');
        }
        " sinks beneath the surface and disappears into the murky water";
        if (local1) {
            " along with";
        }
        if (length(local7) > 1) {
            " <<local7[2].prop513>> and";
        }
        if (local1) {
            " <<local7[1].prop513>>";
        }
        ". ";
        arg1.moveInto(nil);
        if (isclass(self, obj266)) {
            setfuse(&fun415, 3, arg1);
        } else {
            setfuse(&fun415, 5, arg1);
        }
        arg1.prop507 = true;
        if (arg1.prop710) {
            arg1.prop710.prop507 = true;
        }
    }

    prop155(arg1) = {
        if (isclass(obj20.prop489, obj217) || isclass(obj20.prop489, obj265)) {
        } else if (!isclass(self, obj266)) {
            if (fun267(arg1.contents)) {
                "\b";
            }
        } else if (isclass(self, obj266) && length(obj297_ankle.prop502)) {
            if (fun267(obj297_ankle.prop515)) {
                "\b";
            }
        }
        if (obj20.prop491) {
            "Lungs burning, you kick and claw your way toward the glittering sunlight  above you.  ";
            if (obj20.prop489 != obj466___Underwater_____dri && obj20.prop489 != obj467___Underwater_____dri && obj20.prop489 != obj468___Underwater_____dri) {
                "You rise and rise and can't climb fast enough and finally, just when you  don't think you're going to make it, you break the surface.  ";
            }
            "Gasping, you break the surface and fill your lungs with the salty ocean air.  \b";
            obj20.prop491 = nil;
            remfuse(&fun411, Me);
            remfuse(&fun412, Me);
            remfuse(&fun413, Me);
            remfuse(&fun414, Me);
        }
        pass prop155;
    }
;

class class229: object
    prop140 = 0

    prop141 = 1

    prop131 = true

    contents = []

    prop165(arg1) = { }

    prop166(arg1) = { }

    adesc = {
        "a ";
        self.sdesc;
    }

    prop132 = {
        self.sdesc;
        "s";
    }

    thedesc = {
        "the ";
        self.sdesc;
    }

    multisdesc = { self.sdesc; }

    prop167 = {
        "It looks like an ordinary ";
        self.sdesc;
        " to %me%.";
    }

    prop168 = {
        "%You% can't read ";
        self.adesc;
        ". ";
    }

    actorAction(arg1, arg2, arg3, arg4) = {
        "You have lost your mind. ";
        exit;
    }

    prop135 = { return true; }

    prop169 = { return true; }

    prop126(arg1) = {
        local local1;

        local1 = self.location;
        if (local1) {
            if (local1 == arg1) {
                return true;
            }
            if (local1.prop135) {
                return local1.prop126(arg1);
            }
        }
        return nil;
    }

    moveInto(arg1) = {
        local local1;

        local1 = self.location;
      label104806:
        if (local1) {
            local1.prop166(self);
            local1 = local1.location;
            goto label104806;
        }
        if (self.location) {
            self.location.contents = self.location.contents - self;
        }
        self.location = arg1;
        if (arg1) {
            arg1.contents = arg1.contents + self;
        }
    }

    verDoAction80_save(arg1) = { "Please specify the name of the game to save in double quotes, for example, SAVE \"GAME1\". "; }

    verDoAction81_restore(arg1) = { "Please specify the name of the game to restore in double quotes, for example, RESTORE \"GAME1\". "; }

    verDoAction82(arg1) = { "You should type the name of a file to write the transcript to in quotes, for example, SCRIPT \"LOG1\". "; }

    verDoAction158_say(arg1) = { "You should say what you want to say in double quotes, for example, SAY \"HELLO\". "; }

    verDoAction155_push(arg1) = {
        "Pushing ";
        self.thedesc;
        " doesn't do anything. ";
    }

    verDoAction12_wear(arg1) = {
        "%You% can't wear ";
        self.thedesc;
        ". ";
    }

    verDoAction24(arg1) = {
        if (self.location == arg1) {
            "%You% already %have% ";
            self.thedesc;
            "! ";
        } else {
            self.prop177(arg1);
        }
    }

    prop177(arg1) = {
        local local1;

        local1 = self.location;
      label105514:
        if (local1) {
            if (local1 != arg1) {
                local1.prop165(self);
            }
            local1 = local1.location;
            goto label105514;
        }
    }

    isVisible(arg1) = {
        local local1;

        local1 = self.location;
        if (local1 == nil) {
            return nil;
        }
        if (arg1.location == self && self.prop135) {
            return true;
        }
        if (local1 == arg1) {
            return true;
        }
        if (local1.prop135 && local1.isVisible(arg1)) {
            return true;
        }
        if (arg1.location != nil && arg1.location.prop135 && self.isVisible(arg1.location)) {
            return true;
        }
        return nil;
    }

    cantReach(arg1) = {
        if (self.location == nil) {
            if (arg1.location.location) {
                "%You% can't reach that from <<arg1.location.thedesc>>. ";
            }
            return;
        }
        if (!self.location.prop178 || self.location.prop124) {
            self.location.cantReach(arg1);
        } else {
            "%You%'ll have to open <<self.location.thedesc>> first. ";
        }
    }

    prop179(arg1) = {
        local local1;

        if (find(arg1.location.prop127, self) != nil) {
            return true;
        }
        local1 = self.location;
        if (find(arg1.location.prop127, self) != nil) {
            return true;
        }
        if (local1 == nil) {
            return nil;
        }
        if (local1 == arg1 || local1 == arg1.location) {
            return true;
        }
        if (local1.prop169) {
            return local1.prop179(arg1);
        }
        return nil;
    }

    doAction24(arg1) = {
        local local1, local2;

        local1 = fun11(arg1.contents) + self.prop141;
        local2 = fun10(arg1.contents);
        if (!arg1.prop125(self)) {
            local2 = local2 + self.prop140 + fun10(self.contents);
        }
        if (local2 > arg1.prop181) {
            "%Your% load is too heavy. ";
        } else if (local1 > arg1.prop182) {
            "%You've% already got %your% hands full. ";
        } else {
            self.moveInto(arg1);
            "Taken. ";
        }
    }

    verDoAction122_drop(arg1) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying ";
            self.thedesc;
            "! ";
        } else {
            self.prop177(arg1);
        }
    }

    doAction122_drop(arg1) = { arg1.location.prop152(self); }

    verDoAction153_take_off(arg1) = {
        "%You're% not wearing ";
        self.thedesc;
        "! ";
    }

    verIoAction13_in(arg1) = {
        "%You% can't put anything into ";
        self.thedesc;
        ". ";
    }

    prop187(arg1) = {
        local local1;

        "%You% can't put <<self.thedesc>> in <<arg1.thedesc>>, because <<arg1.thedesc>> is <<(arg1.location == self ? "already" : "")>> <<(arg1.location.prop133 ? "on" : "in")>> <<arg1.location.thedesc>>";
        local1 = arg1.location;
      label106624:
        if (local1 != self) {
            ", which is ";
            if (local1.location == self) {
                "already ";
            }
            "<<(local1.location.prop133 ? "on" : "in")>> <<local1.location.thedesc>>";
            local1 = local1.location;
            goto label106624;
        }
        ".";
    }

    verDoAction13_in(arg1, arg2) = {
        if (arg2 == nil) {
            return;
        }
        if (self.location == arg2) {
            caps();
            self.thedesc;
            " is already in ";
            arg2.thedesc;
            "! ";
        } else if (arg2 == self) {
            "%You% can't put ";
            self.thedesc;
            " in itself! ";
        } else if (arg2.prop126(self)) {
            self.prop187(arg2);
        } else {
            self.prop177(arg1);
        }
    }

    doAction13_in(arg1, arg2) = {
        self.moveInto(arg2);
        "Done. ";
    }

    verIoAction121_drop_on(arg1) = {
        "There's no good surface on ";
        self.thedesc;
        ". ";
    }

    verDoAction121_drop_on(arg1, arg2) = {
        if (arg2 == nil) {
            return;
        }
        if (self.location == arg2) {
            caps();
            self.thedesc;
            " is already on ";
            arg2.thedesc;
            "! ";
        } else if (arg2 == self) {
            "%You% can't put ";
            self.thedesc;
            " on itself! ";
        } else if (arg2.prop126(self)) {
            self.prop187(arg2);
        } else {
            self.prop177(arg1);
        }
    }

    doAction121_drop_on(arg1, arg2) = {
        self.moveInto(arg2);
        "Done. ";
    }

    verIoAction19_out(arg1) = { }

    ioAction19_out(arg1, arg2) = { arg2.doAction19_out(arg1, self); }

    verDoAction19_out(arg1, arg2) = {
        if (arg2 != nil && !self.prop126(arg2)) {
            caps();
            self.thedesc;
            " isn't in ";
            arg2.thedesc;
            ". ";
        }
        self.verDoAction24(arg1);
    }

    doAction19_out(arg1, arg2) = { self.doAction24(arg1); }

    verIoAction18_off(arg1) = { }

    ioAction18_off(arg1, arg2) = { arg2.doAction18_off(arg1, self); }

    verDoAction18_off(arg1, arg2) = {
        if (arg2 != nil && !self.prop126(arg2)) {
            caps();
            self.thedesc;
            " isn't on ";
            arg2.thedesc;
            "! ";
        }
        self.verDoAction24(arg1);
    }

    doAction18_off(arg1, arg2) = { self.doAction24(arg1); }

    verIoAction25_plug_in(arg1) = {
        "%You% can't plug anything into ";
        self.thedesc;
        ". ";
    }

    verDoAction25_plug_in(arg1, arg2) = {
        "%You% can't plug ";
        self.thedesc;
        " into anything. ";
    }

    verIoAction62_unplug_from(arg1) = {
        "It's not plugged into ";
        self.thedesc;
        ". ";
    }

    verDoAction62_unplug_from(arg1, arg2) = {
        if (arg2 != nil) {
            "It's not plugged into ";
            arg2.thedesc;
            ". ";
        }
    }

    verDoAction26_look_in(arg1) = {
        "There's nothing in ";
        self.thedesc;
        ". ";
    }

    prop206 = { "%You% can't see much through <<self.thedesc>>.\n"; }

    verDoAction40_look_through(arg1) = {
        "%You% can't see anything through ";
        self.thedesc;
        ". ";
    }

    verDoAction64_look_under(arg1) = {
        "There's nothing under ";
        self.thedesc;
        ". ";
    }

    verDoAction0_inspect(arg1) = { }

    doAction0_inspect(arg1) = { self.prop167; }

    verDoAction47_read(arg1) = {
        "I don't know how to read ";
        self.thedesc;
        ". ";
    }

    verDoAction65_look_behind(arg1) = {
        "There's nothing behind ";
        self.thedesc;
        ". ";
    }

    verDoAction33_turn(arg1) = {
        "Turning ";
        self.thedesc;
        " doesn't have any effect. ";
    }

    verDoAction32_turn_with(arg1, arg2) = {
        "Turning ";
        self.thedesc;
        " doesn't have any effect. ";
    }

    verDoAction31_turn_to(arg1, arg2) = {
        "Turning ";
        self.thedesc;
        " doesn't have any effect. ";
    }

    verIoAction31_turn_to(arg1) = { "I don't know how to do that. "; }

    verDoAction36_turn_on(arg1) = {
        "I don't know how to turn ";
        self.thedesc;
        " on. ";
    }

    verDoAction37_turn_off(arg1) = {
        "I don't know how to turn ";
        self.thedesc;
        " off. ";
    }

    verIoAction136_ask_about(arg1) = { }

    ioAction136_ask_about(arg1, arg2) = { arg2.doAction136_ask_about(arg1, self); }

    verDoAction136_ask_about(arg1, arg2) = {
        "Surely, %you% can't think ";
        self.thedesc;
        " knows anything about it! ";
    }

    verIoAction2_tell_about(arg1) = { }

    ioAction2_tell_about(arg1, arg2) = { arg2.doAction2_tell_about(arg1, self); }

    verDoAction2_tell_about(arg1, arg2) = {
        "It doesn't look as though ";
        self.thedesc;
        " is interested. ";
    }

    verDoAction151_get_out_of(arg1) = {
        if (arg1.location != self) {
            "%You're% not in ";
            self.thedesc;
            "! ";
        } else if (self.location == nil) {
            "%You% can't get out of ";
            self.thedesc;
            "! ";
        }
    }

    doAction151_get_out_of(arg1) = {
        if (self.prop229) {
            "%You%'ll have to unfasten ";
            arg1.location.prop229.thedesc;
            " first. ";
        } else {
            "Okay, %you're% no longer in ";
            self.thedesc;
            ". ";
            self.prop230(arg1);
            arg1.moveInto(self.location);
        }
    }

    verDoAction43_attack_with(arg1, arg2) = {
        "Attacking ";
        self.thedesc;
        " doesn't appear productive. ";
    }

    verIoAction43_attack_with(arg1) = {
        "It's not very effective to attack with ";
        self.thedesc;
        ". ";
    }

    verDoAction112_eat(arg1) = {
        caps();
        self.thedesc;
        " doesn't appear appetizing. ";
    }

    verDoAction113_drink(arg1) = {
        caps();
        self.thedesc;
        " doesn't appear appetizing. ";
    }

    verDoAction123_give_to(arg1, arg2) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying ";
            self.thedesc;
            ". ";
        } else {
            self.prop177(arg1);
        }
    }

    doAction123_give_to(arg1, arg2) = {
        self.moveInto(arg2);
        "Done. ";
    }

    verDoAction159_pull(arg1) = {
        "Pulling ";
        self.thedesc;
        " doesn't have any effect. ";
    }

    verDoAction53_on(arg1, arg2) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying ";
            self.thedesc;
            ". ";
        } else {
            self.prop177(arg1);
        }
    }

    doAction53_on(arg1, arg2) = {
        "%You% miss%es%. ";
        self.moveInto(arg1.location);
    }

    verIoAction53_on(arg1) = {
        if (arg1.prop125(self)) {
            "%You% could at least drop ";
            self.thedesc;
            " first. ";
        }
    }

    ioAction53_on(arg1, arg2) = { arg2.doAction53_on(arg1, self); }

    verDoAction138_throw_to(arg1, arg2) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying ";
            self.thedesc;
            ". ";
        } else {
            self.prop177(arg1);
        }
    }

    doAction138_throw_to(arg1, arg2) = {
        "%You% miss%es%. ";
        self.moveInto(arg1.location);
    }

    verDoAction48(arg1) = {
        if (!arg1.prop125(self)) {
            "%You're% not carrying ";
            self.thedesc;
            ". ";
        } else {
            self.prop177(arg1);
        }
    }

    doAction48(arg1) = {
        "Thrown. ";
        self.moveInto(arg1.location);
    }

    verDoAction124_show_to(arg1, arg2) = { }

    doAction124_show_to(arg1, arg2) = {
        if (arg2 != nil) {
            caps();
            arg2.thedesc;
            " isn't impressed. ";
        }
    }

    verIoAction124_show_to(arg1) = {
        caps();
        self.thedesc;
        " isn't impressed. ";
    }

    verDoAction135_clean(arg1) = {
        caps();
        self.thedesc;
        " looks a bit cleaner now. ";
    }

    verDoAction134_clean_with(arg1, arg2) = { }

    doAction134_clean_with(arg1, arg2) = {
        caps();
        self.thedesc;
        " looks a bit cleaner now. ";
    }

    verDoAction59_move(arg1) = {
        "Moving ";
        self.thedesc;
        " doesn't reveal anything. ";
    }

    verDoAction58_move_to(arg1, arg2) = {
        "Moving ";
        self.thedesc;
        " doesn't reveal anything. ";
    }

    verIoAction58_move_to(arg1) = { "That doesn't get us anywhere. "; }

    verDoAction57_move_with(arg1, arg2) = {
        "Moving ";
        self.thedesc;
        " doesn't reveal anything. ";
    }

    verIoAction57_move_with(arg1) = {
        caps();
        self.thedesc;
        " doesn't seem to help. ";
    }

    verDoAction66_type_on(arg1, arg2) = { "You should say what you want to type in double quotes, for example, TYPE \"HELLO\" ON KEYBOARD. "; }

    verDoAction73_touch(arg1) = {
        "Touching ";
        self.thedesc;
        " doesn't seem to have any effect. ";
    }

    verDoAction72_poke(arg1) = {
        "Poking ";
        self.thedesc;
        " doesn't seem to have any effect. ";
    }

    verDoAction160_break(arg1) = { }

    doAction160_break(arg1) = { "You'll have to tell me how to do that."; }

    prop262 = { "%You% can't seem to do that. "; }

    verDoAction102_move_north(arg1) = { self.prop262; }

    verDoAction103_move_south(arg1) = { self.prop262; }

    verDoAction104_move_east(arg1) = { self.prop262; }

    verDoAction105_move_west(arg1) = { self.prop262; }

    verDoAction106_move_northeast(arg1) = { self.prop262; }

    verDoAction107_move_northwest(arg1) = { self.prop262; }

    verDoAction108_move_southeast(arg1) = { self.prop262; }

    verDoAction109_move_southwest(arg1) = { self.prop262; }

    verDoAction157_search(arg1) = { "%You% find%s% nothing of interest. "; }

    construct = { self.moveInto(self.location); }

    destruct = { self.moveInto(nil); }

    validActor = { return self.prop179(Me); }
;

obj230_feet: class220, class301_your_body, class253
    noun = 'toe' 'feet' 'mine' 'foot' 'toes'

    adjective = 'right' 'left' 'my'

    ioAction148_attach_to -> prop297

    verIoAction148_attach_to -> prop297

    doAction148_attach_to -> prop297

    verDoAction148_attach_to -> prop297

    prop509 = true

    sdesc = "feet"

    prop167 = {
        "Your feet have gained new callouses during your stay here.  Somehow you  find this comforting, a sign that you still have some adaptability left in you.  ";
        if (Me.prop922) {
            "The soles of both feet sting a bit from that nasty fall you  took<<(Me.prop970 || Me.prop972 ? ", and" : ".  ")>>";
        }
        if (Me.prop970) {
            "<<(Me.prop922 ? " t" : "T")>>he foot with which you kicked the glassy  castle is swollen and tender<<(Me.prop972 ? ", and" : ".  ")>>";
        }
        if (Me.prop972) {
            "<<(Me.prop922 || Me.prop970 ? " y" : "Y")>>ou've got terrible  dark bruises and scrapes on both of them from the incident with the brick.  ";
        }
    }

    prop808 = {
        if (Me.prop970 || Me.prop972) {
            "He looks at them with genuine concern.   \"Ouch!  What'd you do to them?\"  ";
        } else {
            inherited.prop808;
        }
    }

    prop524 = "Gross!  "

    thedesc = "your feet"

    verIoAction43_attack_with(arg1) = { }

    ioAction43_attack_with(arg1, arg2) = { arg2.doAction43_attack_with(arg1, self); }

    verIoAction121_drop_on(arg1) = { }

    ioAction121_drop_on(arg1, arg2) = {
        if (arg2 == obj212_brick) {
            if (Me.prop972) {
                "No way, not again.  Your feet are already covered with massive  bruises from the last incident with the brick.  ";
            } else {
                "You let go of the brick.  \(Aaaaigh!\)  You fall to the floor clutching your injured feet and crying in pain, wondering how you could have done something so \(stupid!\)  Ouch!  Ow!  \(Ow!\)  The pain is so intense it has you rolling on the floor.  You finally wind up laying on your side in a fetal position, trembling with shock.  After what seems like an eternity, the pain slowly subsides. You climb painfully to your feet and wipe the salty tears from your face.  Amazingly, nothing seems to be broken, but the incident has left horrendous yellow bruises and nasty red scrapes on each foot.  ";
                Me.prop519(&prop972);
                obj631_bruises_and_scrapes.moveInto(self);
                obj212_brick.moveInto(Me.location);
                obj20.prop499 = 0;
                remdaemon(&fun203, 0);
                obj20.prop484 = ['shock', 'agony', 'misery', 'achy'];
            }
        } else {
            pass ioAction121_drop_on;
        }
    }

    verDoAction13_in(arg1, arg2) = {
        if (arg2 != obj628_mouth) {
            pass verDoAction13_in;
        }
    }

    doAction13_in(arg1, arg2) = { "No need - there'll be plenty of opportunities for that once you get back to work.  "; }
;

obj231_hands: class301_your_body, class242
    noun = 'hands' 'nails' 'palms' 'fists' 'fingernails' 'fingernail' 'fingers' 'finger' 'hand' 'nail' 'mine' 'palm' 'fist'

    adjective = 'right' 'finger' 'left' 'my'

    prop708 = 9

    ioAction148_attach_to -> prop296

    verIoAction148_attach_to -> prop296

    doAction148_attach_to -> prop296

    verDoAction148_attach_to -> prop296

    prop509 = true

    sdesc = "hands"

    prop167 = {
        local local1 = 0;

        "Your hands look pleasantly sturdy, rid of the slight tremor that  frequently plagues them after a long work day and too much coffee.  ";
        if (Me.prop974) {
            ++local1;
            "You do have a nasty red welt on the heel of one hand,  though<<(Me.prop971 || Me.prop690 ? ", and" : ".  ")>>";
        }
        if (Me.prop971) {
            ++local1;
            "<<(Me.prop974 ? " t" : "T")>>he knuckles of one hand are raw and  red<<(Me.prop690 ? ".  Oh, and" : ".  ")>>";
        }
        if (Me.prop690) {
            ++local1;
            if (Me.prop974 || Me.prop971) {
                " y";
            } else {
                "  Y";
            }
            "ou've got ugly bruises beneath several of your fingernails.  ";
        }
        if (Me.prop973) {
            ++local1;
            "The hand you plunged into the boiling peanut water still burns  angrily<<(Me.prop929 ? ", and" : ".  ")>>";
        }
        if (Me.prop929) {
            ++local1;
            "<<(Me.prop973 ? " a" : "A")>>n ugly cut mars one finger.  ";
        }
        if (Me.prop940) {
            ++local1;
            "<<(local1 > 0 ? " And t" : "T")>>hough it didn't leave a mark, you can still feel  the bite (or pinch) you got from cramming your hand into the dark fissure.  ";
        }
    }

    prop808 = {
        if (Me.prop973 || Me.prop971) {
            "He looks at them  with genuine concern.  \"Ouch!  What'd you do to them?\"  ";
        } else {
            inherited.prop808;
        }
    }

    thedesc = "your hands"

    prop524 = "They taste of sand and sweat and suntan lotion.  "

    verIoAction43_attack_with(arg1) = { }

    ioAction43_attack_with(arg1, arg2) = { arg2.doAction43_attack_with(arg1, self); }

    verIoAction75_with(arg1) = { }

    ioAction75_with(arg1, arg2) = {
        if (arg2 == obj627_trash_heap) {
            obj627_trash_heap.doAction9_dig_with(arg1, self);
        } else {
            arg2.doAction75_with(arg1, self);
        }
    }

    verIoAction71_with(arg1) = { }

    ioAction71_with(arg1, arg2) = { "What do you think your hands are, a wrench?"; }

    verDoAction13_in(arg1, arg2) = {
        if (arg2 != obj609_pocket_of_your_short && arg2 != obj628_mouth) {
            pass verDoAction13_in;
        }
    }

    doAction13_in(arg1, arg2) = {
        if (arg2 == obj609_pocket_of_your_short) {
            "You stick your hand in your pocket and root around, but find nothing unexpected.  ";
        } else if (arg2 == obj628_mouth) {
            "You cram four fingers into your mouth to the third knuckle.  ";
        }
    }
;

class class232: class40
    prop651 = true

    verDoAction8_dig(arg1) = { self.verDoAction9_dig_with(arg1, obj231_hands); }

    doAction8_dig(arg1) = { self.doAction9_dig_with(arg1, obj231_hands); }

    verDoAction9_dig_with(arg1, arg2) = {
        if (!isclass(arg2, class242)) {
            "\^<<arg2.thedesc>> doesn't make a very good shovel.  ";
        }
    }

    doAction9_dig_with(arg1, arg2) = { "Ok, you dig a hole in <<self.thedesc>> with <<arg2.thedesc>>.  "; }

    verIoAction10_dig_in(arg1) = { }

    ioAction10_dig_in(arg1, arg2) = {
        if (isclass(arg2, obj234_shallow_hole) || arg2 == obj235_a_hole) {
            self.doAction9_dig_with(arg1, obj231_hands);
        } else {
            "Huh?  ";
        }
    }

    verIoAction92_dig_for_in(arg1) = { }

    ioAction92_dig_for_in(arg1, arg2) = {
        if (arg2 != obj243_buried_treasure) {
            "You're unlikely to find <<arg2.thedesc>> in <<self.thedesc>>.  ";
        } else {
            self.doAction9_dig_with(arg1, obj231_hands);
        }
    }

    verIoAction146_build_in(arg1) = { }

    ioAction146_build_in(arg1, arg2) = {
        if (arg2 != obj244_imaginary_castle && !isclass(arg2, class245) && !isclass(arg2, obj246_your_sand_castle)) {
            "\^<<arg2.thedesc>> isn't something that can be built in <<self.thedesc>>.  ";
        } else {
            "\^<<self.thedesc>> isn't suitable for building in.  ";
        }
    }
;

obj233_sandy_beach: class431, class28, class263, class232
    noun = 'beach'

    adjective = 'sandy'

    prop149 = "on"

    prop150 = "off of"

    sdesc = "sandy beach"

    thedesc = "the beach"

    prop504 = {
        if (Me.location.prop675) {
            return 'dry sand';
        } else {
            return 'wet sand';
        }
    }

    prop808 = { "He looks out over the railing and gestures at the broad band of golden sand curving around Tybee Island to the south.  \"Isn't it great?  I'm not even really a beach person, but I just love the atmosphere around here.  'Course, what I really love is the sunsets.\"  "; }

    location = {
        local local1 = fun227(Me);

        if (local1.prop675 || local1.prop676) {
            return Me.location;
        } else {
            return nil;
        }
    }

    locationOK = true

    prop167 = { "The beach stretches quite a ways north and south of you, before curving  out of sight around the contours of Tybee Island.  "; }

    verDoAction112_eat(arg1) = { }

    doAction112_eat(arg1) = { "You think back fondly on your youth, when you'd eat dirt for a nickel.  "; }

    verIoAction53_on(arg1) = { }

    ioAction53_on(arg1, arg2) = {
        if (arg2 == obj212_brick) {
            obj212_brick.doAction122_drop(arg1);
        } else {
            Me.location.prop152(arg2);
        }
    }

    verIoAction13_in(arg1) = { }

    ioAction13_in(arg1, arg2) = {
        if (arg2 == obj212_brick) {
            obj212_brick.doAction122_drop(arg1);
        } else {
            Me.location.prop152(arg2);
        }
    }

    verIoAction121_drop_on(arg1) = { }

    ioAction121_drop_on(arg1, arg2) = {
        if (arg2 == obj212_brick) {
            obj212_brick.doAction122_drop(arg1);
        } else {
            Me.location.prop152(arg2);
        }
    }

    verIoAction101_bury_in(arg1) = { }

    ioAction101_bury_in(arg1, arg2) = { arg2.doAction100_bury(arg1); }

    verDoAction86(arg1) = {
        if (!arg1.prop125(obj240_sieve)) {
            "You don't have anything appropriate with which to sift.  ";
        }
    }

    doAction86(arg1) = { self.doAction87_with(arg1, obj240_sieve); }

    verDoAction87_with(arg1, arg2) = { }

    doAction87_with(arg1, arg2) = { "You pour a few handfuls of beach sand through the sieve, but find nothing of interest.  "; }

    verDoAction157_search(arg1) = { self.verDoAction75_with(arg1, obj231_hands); }

    doAction157_search(arg1) = { self.doAction75_with(arg1, obj231_hands); }

    verDoAction75_with(arg1, arg2) = { }

    doAction75_with(arg1, arg2) = {
        if (arg2 == obj240_sieve) {
            self.doAction87_with(arg1, obj240_sieve);
        } else {
            "You scoop aside a few handfuls of sand, but find nothing of interest.  ";
        }
    }

    doAction9_dig_with(arg1, arg2) = {
        local local1, local2, local3, local4, local5, local6;

        local2 = fun227(Me);
        local3 = Me.location;
        local4 = local2 == obj437___Under_Pavilion__;
        local6 = obj438_parchment.prop813;
        local5 = obj439_hole.prop814;
        if (!local5) {
            if (local4 && local6 || local4 && obj439_hole.location == obj437___Under_Pavilion__) {
                if (local3 != obj437___Under_Pavilion__ && local3 != obj439_hole) {
                    "(Getting <<local3.prop150>> <<local3.thedesc>> first.)  \b";
                    arg1.moveInto(obj437___Under_Pavilion__);
                }
                if (obj439_hole.prop815 == 0) {
                    obj439_hole.moveInto(obj437___Under_Pavilion__);
                }
                obj439_hole.doAction9_dig_with(arg1, arg2);
                exit;
            }
        }
        if (local2.prop678) {
            "You dig a bit more sand out of the hole, but fail to find anything of any interest.  ";
            exit;
        }
        if (local2.prop675) {
            "<<(arg2 == obj231_hands ? "Scooping sand away in great handfuls" : "Using the shingle as a shovel")>>, you quickly excavate an area approximately a yard across and a couple of hand spans deep.  Gravity and the slight wind join forces to send the surrounding sand sliding into the hole.  You try to dig deeper, but the deeper you go, the more sand slides in.  You are reminded unpleasantly of your efforts at work.  ";
        } else if (local2.prop676) {
            "It takes you some time because the sand is so tightly packed, but using <<arg2.thedesc>> as a shovel, you diligently excavate an area about a yard across and a hand span deep.  Water begins to fill the hole.  You try to dig deeper, but the deeper you go, the more water enters it, undermining the surrounding sand, which slides into your hole.  It reminds you unpleasantly of your efforts at work.  ";
        }
        if (local4 && local6) {
            "Though you still have the map, you just don't have the heart to go   digging any deeper after your recent near burial.  ";
        } else if (local6) {
            "Unfortunately, you don't find anything.  Perhaps you're digging in the  wrong place.  ";
        }
        local1 = new obj234_shallow_hole;
        local2.prop685 = local1;
        local1.moveInto(local2);
        local2.prop678 = true;
    }

    verIoAction146_build_in(arg1) = { }

    ioAction146_build_in(arg1, arg2) = {
        local local1, local2, local3, local4, local5, local6;

        local1 = Me.location;
        if (isclass(local1, obj234_shallow_hole)) {
            "Perhaps you should climb out of the hole, first.  ";
            exit;
        }
        if (local1.location) {
            local1 = local1.location;
        }
        if (isclass(arg2, obj246_your_sand_castle) || isclass(arg2, class245) || arg2 == obj244_imaginary_castle) {
            local5 = 'castle';
        } else {
            local5 = 'sculpture';
        }
        if (local1.prop675) {
            "You pile up a mound of the dry sand, but it has no cohesion and  you're forced to give up.  ";
        } else if (local1.prop679 && local5 == 'castle') {
            "You look admiringly at the castle you built earlier, and decide that one is enough.  ";
        } else if (local1.prop676 && local5 == 'castle') {
            "You scoop up a few handfuls of wet sand and pile them together into a tidy  mound, then the mound into a rough cylinder.  You carve out a couple of  squarish windows and dot the tower's roof with rook's teeth.  A shallow  ditch around the perimeter makes for a simple moat, complete with  a lowered drawbridge leading up to a broad, open gate.  You rock back on  your heels and admire your work";
            if (obj440_organic_looking_cast.prop293) {
                ".  It's not as graceful or elegant as the spires built by the castle builders,  but still, ";
            } else {
                " and decide that ";
            }
            "you're quite proud of it.  If only your mother were here to see it!  ";
            local3 = new obj246_your_sand_castle;
            local1.prop686 = local3;
            local3.moveInto(local1);
            local1.prop679 = true;
            obj20.prop484 = ['satisfied', 'satisfied'];
        } else if (local1.prop816 && local5 == 'sculpture') {
            "You look admiringly at your earlier sculpture, and decide that one is enough.  ";
        } else if (local1.prop676 && local5 == 'sculpture') {
            local6 = rand(4);
            "You push some wet sand into a small heap and start smoothing and prodding,  searching for the form hidden inside.  An appealing curve draws your attention,  demanding further exploration.  You lean into the smooth curve, making broad  sweeps with your hands.  Shortly, the sensuous figure reveals itself as  ";
            local4 = new obj441_your_sculpture;
            local1.prop817 = local4;
            local4.moveInto(local1);
            local1.prop816 = true;
            obj20.prop484 = ['satisfied', 'satisfied'];
            if (local6 == 1) {
                "a hammerhead shark, its mighty dorsal ridge arched in an attack position.  ";
                local4.prop818 = 1;
                addword(local4, &noun, 'hammerhead');
                addword(local4, &noun, 'shark');
            }
            if (local6 == 2) {
                "a great gull, wings spread, caught in flight.  ";
                local4.prop818 = 2;
                addword(local4, &noun, 'gull');
            }
            if (local6 == 3) {
                "a fat jolly seal, cavorting and flapping its fins in the sand.  ";
                local4.prop818 = 3;
                addword(local4, &noun, 'seal');
            }
            if (local6 == 4) {
                "a lounging mermaid, her tail curled sinuously behind her.  ";
                local4.prop167 = 4;
                addword(local4, &noun, 'mermaid');
            }
        }
    }
;

obj234_shallow_hole: obj442, class259, class232
    noun = 'hole'

    adjective = 'shallow'

    prop682 = { return self.location.prop682; }

    prop678 = true

    prop136 = nil

    prop153 = true

    prop149 = "in"

    prop150 = "out of"

    prop503 = true

    prop181 = 50

    prop182 = 50

    prop831(arg1) = { "The tiny volume of <<say(arg1)>> doesn't go very far towards filling in the hole.  "; }

    prop684 = true

    prop127 = { return [obj233_sandy_beach, self.prop677, self.location.prop686] + self; }

    sdesc = "shallow hole"

    prop167 = {
        "It's a hole in the sand about a yard across and a <<(isclass(self.location, obj443) ? "couple of hand spans" : "hand span")>> deep.  ";
        if (fun4(self.contents)) {
            self.doAction26_look_in(Me);
        }
    }

    prop299 = {
        if (obj439_hole.location == self.location) {
        } else {
            "The shallow hole you dug here earlier is still visible.  ";
        }
    }

    construct = {
        self.prop293 = true;
        pass construct;
    }

    prop313 = { return self.prop306; }

    prop306 = {
        "You hop <<self.prop150>> <<self.thedesc>>.  ";
        self.prop665 = 0;
        Me.moveInto(self.location);
    }

    prop307 = { "You can't get any lower.  "; }

    verDoAction39_lie_on(arg1) = { "The hole's not broad enough to lie in.  "; }

    doAction9_dig_with(arg1, arg2) = {
        local local1 = arg1.location;

        if (Me.prop561) {
            exit;
        }
        if (local1 != self.location && local1 != self) {
            "(Getting <<local1.prop150>> <<local1.thedesc>> first.)  \b";
            arg1.moveInto(self.location);
        }
        if (obj438_parchment.prop813 && !obj439_hole.prop814) {
            obj233_sandy_beach.doAction9_dig_with(arg1, arg2);
        } else {
            "You scoop away a few more handfuls of sand, but ";
            if (obj438_parchment.location == Me) {
                "you still don't find anything";
            } else {
                "the forces of nature prevent you from making it any deeper";
            }
            ".  ";
        }
    }

    verIoAction101_bury_in(arg1) = { }

    ioAction101_bury_in(arg1, arg2) = {
        local local1 = Me.location;

        if (local1 != self) {
            "(Crawling into the hole first.)  \b";
            if (local1 == obj55_ground) {
                obj55_ground.prop665 = 0;
            }
            Me.moveInto(self);
            self.prop665 = 1;
        }
        arg2.doAction100_bury(arg1);
    }

    doAction151_get_out_of(arg1) = { self.prop306; }

    doSynonym('Action54_stand_on') = 'Action139_stand_in'

    doSynonym('Action38_sit_on') = 'Action152_get_on'

    doSynonym('Action38_sit_on') = 'Action76_enter'

    verDoAction172_fill_from(arg1, arg2) = { }

    doAction172_fill_from(arg1, arg2) = {
        if (isclass(arg2, class431) || arg2.prop834) {
            self.doAction171_fill(arg1);
        } else {
            pass doAction172_fill_from;
        }
    }

    prop819(arg1) = { }

    verDoAction171_fill(arg1) = { }

    doAction171_fill(arg1) = {
        local local1 = Me.location;

        if (Me.prop561) {
            exit;
        }
        if (fun4(self.contents)) {
            "(First pushing aside the hole's contents.)  \b";
        }
        "You kneel down next to the hole and bulldoze armfuls of sand back into it.   Soon, no trace of it remains.  ";
        if (local1 == self) {
            Me.moveInto(self.location);
        }
    }

    prop836 = {
        fun207(self, self.location);
        self.location.prop678 = nil;
        self.location.prop685 = nil;
        delete self;
    }

    verIoAction13_in(arg1) = { }

    ioAction13_in(arg1, arg2) = {
        if (fun11(self.contents) + arg2.prop141 > self.prop182) {
            "%You% can't fit that <<self.prop149>> <<self.thedesc>>.  ";
        } else {
            arg2.doAction13_in(arg1, self);
        }
    }
;

obj235_a_hole: class301_your_body, class232
    noun = 'hole'

    prop681 = true

    locationOK = true

    sdesc = "a hole"

    thedesc = "a hole"

    adesc = "a hole"

    prop167 = "Hole?  What hole?  You don't see any hole here.  "

    location = {
        local local1 = fun227(Me);

        if (!local1.prop678 && obj439_hole.location != local1) {
            return Me.location;
        } else {
            return nil;
        }
    }

    doAction8_dig -> disambigDobj

    verDoAction8_dig -> disambigDobj

    doAction9_dig_with -> disambigDobj

    verDoAction9_dig_with -> disambigDobj

    verDoAction10_dig_in(arg1, arg2) = { }

    prop654 = [obj85_dig, obj38_tell, obj37]

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (find(self.prop654, arg2) == nil) {
            self.prop167;
            exit;
        }
    }

    prop837 = [obj38_tell, obj37]

    iobjGen(arg1, arg2, arg3, arg4) = {
        if (find(self.prop837, arg2) == nil) {
            self.prop167;
            exit;
        }
    }
;

obj236_some_money: class42
    noun = 'money' 'change' 'dollars' 'cash'

    adjective = 'some'

    prop140 = 0

    prop141 = 0

    prop293 = true

    sdesc = "some money"

    adesc = "some money"

    thedesc = "the money"

    prop167 = "You never leave your room without a few dollars, in case of emergency.  "

    location = obj609_pocket_of_your_short

    doAction24(arg1) = {
        "You grab the cash out of your pocket.  ";
        self.prop167;
        "Even here on the beach, though, it's not wise to flash it around, so you  carefully tuck it back in your pocket.  ";
    }

    prop177(arg1) = { "You'd better just leave it in your pocket.  "; }

    verDoAction124_show_to(arg1, arg2) = { self.verDoAction123_give_to(arg1, arg2); }

    verDoAction123_give_to(arg1, arg2) = {
        if (arg2 != obj222_the_vendor) {
            pass verDoAction123_give_to;
        }
    }

    prop505 = [obj222_the_vendor]

    prop808 = "He salutes your shorts and says,  \"I don't care what they say, time isn't money, \(freedom\) is money.\"  "
;

obj237: class31
;

obj238_crowbar: class220, class253, class42
    noun = 'strip' 'bar' 'crowbar'

    adjective = 'metal' 'crow'

    prop525 = "It's made of smooth steel, cool to the touch.  "

    location = obj572_peg_board

    sdesc = "crowbar"

    prop167 = { "It's a thin but hefty strip of metal, two fingers broad and about as long as  your forearm.  <<self.prop717>>"; }

    prop505 = [obj222_the_vendor]

    ioSynonym('Action85_pry_with') = 'Action46_with'

    ioSynonym('Action85_pry_with') = 'Action71_with'

    ioSynonym('Action85_pry_with') = 'Action15_with'

    ioSynonym('Action85_pry_with') = 'Action16_with'

    ioSynonym('Action85_pry_with') = 'Action23_with'

    verIoAction85_pry_with(arg1) = {
        if (self.prop611) {
        }
    }

    ioAction85_pry_with(arg1, arg2) = { arg2.doAction85_pry_with(arg1, self); }

    verDoAction5_under(arg1, arg2) = {
        if (self.prop611) {
        } else if (arg2 != obj525_third_hoop && arg2 != obj575_boiler_s_lid && arg2 != obj576_clamp && arg2 != obj564_rooftop_shingles) {
            "You can't get <<self.thedesc>> under <<arg2.thedesc>>.  ";
        } else {
            arg2.verDoAction85_pry_with(arg1, self);
        }
    }

    doAction5_under(arg1, arg2) = { arg2.doAction85_pry_with(arg1, self); }

    prop140 = 4

    prop141 = 3
;

obj239_boiler: class218, class33
    noun = 'hinge' 'bar' 'lip' 'handles' 'boiler' 'hinges'

    adjective = 'boiler\'s'

    prop181 = 9

    prop182 = 9

    prop136 = true

    prop178 = true

    location = obj670_base

    sdesc = "boiler"

    prop505 = [obj222_the_vendor]

    prop808 = { "\"That's one thing I could do without.  Nothing like standing in front of a boiling  pot of water all day.\"  "; }

    prop504 = 'salt water'

    prop801 = 'water'

    prop501 = true

    prop805 = { "The vendor sees you reaching for the boiling water.  \"Hey!  Stop!  What are  you, crazy?  That stuff'll give you first degree burns!\" "; }

    prop858 = { "The vendor spots you reaching for the boiler and throws you a glare  that convinces you otherwise.  "; }

    verDoAction73_touch(arg1) = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            self.prop805;
        } else {
            pass doAction73_touch;
        }
    }

    verDoAction26_look_in(arg1) = {
        if (!self.prop124) {
            "It's closed.  ";
        } else {
            pass verDoAction26_look_in;
        }
    }

    prop804 = 3

    prop167 = {
        "The metal appliance is an industrial sized boiler, which looks rather similar  to a deep fryer.  Basically, it consists of a deep metal pan resting on a  foundation of electric heating coils.  Handles on either side of the pan suggest  that it can be detached from the base.  A thin metal bar girdles the lip of the tray,  reinforcing the frame";
        if (obj575_boiler_s_lid.location == obj239_boiler) {
            ", and a hinged lid ";
            if (self.prop124) {
                "lies folded back against the front panel";
            } else {
                "lies flat on top, anchored to the metal bar with a sturdy clamp which the vendor  <<(Me.prop1001 ? "" : "must have ")>>attached before leaving for the night";
            }
        }
        ".  ";
        if (self.prop501 && obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            "Currently, the boiler is full of bubbling water";
            if (obj556_husks_peanuts_peanut.location == self) {
                ", in which a few peanuts still quiver and jerk";
            }
            ".  The handle of a submerged metal sieve also protrudes from the boiler.  ";
        } else if (self.prop501) {
            "Currently, the boiler is full of ";
            if (self.prop804 == 1) {
                "simmering ";
            } else if (self.prop804 == 2) {
                "steaming ";
            } else if (self.prop804 == 3) {
                "boiling ";
            }
            "water.  ";
        } else if (!self.prop501 && self.prop124) {
            "Currently, there is no water in the boiler.  ";
        }
        if (fun4(self.contents)) {
            "In the boiler you see ";
            fun7(self);
            ".  ";
        }
    }

    doSynonym('Action24') = 'Action153_take_off'

    doSynonym('Action24') = 'Action159_pull'

    verDoAction24(arg1) = { self.verDoAction19_out(arg1, obj670_base); }

    doSynonym('Action19_out') = 'Action149_detach_from'

    doSynonym('Action19_out') = 'Action154_take_off_from'

    doSynonym('Action19_out') = 'Action18_off'

    verDoAction19_out(arg1, arg2) = {
        if (arg2 == obj670_base || arg2 == obj546_snack_bar) {
            "It seems to be firmly attached.  There must be some special trick  to removing it.  ";
        } else {
            "The boiler isn't connected to <<arg2.thedesc>>.  ";
        }
    }

    prop165(arg1) = {
        if (obj222_the_vendor.location != obj427___By_the_Snack_Bar__ && self.prop501 && self.prop804 > 0) {
            if (Me.prop973) {
                "No way.  Your hand is still an angry red from the last time you reached  into the boiler.  ";
            } else {
                "You consider the <<(self.prop804 < 3 ? "near " : "")>>boiling water, and decide  otherwise.  ";
            }
        } else {
            pass prop165;
        }
    }

    ioAction19_out(arg1, arg2) = {
        if (self.prop804 > 1) {
            if (Me.prop973) {
                "No way.  Your hand still burns angrily from the last time you reached  into the boiler.  ";
            } else if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
                "You wait for the vendor to turn away, and then foolishly plunge your hand into the boiling water.  \(Owoooh!\)  You yank your hand back and cram it into your mouth to soothe the pain.  Your cry of pain has not gone unnoticed by the vendor, and now he stands, arms crossed over chest, watching you with a disapproving frown.  After a moment he shakes his head and resumes what he was doing.  ";
            } else {
                "You plunge your hand into the boiler after <<arg2.thedesc>>.  \(Owoooh!\)   You yank your hand back and cram it into your mouth to soothe the pain.   That's the last time \(you'll\) ever put your hand in boiling water.  ";
            }
            Me.prop519(&prop973);
            obj20.prop484 = ['boiled', 'throbbing', 'tingly'];
        } else {
            pass ioAction19_out;
        }
    }

    {{{ unexpected synonym verIoAction13_in -> prop548 }}}

    {{{ unexpected synonym ioAction13_in -> prop549 }}}

    verIoAction13_in(arg1) = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            "The vendor spots you reaching for the boiler and throws you a glare  that convinces you otherwise.  ";
        } else if (!self.prop124) {
            "The boiler is closed.  ";
        }
    }

    ioAction13_in(arg1, arg2) = {
        if (arg2 == obj212_brick) {
            "You see that the heavy brick might damage the boiler's thin metal pan, and decide not to.  ";
        } else if (arg2 == obj213_pail || arg2 == obj303_broken_stave) {
            "\^<<arg2.thedesc>> is too big to fit in the boiler.  ";
        } else {
            pass ioAction13_in;
        }
    }

    verDoAction156_open(arg1) = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            "The boiler's lid is already open.  ";
        } else if (self.prop338) {
            self.verDoAction85_pry_with(arg1, obj231_hands);
        } else {
            "You already busted the hinges and sent the lid flying, remember?  ";
        }
    }

    prop338 = nil

    verDoAction17_close(arg1) = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            self.prop858;
        } else {
            if (self.prop338) {
                "The boiler's lid is already shut.  ";
            } else {
                "You already busted the hinges and sent the lid flying, remember?  ";
            }
        }
    }

    prop1006 = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            self.prop805;
            exit;
        } else if (self.prop804 > 0) {
            if (self.prop973) {
                "No way, not after the scalding you got the \(last\) time you stuck  your hand in the boiler.  ";
            } else {
                "You plunge your hand into the boiler.  \(Owoooh!\)   You yank it back and cram it into your mouth to soothe the pain.   That's the last time \(you'll\) ever put your hand in hot water.  ";
                Me.prop519(&prop973);
                obj20.prop484 = ['boiled', 'throbbing', 'tingly'];
            }
            exit;
        }
    }

    prop861(arg1) = {
        local local1;

        if (arg1.prop504 != 'salt water') {
            "You decide that you've already damaged the boiler enough for one day.  ";
            exit;
        } else if (arg1 != obj213_pail) {
            "The amount of water in <<arg1.thedesc>> is hardly enough even to  cover the bottom of the pan.  You decide not to bother.  ";
            exit;
        } else {
            local1 = length(obj213_pail.contents);
            "You \(heave\) the heavy pail full of water up to your chest and set it  on the counter.  ";
            if (local1) {
                "Before tipping the pail out, you remove the item<<(local1 > 1 ? "s" : "")>>  from it and set <<(local1 > 1 ? "them" : "it")>> on the counter.  ";
            }
            "Then, you pour the contents of the pail into the boiler in a quick, heavy  stream.  The water from the pail fills the boiler about three quarters  of the way to the top.  You figure that should be sufficient.  ";
            fun207(obj213_pail, obj546_snack_bar);
            obj213_pail.prop501 = nil;
            obj213_pail.prop504 = nil;
            obj239_boiler.prop501 = true;
            obj239_boiler.prop504 = 'salt water';
            if (fun4(obj239_boiler.contents)) {
                fun267(obj239_boiler.contents);
            }
            if (obj239_boiler.prop273) {
                obj239_boiler.prop804 = 0;
                notify(obj239_boiler, &prop1007, 2);
            }
        }
    }

    prop273 = true

    verDoAction36_turn_on(arg1) = {
        if (self.prop273) {
            "The black knob is already switched to 'On'.  ";
        }
    }

    doAction36_turn_on(arg1) = {
        self.prop273 = true;
        notify(obj239_boiler, &prop1007, 2);
        "You turn the knob to the 'On' position.  ";
    }

    prop1007 = {
        if (self.prop273 && self.prop804 < 3) {
            ++self.prop804;
            if (Me.prop126(obj427___By_the_Snack_Bar__) && self.prop501) {
                if (self.prop804 == 1) {
                    "\bThe water in the boiler begins to simmer.  ";
                } else if (self.prop804 == 2) {
                    "\bSteam begins to rise from the water in the boiler.  ";
                } else if (self.prop804 == 3) {
                    "\bThe water in the boiler reaches full boil.  ";
                }
            }
            notify(obj239_boiler, &prop1007, 2);
        }
    }

    verDoAction37_turn_off(arg1) = {
        if (!self.prop273) {
            "The black knob is already switched to 'Off'.  ";
        } else if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            self.prop858;
        }
    }

    doAction37_turn_off(arg1) = {
        self.prop273 = nil;
        notify(obj239_boiler, &prop1008, 2);
        "You turn the knob back to the 'Off' position.  ";
    }

    prop1008 = {
        if (self.prop804 > 0 && !self.prop273) {
            --self.prop804;
            if (Me.prop126(obj427___By_the_Snack_Bar__) && self.prop501) {
                if (self.prop804 == 0) {
                    "\bThe water in the boiler stops simmering and comes to rest.  ";
                } else if (self.prop804 == 1) {
                    "\bSteam ceases to rise from the water in the boiler.  ";
                } else if (self.prop804 == 2) {
                    "\bThe water in the boiler stops bubbling.  ";
                }
            }
            notify(obj239_boiler, &prop1008, 2);
        }
    }

    verDoAction70_unlock(arg1) = { self.verDoAction85_pry_with(arg1, obj231_hands); }

    verDoAction68_lock(arg1) = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            "The boiler is already open.  ";
        } else if (self.prop338) {
            "The lid is already clamped in place.  ";
        } else {
            "You already busted the hinges and sent the lid flying, remember?  ";
        }
    }

    doSynonym('Action85_pry_with') = 'Action16_with'

    verDoAction84_pry(arg1) = {
        if (arg1.prop125(obj238_crowbar)) {
            self.verDoAction85_pry_with(arg1, obj238_crowbar);
        } else {
            self.verDoAction85_pry_with(arg1, obj231_hands);
        }
    }

    doAction84_pry(arg1) = {
        if (arg1.prop125(obj238_crowbar)) {
            self.doAction85_pry_with(arg1, obj238_crowbar);
        } else {
            self.doAction85_pry_with(arg1, obj231_hands);
        }
    }

    verDoAction85_pry_with(arg1, arg2) = {
        if (self.prop124) {
            "The lid is already open.  ";
        } else if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            self.prop1009;
        } else if (arg2 != obj231_hands && arg2 != obj238_crowbar && arg2 != obj303_broken_stave) {
            "You can't get the clamp off with <<arg2.thedesc>>.  ";
        } else if (!self.prop338) {
            "You already busted the hinges and sent the lid flying, remember?  ";
        } else if (arg2 == obj303_broken_stave) {
            "The stave is too broad to slide beneath the clamp.  ";
        } else if (arg2 == obj231_hands) {
            "You try to pull the clamp off with your bare hands, but it's anchored  too securely.  There must be some trick to getting it off.  ";
        }
    }

    doAction85_pry_with(arg1, arg2) = {
        local local1 = fun219(Me);

        if (arg2 != obj238_crowbar) {
            "You can't get the lid open with <<arg2.thedesc>>.  ";
            exit;
        }
        if (local1 > 1) {
            obj238_crowbar.moveInto(nil);
            "You put ";
            if (local1 > 2) {
                "the other stuff";
            } else {
                fun221(Me);
            }
            " you were carrying on the counter to free your hands.  Then ";
            fun207(Me, obj546_snack_bar);
            obj238_crowbar.moveInto(Me);
        }
        "<<(local1 > 1 ? "you" : "You")>> slide the metal bar beneath the clamp and apply pressure.  Getting no immediate results, you push harder on the bar.   It bites into the soft flesh of your palms as you strain to force  the clamp.  Suddenly, instead of the clamp giving way, the lid's  hinges shear off with a violent wrenching sound.  Free of the lid's  resistance, you go lunging forward and almost fall from your feet.  The clamp  pops off with a metallic \(twang\) and clatters to the floor where it  disappears beneath the counter.  Simultaneously, the lid flies off and goes  sailing away over the railing like a big, square, metallic frisbee.  ";
        obj576_clamp.moveInto(nil);
        obj575_boiler_s_lid.moveInto(nil);
        obj239_boiler.prop338 = nil;
        obj239_boiler.prop124 = true;
    }
;

obj240_sieve: class242, class220, obj442
    noun = 'sieve' 'handle'

    adjective = 'frame' 'wireframe' 'wire'

    prop181 = 3

    prop182 = 3

    prop141 = 3

    prop140 = 2

    location = obj239_boiler

    sdesc = "sieve"

    prop505 = [obj222_the_vendor]

    prop808 = "He glances at you skeptically.  \"Whaddaya think it's for, Einstein?\"  "

    prop167 = {
        "It's an open-topped wireframe box with a metal handle, used to extract  and drain peanuts from the boiler.  ";
        if (self.location == obj239_boiler) {
            "It's currently submerged in boiling water.  ";
        } else if (fun4(self.contents)) {
            self.doAction26_look_in(Me);
        }
        self.prop717;
    }

    verDoAction24(arg1) = {
        if (self.location == obj239_boiler && obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            "The vendor sees you reaching for the sieve handle and throws  you a glare that convinces you otherwise.  ";
        } else {
            pass verDoAction24;
        }
    }

    doSynonym('Action172_fill_from') = 'Action173_fill_with'

    verDoAction172_fill_from(arg1, arg2) = {
        if (self.location == obj239_boiler) {
            "Not while it's in the boiler.  ";
        } else if (self.location != Me) {
            "You're not holding the sieve.  ";
        } else {
            pass verDoAction172_fill_from;
        }
    }

    verDoAction171_fill(arg1) = {
        if (self.location == obj239_boiler) {
            "Not while it's in the boiler.  ";
        } else if (self.location != Me) {
            "You're not holding the sieve.  ";
        } else if (obj233_sandy_beach.location == Me.location) {
            "You take a handful of sand from the beach and pour it into the sieve,  where it sifts through the wire mesh.  ";
        } else if (obj423_ocean.location == Me.location) {
            "You push the sieve through the ocean.  If it's micro-organisms  you're looking for, the mesh isn't fine enough to strain them out.  ";
        } else {
            self.prop823('anything');
        }
    }

    prop821 = true

    prop823(arg1) = { "You can't fill the sieve with <<say(arg1)>>.  That's what makes it a sieve.  "; }

    prop831(arg1) = { "The <<say(arg1)>> spills right through the sieve's fine mesh.  "; }

    verDoAction167_empty(arg1) = {
        if (length(self.contents) == 0) {
            "There's nothing in the sieve of which to empty it.  ";
        }
    }

    doAction167_empty(arg1) = {
        "You take the contents of the sieve.  ";
        fun207(self, Me);
    }

    ioSynonym('Action9_dig_with') = 'Action75_with'

    ioSynonym('Action9_dig_with') = 'Action87_with'

    ioAction9_dig_with(arg1, arg2) = {
        if (arg2 == obj627_trash_heap) {
            arg2.doAction9_dig_with(arg1, self);
        } else {
            if (arg2 == obj261_dry_sand) {
                "You scoop a few handfuls of dry sand through the sieve, but find nothing of interest.  ";
            } else if (arg2 == obj262_wet_sand) {
                "The clotted sand doesn't pass through the sieve's mesh very well.  ";
            } else {
                "The sieve's fine mesh doesn't make a very good shovel.  ";
            }
        }
    }

    prop914 = { "The coarse rope is too thick to knot around the sieve's handle, and there seems  to be no good way to tie the rope to the body of the sieve.  "; }

    verIoAction23_with(arg1) = {
        if (!Me.prop125(self)) {
            "You're not holding the sieve.  ";
        }
    }

    ioAction23_with(arg1, arg2) = {
        if (arg2 == obj567_steel_key || arg2 == obj238_crowbar) {
            "\^<<arg2.thedesc>> is lying flat on the bottom of the boiler, where you can't  slip the sieve under it.  ";
        } else {
            "You scoop up <<arg2.thedesc>> with the sieve.  ";
            if (obj239_boiler.prop804 > 1) {
                "Ouch ouch ouch!  \^<<arg2.thedesc>> is hot!  You juggle it from one hand to  the other until it's cool enough to handle.  ";
            }
            arg2.moveInto(Me);
        }
    }
;

class class241: class40
    prop140 = 0

    prop141 = 1
;

class class242: class40
    prop653 = true

    verIoAction93_dig_for_with(arg1) = {
        if (self.location != Me) {
            "You're not holding <<self.thedesc>>.  ";
        }
    }

    ioAction93_dig_for_with(arg1, arg2) = { self.ioAction9_dig_with(arg1, obj55_ground); }

    verIoAction9_dig_with(arg1) = {
        if (self.location != Me) {
            "You're not holding <<self.thedesc>>.  ";
        }
    }

    ioAction9_dig_with(arg1, arg2) = { arg2.doAction9_dig_with(arg1, self); }

    verDoAction144_dig(arg1) = {
        if (self.location != Me) {
            "You're not holding <<self.thedesc>>.  ";
        }
    }

    doAction144_dig(arg1) = { obj55_ground.doAction9_dig_with(arg1, self); }
;

obj243_buried_treasure: class529_topic_topics
    noun = 'treasure' 'gold'

    adjective = 'buried'

    prop891 = true

    sdesc = "buried treasure"

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = "\"You hear a lot of old stories.  Couldn't tell you much concrete.\"  "

    prop807 = "\"Hmph.  Fools goin' lightly an all that.\"  "

    verDoAction91_dig_for(arg1) = { obj55_ground.verDoAction9_dig_with(arg1, obj231_hands); }

    doAction91_dig_for(arg1) = { obj55_ground.doAction9_dig_with(arg1, obj231_hands); }

    verDoAction92_dig_for_in(arg1, arg2) = {
        if (!isclass(arg2, class232)) {
            "You're not likely to find any treasure in <<arg2.thedesc>>.  ";
        } else {
            arg2.verDoAction9_dig_with(arg1, obj231_hands);
        }
    }

    doAction92_dig_for_in(arg1, arg2) = { arg2.doAction9_dig_with(arg1, obj231_hands); }

    verDoAction93_dig_for_with(arg1, arg2) = { obj55_ground.prop1021(arg1, arg2); }

    doAction93_dig_for_with(arg1, arg2) = { obj55_ground.doAction9_dig_with(arg1, arg2); }
;

obj244_imaginary_castle: class301_your_body
    noun = 'castle'

    adjective = 'imaginary'

    prop681 = true

    locationOK = true

    sdesc = "imaginary castle"

    thedesc = "your imaginary castle"

    prop167 = "Castle?  What castle?  You don't see any castle here.  "

    location = {
        local local1 = Me.location;

        if (local1.prop679 == nil && obj440_organic_looking_cast.location != local1 && obj491_looming__crystalline.location != local1) {
            return local1;
        } else {
            return nil;
        }
    }

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (arg2 != obj369_build) {
            self.prop167;
            exit;
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = {
        if (arg2 != obj38_tell && arg2 != obj37) {
            self.prop167;
            exit;
        }
    }

    verDoAction145_build(arg1) = { obj55_ground.verIoAction146_build_in(arg1); }

    doAction145_build(arg1) = { obj55_ground.ioAction146_build_in(arg1, self); }

    verDoAction146_build_in(arg1, arg2) = { }

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = { return class245.prop808; }

    prop807 = { return class245.prop807; }
;

class class245: class253, class33
    verDoAction43_attack_with(arg1, arg2) = {
        if (obj212_brick.location == Me && arg2 != obj212_brick || obj213_pail.location == Me && obj213_pail.prop501 && arg2 != obj213_pail) {
            Me.prop561;
        } else if (arg2 == obj231_hands || arg2 == obj230_feet) {
            if (Me.prop970) {
                "The tender, swollen foot you kicked the castle with earlier convinces  you otherwise.  ";
            } else if (Me.prop971) {
                "The raw knuckled hand you punched the castle with earlier convinces  you otherwise.  ";
            }
        }
    }

    doAction43_attack_with(arg1, arg2) = {
        if (arg2 == obj231_hands) {
            self.prop986;
        } else if (arg2 == obj230_feet) {
            self.prop987;
        } else if (arg2.prop140 < 3) {
            "\^<<arg2.thedesc>> isn't likely to do much damage to the castle.  ";
        } else if (arg2 != obj212_brick) {
            "You wind up <<arg2.thedesc>>, swing, and \(smash!\)  With hands still tingling  from the impact, you stand back to observe the fruit of your labor.  ";
        } else {
            "You \(heave\) the brick into the castle with all your strength.   It \(crashes\) into the castle with a terrible sound as of windows  being smashed.  ";
            obj212_brick.moveInto(Me.location);
            obj20.prop499 = 0;
            remdaemon(&fun203, 0);
        }
        self.prop658;
    }

    prop987 = {
        "Throwing caution to the winds, you haul off and deliver a  <<(self == obj491_looming__crystalline ? "powerful" : "truly Brobdignagian")>> kick to the  <<(self == obj491_looming__crystalline ? "looming" : "Lilliputian")>> castle.  \(Ouch!\)  It feels  like your foot is broken!  You hop around on your good foot, clenching the  damaged one in both hands.  Fortunately, the toes are not actually broken,  and after awhile the pain subsides.  You limp back over to the castle to see  what, if any, damage has befallen it.  ";
        self.prop658;
        Me.prop519(&prop970);
        obj20.prop484 = ['shock', 'agony', 'misery', 'achy'];
    }

    prop986 = {
        "Throwing caution to the winds, you haul off and deliver a <<(self == obj491_looming__crystalline ? "powerful" : "truly Brobdignagian")>> punch to the <<(self == obj491_looming__crystalline ? "looming" : "Lilliputian")>> castle.  \(Ouch!\)  It feels like your hand is broken!  You attempt to jam the wounded hand into your mouth to assuage the pain, but only manage to get a few knuckles in.  Fortunately, your fingers are not actually broken, and after awhile the pain subsides.  You stagger back over to the castle to see what, if any, damage has befallen it.  ";
        self.prop658;
        Me.prop519(&prop971);
        obj20.prop484 = ['shock', 'agony', 'misery', 'achy'];
    }

    prop658 = {
        "<<(self == obj491_looming__crystalline ? "A section of" : "Unbelievably,")>> the castle has shattered like a glass vase.  The heart of the castle still stands, while chunks of spire litter the beach.  <<(self == obj491_looming__crystalline ? "Soon," : "Then, to your utter astonishment,")>> the scattered pieces of spire begin to melt into the sand.  <<(self == obj491_looming__crystalline ? "The" : "On closer inspection, you discover that the")>> tiny crustaceans have already begun a swift process of rebuilding.  Bit by bit, they break down the scattered chunks and reintegrate them into the main castle.  So swift is the process that the castle literally rises before your eyes.  <<(self == obj491_looming__crystalline ? "In mere moments," : "Before you can even absorb this astonishing fact,")>>  the castle is back to its original form.  ";
        if (length(obj20.prop484) == 0) {
            obj20.prop484 = ['astonished', 'amazed'];
        }
    }

    verIoAction53_on(arg1) = { }

    ioAction53_on(arg1, arg2) = { self.ioAction121_drop_on(arg1, arg2); }

    prop548(arg1) = { }

    prop549(arg1, arg2) = { self.ioAction121_drop_on(arg1, arg2); }

    verIoAction13_in(arg1) = { }

    ioAction13_in(arg1, arg2) = { self.ioAction121_drop_on(arg1, arg2); }

    verIoAction121_drop_on(arg1) = { }

    ioAction121_drop_on(arg1, arg2) = {
        if (arg2 != obj457_bottle && arg2 != obj471_scuba_mask && arg2 != obj212_brick) {
            "You toss <<arg2.thedesc>> among the castle's spires.  After a moment, a single  crustacean investigates.  Nothing happens.  Soon, the mite moves on, so you  pick up <<arg2.thedesc>>.  ";
        } else if (arg2 == obj471_scuba_mask) {
            "You extend the expensive mask toward the castle's spires.  Somehow, you can  sense the eyes (or eye stalks) of every single mite watching you expectantly.   At the last moment, you experience a change of heart and decide to spare the mask.   You can almost hear the tiny cries of disappointment.  ";
        } else if (arg2 == obj561_antique_bottle) {
            "You extend the ancient bottle toward the castle's spires.  Somehow, you can  sense the eyes (or eye stalks) of every single mite watching you expectantly.   At the last moment, you experience a change of heart and decide to spare the  bottle.  You can almost hear the tiny cries of disappointment.  ";
        } else if (arg2 == obj457_bottle) {
            if (length(arg2.prop502)) {
                "(First removing <<arg2.prop502[1].thedesc>> from the bottle.)  \b";
                arg2.prop657;
            }
            "You toss the bottle among the castle's spires.  It lies for a moment, unnoticed.   Then, a lone crustacean investigates.  You see a single, tiny plume of smoke.   Suddenly, as if on a prearranged signal, the mighty miniature hoards descend.   More swiftly than you can follow, the tiny mites somehow disassemble the  glass bottle and assimilate its mass into the castle.  As the bottle disappears,  the castle grows.  By the time the bottle is completely gone, the castle has  grown a new spire.  ";
            fun207(arg2, self.location);
            arg2.moveInto(nil);
            arg2.prop820;
        } else if (arg2 == obj212_brick) {
            self.doAction43_attack_with(arg1, obj212_brick);
        }
    }

    verDoAction145_build(arg1) = { obj55_ground.verIoAction146_build_in(arg1); }

    doAction145_build(arg1) = { obj55_ground.ioAction146_build_in(arg1, self); }

    verDoAction146_build_in(arg1, arg2) = { }

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = "The vendor grimaces.  \"Glass mites.  Hate 'em.  You ever stepped on one?   Ouch!  They'll burn a hole right through your foot if you let 'em.  Thank goodness,  at least they don't like to go in the water.\"  "

    prop807 = "The old man looks wistfully to the sky, as if recalling some long past event.   \"When I was a lad,\" he says, \"I 'member we used to catch them glass mites and  put them in jugs full of water, then bet on which one'd reach the bottom fastest.\"  "

    prop525 = "The castle is smooth and glossy to the touch, not like sand at all.  It  almost feels like porcelain.  "
;

obj246_your_sand_castle: class33
    noun = 'castle' 'mine'

    adjective = 'sand' 'my'

    prop149 = "on"

    prop150 = "off of"

    sdesc = "your sand castle"

    thedesc = { return self.sdesc; }

    adesc = { return self.sdesc; }

    prop167 = "It's a modest sand castle, with a few squarish windows, a narrow moat,  and even a little drawbridge.  If only your mother could see it!  "

    prop299 = "The castle you raised here earlier still stands.  "

    construct = {
        self.prop293 = true;
        pass construct;
    }

    verDoAction41(arg1) = { self.verDoAction43_attack_with(arg1, obj230_feet); }

    doAction41(arg1) = { self.doAction43_attack_with(arg1, obj230_feet); }

    verDoAction43_attack_with(arg1, arg2) = {
        if (obj212_brick.location == Me && arg2 != obj212_brick || obj213_pail.location == Me && obj213_pail.prop501 && arg2 != obj213_pail) {
            Me.prop561;
        } else if (isclass(Me.location, obj234_shallow_hole) || Me.location == obj439_hole) {
            "How about getting out of that hole, first?  ";
        }
    }

    doAction43_attack_with(arg1, arg2) = {
        local local1;

        local1 = Me.location;
        if (arg2 == obj231_hands) {
            "You ball your hands into fists and obliterate the castle with gusto, throwing  gouts of sand into the air.  Ah, never has destruction been so gratifying.  ";
        } else if (arg2 == obj230_feet) {
            "You level the little castle with an enormous kick that sends sand flying into the  air, and then jump up and down on its remains until no sign of it is left.  ";
        } else if (arg2.prop140 < 3) {
            "\^<<arg2.thedesc>> isn't likely to do much damage to the castle.  ";
            exit;
        } else if (arg2 != obj212_brick) {
            "You wind up <<arg2.thedesc>> and swing, sending sand flying across the beach.  ";
        } else {
            "You heave the brick onto the defenseless castle.  It flattens the doomed  structure into a sandy pancake, leaving no trace behind.  ";
            obj212_brick.moveInto(Me.location);
            obj20.prop499 = 0;
            remdaemon(&fun203, 0);
        }
        self.location.prop679 = nil;
        self.location.prop686 = nil;
        delete self;
    }

    verDoAction145_build(arg1) = { obj55_ground.verIoAction146_build_in(arg1); }

    doAction145_build(arg1) = { obj55_ground.ioAction146_build_in(arg1, self); }

    verDoAction146_build_in(arg1, arg2) = { }

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = { return class245.prop808; }

    prop807 = { return class245.prop807; }
;

class class247: class33
    prop654 = [obj36_inspect, obj249_smell, obj38_tell, obj37]

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (find(self.prop654, arg2) == nil) {
            "You can't do that with <<self.thedesc>>.";
            exit;
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = { self.dobjGen(arg1, arg2, arg3, arg4); }
;

obj249_smell: class82, class83
    verb = 'smell' 'inhale' 'breathe'

    sdesc = "smell"

    action(arg1) = {
        local local1 = Me.location;

        if (isclass(local1, obj217)) {
            "You start to inhale... and your sinuses fill with brine!  Nose and eyes stinging,  you rise, kicking and struggling, to the surface, where you gasp and choke  until your sinuses clear.  \b";
            obj20.prop489 = local1;
            Me.moveInto(local1.prop518);
            Me.location.lookAround(true);
            obj20.prop491 = nil;
            Me.prop519(&prop520);
        } else {
            Me.location.prop521;
        }
    }

    doAction = 'Action83_smell'
;

class class250: class33
    prop167 = "That's not important."

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (arg2 != obj36_inspect) {
            "\^<<self.thedesc>> isn't important.";
            exit;
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = {
        "\^<<self.thedesc>> isn't important.";
        exit;
    }
;

class class251: class33
    dobjGen(arg1, arg2, arg3, arg4) = {
        if (arg2 != obj36_inspect) {
            "It's too far away.";
            exit;
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = { self.dobjGen(arg1, arg2, arg3, arg4); }
;

class class252: class40
    prop131 = nil

    prop137 = true

    prop140 = 0

    prop141 = 0

    verDoAction24(arg1) = {
        "%You% can't have ";
        self.thedesc;
        ". ";
    }

    verDoAction19_out(arg1, arg2) = { self.verDoAction24(arg1); }

    verDoAction122_drop(arg1) = {
        "%You% can't drop ";
        self.thedesc;
        ". ";
    }

    verDoAction18_off(arg1, arg2) = { self.verDoAction24(arg1); }

    verDoAction13_in(arg1, arg2) = {
        "%You% can't put ";
        self.thedesc;
        " anywhere. ";
    }

    verDoAction121_drop_on(arg1, arg2) = {
        "%You% can't put ";
        self.thedesc;
        " anywhere. ";
    }

    verDoAction59_move(arg1) = {
        "%You% can't move ";
        self.thedesc;
        ". ";
    }

    verDoAction53_on(arg1, arg2) = { "%You% can't throw <<self.thedesc>>."; }
;

class class253: class42
    prop510 = nil

    prop655(arg1, arg2) = {
        if (arg2 != obj212_brick) {
            "You can't put it on <<self.thedesc>>.  ";
            return true;
        } else if (Me.prop125(self)) {
            "Not while you're carrying <<self.thedesc>>.  ";
            return true;
        } else if (self.location.location) {
            "Not while it's <<self.location.prop149>> <<self.location.thedesc>>.  ";
            return true;
        } else {
            return nil;
        }
    }

    verIoAction121_drop_on(arg1) = { }

    ioAction121_drop_on(arg1, arg2) = {
        if (self.prop655(arg1, arg2)) {
            exit;
        } else {
            obj212_brick.prop500;
            "You push the brick over eagerly to see the results of your vandalism.  ";
            if (self.prop656) {
                "Wow!  The <<self.thedesc>> has been completely pulverized.  Nothing remains but a pile of tiny shards and dust.  In a moment, a stiff breeze comes along and carries the dust and fragments back to the elements from which they originated.  ";
                if (length(self.contents)) {
                    fun207(self, self.location);
                }
                if (isclass(self, class220)) {
                    self.prop657;
                }
                self.moveInto(nil);
            } else if (self.prop510 == nil) {
                if (isclass(self, class245)) {
                    self.prop658;
                } else {
                    "\^<<self.thedesc>> has apparently come through the ordeal unscathed.  ";
                }
            } else if (length(self.contents)) {
                fun207(self, self.location);
            }
            if (self == obj225_goggles && length(self.prop502) > 0) {
                self.prop657;
                obj254_white_rubber_strap.moveInto(nil);
                obj255_white_rubber_strap.moveInto(self.location);
            } else if (isclass(self, class220)) {
                self.prop657;
            }
            self.prop510.moveInto(self.location);
            self.moveInto(nil);
            "The weight of the brick has smashed <<self.thedesc>>  into <<self.prop510.prop658>>.  ";
        }
    }
;

obj254_white_rubber_strap: class215
    noun = 'strap'

    adjective = 'white' 'rubber' 'thin'

    prop708 = 1

    prop709 = { return obj255_white_rubber_strap.prop709; }

    prop502 = [obj225_goggles]

    prop959 = true

    prop131 = nil

    prop140 = 0

    prop141 = 0

    sdesc = "white rubber strap"

    prop512 = "strap"

    prop513 = "the strap"

    prop514 = "a strap"

    prop167 = { "It's a strap made of thin, white rubber.  If it were removed from the goggles,  it looks as if it would measure about the length of your arm.  "; }

    location = obj225_goggles

    verDoAction159_pull(arg1) = { "You tug on <<self.thedesc>>, but nothing happens.  "; }

    verDoAction150_detach(arg1) = {
        if (!Me.prop125(obj225_goggles)) {
            "You don't have the goggles to remove it from.  ";
        } else if (obj225_goggles.prop128) {
            "You can't do that while you're wearing the goggles.  ";
        }
    }

    doAction150_detach(arg1) = {
        "You remove <<self.thedesc>> from <<self.location.thedesc>>.  ";
        self.prop502 -= obj225_goggles;
        obj225_goggles.prop502 -= self;
        self.moveInto(nil);
        obj255_white_rubber_strap.moveInto(Me);
    }

    doSynonym('Action149_detach_from') = 'Action154_take_off_from'

    verDoAction149_detach_from(arg1, arg2) = {
        if (arg2 == self) {
            "You can't detach the strap from itself.  ";
        } else if (arg2 != obj225_goggles) {
            "The strap isn't attached to <<arg2.thedesc>>.  ";
        } else {
            self.verDoAction150_detach(arg1);
        }
    }

    doAction149_detach_from(arg1, arg2) = { self.doAction150_detach(arg1); }

    doSynonym('Action13_in') = 'Action121_drop_on'

    doSynonym('Action13_in') = 'Action122_drop'

    prop960(arg1) = {
        if (obj225_goggles.location != Me) {
            "You'll have to pick up the goggles first.  ";
        } else {
            "You'll have to remove it from the goggles first.  ";
        }
    }
;

obj255_white_rubber_strap: class215
    noun = 'strap'

    adjective = 'white' 'rubber' 'thin'

    prop708 = 2

    prop502 = []

    prop709 = [obj225_goggles, obj426_shrimp, obj561_antique_bottle, obj457_bottle, obj588_can, obj303_broken_stave, obj238_crowbar, obj297_ankle, obj296_wrist, obj613_neck, obj298_waist, obj429_public_shower, obj514_thin_slat_fences, obj517_boardwalk, obj519_boardwalk, obj525_third_hoop, obj523_steel_chain, obj527_valve, obj526_pipes, class61_you, class434_railing, obj613_neck, obj240_sieve, obj567_steel_key, obj612_legs, obj611_arms, obj295_body, obj484_gate, obj483_gate, obj475_benches, obj465_conch_shell, obj565_shingle, obj563_boiled_crab]

    prop712 = &prop915

    prop961(arg1) = { "While <<self.thedesc>> is long enough to reach around <<arg1.thedesc>>,  it's too thin and flaccid to support <<arg1.thedesc>>'s weight.  "; }

    prop952(arg1) = { "\^<<self.thedesc>> is too short to go around <<arg1.thedesc>>.  "; }

    verDoAction159_pull(arg1) = {
        if (find(self.prop502, obj299_deep_fissure) == nil) {
            "You tug on <<self.thedesc>>, but nothing happens.  ";
        }
    }

    doAction159_pull(arg1) = {
        if (find(self.prop502, obj299_deep_fissure) == nil) {
            "You tug on <<self.thedesc>>, but nothing happens.  ";
        } else {
            self.ioAction149_detach_from(arg1, obj299_deep_fissure);
        }
    }

    verDoAction24(arg1) = {
        if (find(self.prop502, obj299_deep_fissure) == nil) {
            pass verDoAction24;
        }
    }

    doAction24(arg1) = {
        if (find(self.prop502, obj299_deep_fissure) != nil) {
            self.doAction149_detach_from(arg1, obj299_deep_fissure);
        } else if (find(self.prop502, obj465_conch_shell) != nil) {
            obj465_conch_shell.doAction24(arg1);
        } else {
            pass doAction24;
        }
    }

    doAction148_attach_to(arg1, arg2) = {
        if (arg2 == obj225_goggles) {
            if (length(self.prop502) > 0) {
                "You'll have to remove the strap from <<self.prop502[1].thedesc>>";
                if (length(self.prop502) > 1) {
                    " and <<self.prop502[2].thedesc>>";
                }
                " before you can reattach it to the goggles.  ";
            } else {
                self.moveInto(nil);
                obj254_white_rubber_strap.moveInto(obj225_goggles);
                obj254_white_rubber_strap.prop502 += obj225_goggles;
                obj225_goggles.prop502 += obj254_white_rubber_strap;
                "You reattach <<self.thedesc>> to <<arg2.thedesc>>.  ";
            }
        } else {
            pass doAction148_attach_to;
        }
    }

    prop711(arg1, arg2) = {
        if (arg2 == obj299_deep_fissure || arg2 == obj465_conch_shell) {
            "You give the strap a tug, and it pulls free of <<arg2.thedesc>> with a small snap";
            if (length(self.prop502)) {
                " taking <<self.prop502[1].thedesc>> with it";
            }
            ".  ";
        } else {
            pass prop711;
        }
    }

    location = nil

    prop140 = 0

    prop141 = 0

    prop508 = 0

    prop128 = nil

    prop512 = "strap"

    prop513 = "the strap"

    prop514 = "a strap"

    sdesc = "white rubber strap"

    prop167 = { "It's a thin, white, rubber strap about the length of your arm.  <<self.prop717>>"; }

    verDoAction13_in(arg1, arg2) = {
        if (find(self.prop502, arg2)) {
            "Not while <<self.thedesc>> is tied to <<arg2.thedesc>>.  ";
        } else {
            pass verDoAction13_in;
        }
    }
;

class class256: class42
    prop333 = {
        if (self.prop128) {
            "(Taking off ";
            self.thedesc;
            " first)\n";
            self.prop128 = nil;
        }
    }

    doAction122_drop(arg1) = {
        self.prop333;
        pass doAction122_drop;
    }

    doAction13_in(arg1, arg2) = {
        self.prop333;
        pass doAction13_in;
    }

    doAction121_drop_on(arg1, arg2) = {
        self.prop333;
        pass doAction121_drop_on;
    }

    doAction123_give_to(arg1, arg2) = {
        self.prop333;
        pass doAction123_give_to;
    }

    doAction53_on(arg1, arg2) = {
        self.prop333;
        pass doAction53_on;
    }

    doAction138_throw_to(arg1, arg2) = {
        self.prop333;
        pass doAction138_throw_to;
    }

    doAction48(arg1) = {
        self.prop333;
        pass doAction48;
    }

    moveInto(arg1) = {
        self.prop128 = nil;
        pass moveInto;
    }

    verDoAction12_wear(arg1) = {
        if (self.prop128) {
            "%You're% already wearing ";
            self.thedesc;
            "! ";
        } else if (!arg1.prop125(self)) {
            "%You% %do%n't have ";
            self.thedesc;
            ". ";
        }
    }

    doAction12_wear(arg1) = {
        "Okay, %you're% now wearing ";
        self.thedesc;
        ". ";
        self.prop128 = true;
    }

    verDoAction153_take_off(arg1) = {
        if (!self.prop128) {
            "%You're% not wearing ";
            self.thedesc;
            ". ";
        }
    }

    verDoAction24(arg1) = {
        if (self.prop128) {
            self.verDoAction153_take_off(arg1);
        } else {
            pass verDoAction24;
        }
    }

    doAction24(arg1) = {
        if (self.prop128) {
            self.doAction153_take_off(arg1);
        } else {
            pass doAction24;
        }
    }

    doAction153_take_off(arg1) = {
        "Okay, %you're% no longer wearing ";
        self.thedesc;
        ". ";
        self.prop128 = nil;
    }

    doSynonym('Action153_take_off') = 'Action151_get_out_of'
;

class class257: class42
    prop182 = 10

    prop124 = true

    prop358 = true

    prop167 = {
        if (self.prop135 && fun4(self.contents) != 0) {
            "In ";
            self.thedesc;
            " %you% see%s% ";
            fun7(self);
            ". ";
        } else {
            "There's nothing in ";
            self.thedesc;
            ". ";
        }
    }

    verIoAction13_in(arg1) = { }

    ioAction13_in(arg1, arg2) = {
        if (fun11(self.contents) + arg2.prop141 > self.prop182) {
            "%You% can't fit that in ";
            self.thedesc;
            ". ";
        } else {
            arg2.doAction13_in(arg1, self);
        }
    }

    verDoAction26_look_in(arg1) = { }

    doAction26_look_in(arg1) = { self.prop167; }
;

class class258: class31
    prop149 = "in"

    prop150 = "out of"

    prop130 = {
        if (self.location) {
            return self.location.prop130;
        }
        return nil;
    }

    statusLine = { "<<self.location.sdesc>>, <<self.prop149>> <<self.thedesc>>\n\t"; }

    lookAround(arg1) = {
        self.statusLine;
        self.location.prop151(arg1);
    }

    prop152(arg1) = {
        if (self.location == nil || self.prop153) {
            pass prop152;
        } else {
            self.location.prop152(arg1);
        }
    }
;

class class259: class35
    prop662 = {
        "(Getting <<self.prop150>> <<self.thedesc>> first.)  \b";
        self.prop665 = 0;
        Me.moveInto(Me.location.location);
    }

    prop230(arg1) = {
        self.prop665 = 0;
        pass prop230;
    }

    prop666 = {
        self.location.prop667;
        "(Though you'll have to get <<self.prop150>> <<self.thedesc>> before  you can go anywhere.)  ";
    }

    prop498 = { return self.location.prop498; }

    prop665 = 0

    prop661 = {
        if (self.prop665 == 1) {
            "sitting";
        } else if (self.prop665 == 2) {
            "standing";
        } else if (self.prop665 == 3) {
            "lying";
        }
    }

    prop154 = nil

    prop149 = "on"

    prop150 = "off of"

    prop511 = "gently toss"

    prop181 = 100

    prop182 = 100

    prop306 = { "You can't get any higher.  "; }

    prop307 = { self.doAction151_get_out_of(Me); }

    doSynonym('Action151_get_out_of') = 'Action140_jump_over'

    verDoAction151_get_out_of(arg1) = {
        if (Me.location != self) {
            "You're not <<self.prop149>> <<self.thedesc>>.  ";
        }
    }

    doAction151_get_out_of(arg1) = {
        "You hop down <<self.prop150>> <<self.thedesc>>.  ";
        self.prop665 = 0;
        Me.moveInto(Me.location.location);
    }

    prop670(arg1) = {
        if (Me.location == self && self.prop665 == arg1) {
            "You're already <<self.prop661>> <<self.prop149>> <<self.thedesc>>.  ";
        }
    }

    prop671(arg1, arg2) = {
        if (Me.location != self) {
            Me.moveInto(self);
            "You hop <<self.prop149>>to <<self.thedesc>> and <<say(arg2)>>  <<self.prop149>> it.  ";
        } else {
            "You <<say(arg2)>> <<self.prop149>> <<self.thedesc>>.  ";
        }
        self.prop665 = arg1;
    }

    verDoAction38_sit_on(arg1) = {
        if (self.prop561) {
        } else if (self.prop670(1)) {
        }
    }

    doAction38_sit_on(arg1) = { self.prop671(1, 'take a seat'); }

    verDoAction39_lie_on(arg1) = {
        if (self.prop561) {
        } else if (self.prop670(3)) {
        }
    }

    doAction39_lie_on(arg1) = { self.prop671(3, 'lie down'); }

    doSynonym('Action54_stand_on') = 'Action143_climb'

    doSynonym('Action54_stand_on') = 'Action152_get_on'

    verDoAction54_stand_on(arg1) = {
        if (self.prop561) {
        } else if (self.prop670(2)) {
        }
    }

    doAction54_stand_on(arg1) = { self.prop671(2, 'stand'); }

    verDoAction96_dance(arg1) = { }

    doAction96_dance(arg1) = {
        if (self.prop665 == 0) {
            "You're not <<self.prop149>> <<self.thedesc>>.  ";
        } else if (self.prop665 != 2) {
            "Not while you're <<self.prop661>> <<self.prop149>> it.  ";
        } else {
            "You do a happy little jig <<self.prop149>> <<self.thedesc>>.  ";
        }
    }

    ioSynonym('Action121_drop_on') = 'Action53_on'

    {{{ unexpected synonym verIoAction13_in -> prop673 }}}

    {{{ unexpected synonym ioAction13_in -> prop674 }}}

    {{{ unexpected synonym verIoAction13_in -> prop548 }}}

    {{{ unexpected synonym ioAction13_in -> prop549 }}}

    prop675 = { return self.location.prop675; }

    prop676 = { return self.location.prop676; }

    prop677 = {
        if (self.location.prop675) {
            return obj261_dry_sand;
        } else if (self.location.prop676) {
            return obj262_wet_sand;
        } else {
            return nil;
        }
    }

    prop504 = {
        if (self.location.prop675) {
            return 'dry sand';
        } else if (self.location.prop676) {
            return 'wet sand';
        } else {
            return nil;
        }
    }

    prop678 = {
        if (self.location != nil) {
            return self.location.prop678;
        } else {
            return nil;
        }
    }

    prop679 = {
        if (self.location != nil) {
            return self.location.prop679;
        } else {
            return nil;
        }
    }
;

class class260: class33, class32, class34
    prop127 = { return [] + self; }

    prop154 = true

    prop150 = "out of"

    roomAction(arg1, arg2, arg3, arg4, arg5) = {
        if (arg3 != nil && arg2 != obj36_inspect) {
            fun3(self, arg1, arg2, arg3);
        }
        if (arg5 != nil && arg2 != obj37 && arg2 != obj38_tell) {
            fun3(self, arg1, arg2, arg5);
        }
        pass roomAction;
    }

    prop155(arg1) = { }

    prop156 = {
        "%You're% not going anywhere until %you% get%s% <<self.prop150>> <<self.thedesc>>. ";
        return nil;
    }

    verDoAction152_get_on(arg1) = { self.verDoAction38_sit_on(arg1); }

    doAction152_get_on(arg1) = { self.doAction38_sit_on(arg1); }

    verDoAction38_sit_on(arg1) = {
        if (arg1.location == self) {
            "%You're% already on ";
            self.thedesc;
            "! ";
        }
    }

    doAction38_sit_on(arg1) = {
        "Okay, %you're% now sitting on ";
        self.thedesc;
        ". ";
        arg1.prop161(self);
    }

    verDoAction39_lie_on(arg1) = { self.verDoAction38_sit_on(arg1); }

    doAction39_lie_on(arg1) = { self.doAction38_sit_on(arg1); }
;

obj261_dry_sand: class289_sand
    noun = 'sand'

    adjective = 'dry' 'golden' 'powdery' 'gold' 'sand'

    prop525 = "It's dry and powdery.  "

    sdesc = "dry sand"

    prop167 = {
        "The dry, powdery sand is a light, almost golden, color.  ";
        if (Me.prop562) {
            "The mound of sand that covers you must weigh a ton, yet, somehow you find it  warmly comforting, like a return to the womb.  ";
        }
    }

    adesc = "some dry sand"

    prop504 = 'dry sand'

    prop801 = 'sand'

    verDoAction151_get_out_of(arg1) = {
        if (!Me.prop562) {
            pass verDoAction151_get_out_of;
        }
    }

    doAction151_get_out_of(arg1) = { obj55_ground.doAction151_get_out_of(arg1); }

    verDoAction153_take_off(arg1) = {
        if (!Me.prop562) {
            pass prop659;
        }
    }

    doAction153_take_off(arg1) = { obj55_ground.doAction151_get_out_of(arg1); }

    verDoAction18_off(arg1, arg2) = {
        if (!Me.prop562 || Me.prop562 && arg2 != Me) {
            pass verDoAction18_off;
        }
    }

    doAction18_off(arg1, arg2) = { obj55_ground.doAction151_get_out_of(arg1); }
;

obj262_wet_sand: class289_sand
    noun = 'sand'

    adjective = 'wet' 'packed' 'bronzed' 'bronze' 'hard' 'sand'

    prop525 = "It's cool and damp.  "

    sdesc = "wet sand"

    prop167 = "The wet sand is a dark, almost bronze, color.  "

    adesc = "some wet sand"

    prop504 = 'wet sand'

    prop801 = 'sand'
;

class class263: class33
    doAction96_dance -> disambigDobj

    verDoAction96_dance -> disambigDobj

    doAction38_sit_on -> disambigDobj

    verDoAction38_sit_on -> disambigDobj

    ioAction121_drop_on -> disambigDobj

    verIoAction121_drop_on -> disambigDobj

    ioAction13_in -> disambigDobj

    verIoAction13_in -> disambigDobj

    doAction39_lie_on -> disambigDobj

    verDoAction39_lie_on -> disambigDobj

    doAction8_dig -> disambigDobj

    verDoAction8_dig -> disambigDobj

    doAction9_dig_with -> disambigDobj

    verDoAction9_dig_with -> disambigDobj

    doAction54_stand_on -> disambigDobj

    verDoAction54_stand_on -> disambigDobj

    ioAction101_bury_in -> disambigDobj

    verIoAction101_bury_in -> disambigDobj

    ioAction146_build_in -> disambigDobj

    verIoAction146_build_in -> disambigDobj

    ioAction53_on -> disambigDobj

    verIoAction53_on -> disambigDobj

    prop549 -> disambigDobj

    prop548 -> disambigDobj

    prop674 -> disambigDobj

    prop673 -> disambigDobj
;

class class264: class42, class32
    prop127 = { return [] + self; }

    prop355 = true

    verDoAction76_enter(arg1) = { self.verDoAction152_get_on(arg1); }

    doAction76_enter(arg1) = { self.doAction152_get_on(arg1); }

    verDoAction152_get_on(arg1) = {
        if (arg1.location == self) {
            "%You're% already in ";
            self.thedesc;
            "! ";
        } else if (arg1.prop125(self)) {
            "%You%'ll have to drop <<self.thedesc>> first!";
        }
    }

    doAction152_get_on(arg1) = {
        "Okay, %you're% now in ";
        self.thedesc;
        ". ";
        arg1.moveInto(self);
    }

    prop156 = {
        "%You're% not going anywhere until %you% get%s% out of ";
        self.thedesc;
        ". ";
        return nil;
    }

    prop313 = { return self.location; }

    verDoAction24(arg1) = {
        if (arg1.prop126(self)) {
            "%You%'ll have to get <<self.prop150>> <<self.thedesc>> first.";
        } else {
            pass verDoAction24;
        }
    }

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (arg1.prop126(self) && arg2 != obj36_inspect && arg2 != obj71 && arg2 != obj72_exit) {
            "%You%'ll have to get out of <<self.thedesc>> first.";
            exit;
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = {
        if (arg1.prop126(self) && arg2 != obj73) {
            "%You%'ll have to get out of <<self.thedesc>> first.";
            exit;
        }
    }
;

obj265: obj228, obj216
    prop485 = 'refreshed'

    prop889 = true

    prop682 = 'water'

    prop683 = { "You know there's a bottom down there somewhere, but you can't see it from here.  "; }

    prop498 = {
        if (rand(4) == 1) {
            say(self.prop885[rand(length(self.prop885))]);
        }
    }

    prop885 = ['\bA rather large wave surges over your head, leaving you momentarily sputtering.  ', '\bSomething unseen brushes by your waist.  ', '\bA gentle wave laps by, setting you bobbing in the current.  ']

    prop693 = { "You enjoy the mischievous, stimulating thrill of unencumbered swimming.   Eventually, however, you decide to get back into your suit in case someone spots  you.  "; }

    prop886 = { "You kick back towards shore, skimming along for a few yards before coming to  rest in shallower water.  \b"; }
;

obj266: obj472, obj228, obj216
    prop888 = true

    prop682 = 'mud'

    prop683 = { "The surging water ebbs and flows about your knees.  Beneath your feet,  you feel a fine layer of cold, squishy mud covering the wet sand.  "; }

    prop498 = {
        local local1 = Me.location;

        if (rand(4) == 1) {
            if (local1 == obj55_ground && obj55_ground.prop665 == 1) {
                "\bA gentle wave rides up the slope of your back as you sit in the shallow water.  ";
            } else if (local1 == obj55_ground && obj55_ground.prop665 == 3) {
                "\bA large wave crashes down on your head, leaving you momentarily sputtering.  ";
            } else {
                say(self.prop885[rand(length(self.prop885))]);
            }
        }
    }

    prop885 = ['\bA rather large wave surges past, wetting you up to the waist and nearly  toppling you from your feet.  ', '\bSomething unseen nips lightly at your toes.  ', '\bA gentle, white crested wave laps past your knees.  ']

    prop886 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "Splashing and struggling under the weight of the  <<(obj212_brick.location == Me ? "brick" : "pail full of water")>>, you stagger out of the shallow surf.  ";
        } else {
            "You splash merrily out of the shallow water, on to the hard packed sand.  ";
        }
        "\b";
    }

    prop887 = {
        local local1 = fun219(Me);

        if (obj212_brick.location == Me) {
            "As you march into the deeper water, the brick in your hands becomes  slightly easier to carry.  Though your feet still sink into the ocean  floor, the brick's added weight lets you remain vertical.  The water  rises up to your stomach... your chest... your shoulders... and when it  reaches your chin you just take a deep breath and keep on going.  Your  head goes under<<(Me.prop876 ? " and salt stings your eyes" : "")>>, but  you nevertheless struggle valiantly on.  Finally, you have to rise for  breath, which you can only do by dropping the brick.  You see one final  glimpse of the brick disappearing into the murk as you kick towards the  surface.  ";
            obj212_brick.moveInto(obj473_path);
            obj212_brick.prop131 = nil;
            obj20.prop499 = 0;
            remdaemon(&fun203, 0);
        } else if (obj213_pail.location == Me && obj213_pail.prop501) {
            "As you enter the deeper water, the pail full of water ceases to weigh  you down.  However, it adds to your overall drag and makes swimming  more difficult.  ";
        } else if (local1 > 1) {
            "You'd better do something with <<(local1 > 2 ? "some" : "one")>> of the items  you're carrying first.  You'll need at least one hand free to swim.  ";
            exit;
        } else {
            "You launch yourself towards deeper water, skimming along for a few yards  before coming to a stop.  ";
        }
        "\b";
    }

    prop307 = { obj55_ground.doAction38_sit_on(Me); }
;

fun267: function(arg1) {
    local local1, local2, local3, local4;

    local4 = 0;
    local3 = length(arg1);
    local1 = 1;
  label153072:
    if (local1 <= local3) {
        local2 = arg1[local1];
        if (local2.prop557 && !isclass(local2, class74)) {
            ++local4;
        }
        if (local2.prop504 == 'dry sand') {
            local2.prop820;
            local2.prop819('wet sand');
            ++local4;
            "Salt water seeps into the once dry sand contained in <<local2.thedesc>>.  ";
        } else if (!local2.prop881 && local2.prop124) {
            if (!local2.prop821 && !local2.prop501) {
                local2.prop504 = 'salt water';
                local2.prop501 = true;
                ++local4;
                "Salt water fills <<local2.thedesc>>.  ";
            }
            if (fun267(local2.contents)) {
                ++local4;
            }
        }
        local1 = local1 + 1;
        goto label153072;
    }
    if (local4 > 0) {
        return true;
    } else {
        return nil;
    }
}

obj268_mud: class28, class33, class232
    noun = 'mud' 'silt'

    adjective = 'fine'

    prop525 = "It squelches unpleasantly through your fingers.  "

    locationOK = true

    location = {
        local local1 = Me.location;

        if (local1.prop682 == 'mud') {
            return local1;
        } else {
            return nil;
        }
    }

    prop924 = 0

    sdesc = "mud"

    prop167 = {
        local local1 = fun227(Me);

        "The mud covers all of the ocean floor";
        if (isclass(local1, obj266)) {
            ", and squelches beneath you.  ";
            exit;
        }
        if (isclass(local1, obj217) && local1 != obj397___Underwater_____dri || local1 == obj397___Underwater_____dri && obj602_patch_of_level_surfa.location == nil) {
            ".";
        } else {
            ", but in one spot, ";
            switch (self.prop924) {
              case 0:
                "the currents have brushed away enough of it to reveal part of a  pattern hidden beneath.  ";
                goto label154158;
              case 1:
                "you've brushed away enough of it to reveal a single black footprint beneath.  ";
                goto label154158;
              case 2:
                "you've brushed away enough of it to reveal two footprints joined by a  curving line.  ";
                goto label154158;
              default:
                "you've brushed away enough to reveal a complex dance step diagram beneath.  ";
                goto label154158;
            }
        }
      label154158:
    }

    verDoAction24(arg1) = { "The mud squelches between your fingers and slips away in the current, leaving  behind no trace of disturbance.  "; }

    verIoAction101_bury_in(arg1) = { }

    ioAction101_bury_in(arg1, arg2) = { arg2.doAction100_bury(arg1); }

    verDoAction135_clean(arg1) = { self.verDoAction9_dig_with(arg1, obj231_hands); }

    doAction135_clean(arg1) = { self.doAction9_dig_with(arg1, obj231_hands); }

    doAction9_dig_with(arg1, arg2) = {
        local local1 = Me.location;

        if (isclass(local1, obj266)) {
            self.verDoAction24(arg1);
        } else if (local1 == obj466___Underwater_____dri || local1 == obj468___Underwater_____dri || obj602_patch_of_level_surfa.location != obj339___Inside_the__Octopu) {
            self.verDoAction24(arg1);
        } else if (local1 == obj397___Underwater_____dri && obj602_patch_of_level_surfa.location == obj339___Inside_the__Octopu) {
            switch (self.prop924) {
              case 0:
                "You have no way to secure yourself, which makes moving the mud a difficult process.  But you scrape it away industriously, waving it off in large swathes.  The mud rises, clouding the surrounding water, but the pattern becomes slightly clearer.  You can just make out a single black footprint.  ";
                addword(obj502_surface_pattern, &noun, 'footprint');
                goto label155676;
              case 1:
                "You continue waving mud from the pattern, further clouding the water.   You manage to uncover a second footprint, and a curved line connecting  them both.  ";
                addword(obj502_surface_pattern, &noun, 'footprints');
                addword(obj502_surface_pattern, &adjective, 'curved');
                addword(obj502_surface_pattern, &noun, 'line');
                addword(obj502_surface_pattern, &noun, 'curve');
                goto label155676;
              case 2:
                "At last you can make out the pattern.  It's a dance diagram.  There can be  no doubt.  Black footprints connected by swooping lines describe an  intricate dance step.  ";
                addword(obj502_surface_pattern, &adjective, 'dance');
                addword(obj502_surface_pattern, &adjective, 'step');
                addword(obj502_surface_pattern, &noun, 'diagram');
                addword(obj502_surface_pattern, &adjective, 'swooping');
                addword(obj502_surface_pattern, &noun, 'lines');
                obj603_coral_reef.moveInto(nil);
                obj212_brick.moveInto(nil);
                if (obj555_brass_plaque.prop891) {
                    "A sudden burst of recognition hits you.  This flat surface must be a  chunk of the original Tybrisa Pavilion!  ";
                }
                "You wish you could tell what dance was being described here.  ";
                goto label155676;
              default:
                "You've cleared away as much of the mud as you need to.  To continue  would be a fruitless effort.  ";
                goto label155676;
            }
          label155676:
            self.prop924 = self.prop924 + 1;
        }
    }

    doAction38_sit_on -> disambigDobj

    verDoAction38_sit_on -> disambigDobj

    doAction39_lie_on -> disambigDobj

    verDoAction39_lie_on -> disambigDobj

    doAction54_stand_on -> disambigDobj

    verDoAction54_stand_on -> disambigDobj
;

obj269___Pavilion__: obj474
    noun = 'loc-pavilion'

    sdesc = "\(Pavilion\)"

    prop167 = {
        "You're standing in the center of a colossal gazebo that provides shade for  sunburned tourists like yourself.  The  octagonal floor is made of unbroken grey concrete, bordered on each face by a waist high railing.  Tall beams support a sloping wooden  canopy that rises over three times your height.  A red brick enclosure squats  in the southwest corner and a small snack bar nestles up against the enclosure  to the south.  To the east lies the foot of a seemingly endless pier.  ";
        if (obj475_benches.location == self) {
            "\n\tThere are numerous wooden benches here.  ";
            obj475_benches.prop896;
        } else {
            "A number of wooden benches sit along the north face of the pavilion.  ";
        }
    }

    prop155(arg1) = {
        inherited.prop155(arg1);
        if (!self.prop891) {
            "\bThe snack bar must be what the sign on the stairs was pointing to.  Your  stomach rumbles again at the thought of food.  ";
            self.prop891 = true;
        }
    }

    prop666 = { "You can go west to the beach path, north to the northern face of the pavilion,  south to the snack bar,  <<(obj475_benches.location == obj269___Pavilion__ && obj475_benches.prop897 == 3 ? "up the benches to the enclosure's roof, " : "")>>or east to the pier.  "; }

    prop692 = { return obj476_Tybrisa_Pavilion_s_c.prop167; }

    prop305 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "You stagger down the ramp under the  <<(obj212_brick.location == Me ? "brick" : "bucket")>>'s weight.  \b";
        }
        return obj199___Beach_Path__;
    }

    prop304 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "You stagger out of the shady pavilion and onto the long pier.  The weight  of the <<(obj212_brick.location == Me ? "brick" : "bucket")>> makes the lengthy  pier look even longer than usual.  \b";
        } else {
            "The light of the setting sun warms your back as you exit the shade of the  pavilion and begin the long stroll down the pier.  \b";
        }
        return obj449___Middle_of_Pier__;
    }

    prop310 = { return self.prop303; }

    prop311 = {
        "You rattle one of the restroom doors, but can't open it.  Apparently they've  been locked up for the evening.  ";
        return nil;
    }

    prop303 = {
        fun204('south');
        return obj427___By_the_Snack_Bar__;
    }

    prop302 = {
        fun204('north');
        return obj448_loc_benchroom;
    }

    prop306 = {
        local local1 = fun219(Me);

        if (Me.prop561) {
        } else if (obj475_benches.location != self) {
            "You look longingly up at the top of the brick enclosure, but it's plainly out of reach.";
            return nil;
        } else if (obj475_benches.prop897 != 3) {
            "You pick a likely looking bench and clamber onto it.  You stand up on your toes, stretch, and reach up as high as you can, but the roof of the enclosure is still beyond your grasp.  Disappointed, you hop back down.  ";
            return nil;
        } else if (obj475_benches.prop897 == 3) {
            if (local1 > 0) {
                "You'd better do something with ";
                if (local1 > 1) {
                    "the stuff";
                } else {
                    fun221(Me);
                }
                " you're carrying first.  You'll need both hands free to climb.  ";
                return nil;
            } else {
                obj475_benches.prop898;
                "\b";
                return obj477___On_the_Enclosure__;
            }
        }
    }
;

class class270: class40
    prop127 = []

    roomCheck(arg1) = { return true; }

    prop130 = true

    prop293 = nil

    prop155(arg1) = {
        self.lookAround(!self.prop293 || obj20.prop294);
        if (self.prop130) {
            if (!self.prop293) {
                self.prop295;
            }
            self.prop293 = true;
        }
    }

    roomAction(arg1, arg2, arg3, arg4, arg5) = {
        if (self.location) {
            self.location.roomAction(arg1, arg2, arg3, arg4, arg5);
        }
    }

    prop152(arg1) = {
        "Dropped. ";
        arg1.moveInto(self);
    }

    prop296 = []

    prop297(arg1) = { self.prop296 = self.prop296 + arg1; }

    prop230(arg1) = {
        local local1, local2, local3, local4;

        local1 = self.prop296;
        local4 = length(local1);
        local3 = 1;
      label158438:
        if (local3 <= local4) {
            local2 = local1[local3];
            if (local2.prop298(arg1)) {
                self.prop296 = self.prop296 - local2;
            }
            local3 = local3 + 1;
            goto label158438;
        }
    }

    prop151(arg1) = {
        local local1, local2, local3, local4;

        if (arg1) {
            "\n\t";
            self.prop167;
            local1 = self.contents;
            local4 = length(local1);
            local3 = 1;
          label158561:
            if (local3 <= local4) {
                local2 = local1[local3];
                if (local2.prop137) {
                    local2.prop299;
                }
                local3 = local3 + 1;
                goto label158561;
            }
        }
        "\n\t";
        if (fun4(self.contents)) {
            "You see ";
            fun7(self);
            " here. ";
        }
        fun8(self);
        "\n";
        local1 = self.contents;
        local4 = length(local1);
        local3 = 1;
      label158700:
        if (local3 <= local4) {
            local2 = local1[local3];
            if (local2.prop300) {
                if (local2 != Me) {
                    "\n\t";
                    local2.prop301;
                }
            }
            local3 = local3 + 1;
            goto label158700;
        }
    }

    statusLine = {
        self.sdesc;
        "\n\t";
    }

    lookAround(arg1) = {
        self.statusLine;
        self.prop151(arg1);
    }

    prop302 = { return self.prop156; }

    prop303 = { return self.prop156; }

    prop304 = { return self.prop156; }

    prop305 = { return self.prop156; }

    prop306 = { return self.prop156; }

    prop307 = { return self.prop156; }

    prop308 = { return self.prop156; }

    prop309 = { return self.prop156; }

    prop310 = { return self.prop156; }

    prop311 = { return self.prop156; }

    prop312 = { return self.prop156; }

    prop313 = { return self.prop156; }

    prop156 = {
        "%You% can't go that way. ";
        return nil;
    }
;

obj271_sky: class637
    noun = 'sky'

    prop681 = true

    sdesc = "sky"

    prop981 = {
        local local1 = fun227(Me);

        if (isclass(local1, obj217) || local1 == obj339___Inside_the__Octopu) {
            "You can't see it from down here.  ";
        } else if (local1 == obj437___Under_Pavilion__ || local1 == obj447___Storage_Area__) {
            "Not much of it is visible from beneath the pavilion.  ";
        } else if (local1 == obj381___Grotto__) {
            "All you can see from here are the few feathery pink tongues of  evening light that lick the walls of the cave.  ";
        } else {
            "The sun is setting in the west, filling the sky with an incredible assortment of pastel colors, ranging from electric pink to dishwater blue.  Unfortunately, most of the more vibrant colors to the west are obscured by two tall hotels opposite the beach.  But even the paler colors to the east, where the pale disk of the moon is visible, are sublimely exquisite.  ";
        }
        if (local1 == obj433___On_the_Canopy__) {
            "From your high vantage on the pavilion's canopy, you almost feel as if you  could take flight, and soar off into the clouds.  ";
        }
    }

    location = { return Me.location; }

    locationOK = true
;

obj272_pry: class82
    verb = 'pry off' 'pry'

    sdesc = "pry"

    doAction = 'Action84_pry'
    ioAction(obj68_with) = 'Action85_pry_with'
;

obj273: class82
    verb = 'sift through' 'sift'

    doAction = 'Action86'
    ioAction(obj68_with) = 'Action87_with'
;

obj274_uncover: class82
    verb = 'uncover' 'unbury'

    sdesc = "uncover"

    doAction = 'Action88_uncover'
;

obj275_peel: class82
    verb = 'peel'

    sdesc = "peel"

    doAction = 'Action89_peel'
;

obj276_kick: class82
    verb = 'kick'

    sdesc = "kick"

    doAction = 'Action90_kick'
;

obj277_dig_for: class82
    verb = 'dig for'

    sdesc = "dig for"

    doAction = 'Action91_dig_for'
    ioAction(obj96_in) = 'Action92_dig_for_in'
    ioAction(obj68_with) = 'Action93_dig_for_with'
;

obj278_catch: class82
    verb = 'catch'

    sdesc = "catch"

    doAction = 'Action94_catch'
;

obj279_tap: class82, class83
    verb = 'thump' 'tap'

    sdesc = "tap"

    doAction = 'Action95_tap'
;

obj280_dance: class82
    verb = 'dance in' 'dance on' 'dance'

    sdesc = "dance"

    action(arg1) = {
        if (isclass(Me.location, class259)) {
            Me.location.doAction96_dance(Me);
        } else {
            Me.prop691;
        }
    }

    doAction = 'Action96_dance'
;

obj281_stack: class82
    verb = 'stack up' 'stack' 'pile up' 'pile'

    sdesc = "stack"

    doAction = 'Action97_stack'
    ioAction(obj310_against) = 'Action6_against'
;

obj282_lift: class82
    verb = 'raise up' 'raise' 'life up' 'lift'

    sdesc = "lift"

    doAction = 'Action99_lift'
;

obj283_bury: class82
    verb = 'bury'

    sdesc = "bury"

    doAction = 'Action100_bury'
    ioAction(obj96_in) = 'Action101_bury_in'
;

obj284: class31
    prop684 = true
;

obj285___Damp_Sand__Beneath: obj435
    noun = 'loc-under2'

    sdesc = "\(Damp Sand, Beneath Pier\)"

    prop167 = {
        "You stand in the cool shadow of the long pier, among its supporting pylons.   The pylons lead east like a subterranean avenue.  A pair of pipes runs the length  of the pier, presumably a part of the pavilion's plumbing. To the west, the dunes that surround the pavilion part to  allow passage beneath it.  You  can escape the pier's chilly shadow to the north or south.  ";
        if (obj458_bottle_bottles.location == self) {
            "\n\tThe beach is littered with broken bottles and blue plastic shards.  ";
        }
        if (obj491_looming__crystalline.location == self) {
            "\n\tA great crystalline castle dominates the area, rising nearly to the  underside of the pier.  ";
        }
    }

    prop666 = { "You can go west, beneath the pavilion, east into shallow water, or follow  the shore north or south.  "; }

    prop692 = { return obj492_pipes.prop167; }

    prop155(arg1) = {
        if (obj493_shiny_object.location != nil) {
            notify(obj493_shiny_object, &prop901, 1);
        }
        pass prop155;
    }

    prop230(arg1) = {
        if (obj493_shiny_object.location != nil) {
            unnotify(obj493_shiny_object, &prop901);
        }
        pass prop230;
    }

    prop698 = [obj287___Damp_Sand__North_o, obj286___Damp_Sand__South_o]

    prop305 = {
        fun204('west');
        return obj437___Under_Pavilion__;
    }

    prop304 = {
        self.prop887;
        return obj453___Shallow_Water__Ben;
    }

    prop308 = {
        self.prop887;
        return obj452___Shallow_Water__Nor;
    }

    prop309 = { "Dunes piled up against the north face of the pavilion prevent you from exiting  that way.  "; }

    prop310 = {
        self.prop887;
        return obj454___Shallow_Water__Sou;
    }

    prop311 = { "Dunes piled up against the south face of the pavilion prevent you from exiting that  way.  "; }

    prop302 = {
        fun204('north');
        return obj287___Damp_Sand__North_o;
    }

    prop303 = {
        fun204('south');
        return obj286___Damp_Sand__South_o;
    }
;

obj286___Damp_Sand__South_o: obj435
    noun = 'loc-south2'

    sdesc = "\(Damp Sand, South of Pier\)"

    prop167 = {
        "To the east, the shallow surf ebbs and flows up onto the cold, wet sand.  The sand turns into powdery gold back to the west.  To the north, you can pass among the pylons supporting the long pier that extends from the pavilion.  ";
        if (obj440_organic_looking_cast.location != self) {
            "The small castle you found here earlier has disappeared.  The mites must  have integrated its materials into the larger castle.  ";
        }
    }

    prop666 = { "You can go west, above the tide line, north, beneath the pier or east, into  shallow water.  "; }

    prop698 = [obj287___Damp_Sand__North_o, obj285___Damp_Sand__Beneath]

    prop305 = {
        self.prop886;
        return obj451___Dry_Sand__South_of;
    }

    prop304 = {
        self.prop887;
        return obj454___Shallow_Water__Sou;
    }

    prop308 = {
        self.prop887;
        return obj453___Shallow_Water__Ben;
    }

    prop302 = {
        fun204('north');
        return obj285___Damp_Sand__Beneath;
    }

    prop309 = "The dunes piled up against the base of the pavilion block your way.  "

    prop311 = { return self.prop303; }

    prop303 = { "You strike off up the beach, but you don't want to wander too far from your  hotel, so after a while you head back.  "; }

    prop310 = { "You stroll into the shallow surf and then strike off up the beach, but you don't  want to wander too far from your hotel, so after a while you head back.  "; }
;

obj287___Damp_Sand__North_o: obj435
    noun = 'loc-north2'

    sdesc = "\(Damp Sand, North of Pier\)"

    prop167 = { "The damp, hard packed sand is darkened almost to bronze by the relentless tide to the east, while to the west it lightens to a powdery gold before ending in tall dunes.  To the south, you can  pass through the pylons supporting the long pier that stretches east  from the pavilion.  "; }

    prop666 = { "You can go west, above the tide line, south, beneath the pier or east, into  shallow water.  "; }

    prop698 = [obj286___Damp_Sand__South_o, obj285___Damp_Sand__Beneath]

    prop305 = {
        self.prop886;
        return obj450___Dry_Sand__North_of;
    }

    prop304 = {
        self.prop887;
        return obj452___Shallow_Water__Nor;
    }

    prop310 = {
        self.prop887;
        return obj453___Shallow_Water__Ben;
    }

    prop303 = {
        fun204('south');
        return obj285___Damp_Sand__Beneath;
    }

    prop311 = "The dunes piled up against the base of the pavilion block your way.  "

    prop309 = { return self.prop302; }

    prop302 = { "You strike off up the beach, but don't want to wander too far from  your hotel, so after a while you head back.  "; }

    prop308 = { "You stroll into the shallow surf and then strike off up the beach, but don't  want to wander too far from your hotel, so after a while you head back.  "; }
;

obj288_salt_water: class422_generic_substance
    noun = 'water'

    adjective = 'shallow' 'deep' 'salt'

    prop525 = "It feels wet.  "

    prop699 = true

    sdesc = "salt water"

    adesc = "some salt water"

    prop167 = "It's ordinary salt water from the ocean.  "

    prop504 = 'salt water'

    prop801 = 'water'

    prop802 = obj423_ocean

    prop803 = obj424_ocean_tide_surf

    verDoAction44_from(arg1, arg2) = { }

    doAction44_from(arg1, arg2) = {
        if (obj425_single_mite.location == arg2) {
            "Not while that mite's in the bottle!  ";
        } else if (obj426_shrimp.location == arg2) {
            "Not while the shrimp is in the bottle.  ";
        } else if (arg2 == obj239_boiler && obj239_boiler.prop804 > 0) {
            if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
                obj239_boiler.prop805;
            } else {
                "Hot, salty water.  Oh, yum.  You decide against it.  ";
            }
        } else if (arg2 == obj428_drinking_fountain || arg2 == obj429_public_shower) {
            arg2.verDoAction36_turn_on(arg1);
        } else {
            "You take a sip of water from <<arg2.thedesc>>.  \(Ugh!\)  It's salty!   You spit it right out.  ";
        }
    }

    verDoAction113_drink(arg1) = { }

    doAction113_drink(arg1) = {
        local local1;

        local1 = self.prop806(arg1, 'source');
        if (local1) {
            self.doAction44_from(arg1, local1);
        } else {
            "There's none available.  ";
        }
    }

    doSynonym('Action141_jump_into') = 'Action116_swim_in'

    verDoAction141_jump_into(arg1) = {
        if (obj423_ocean.location != Me.location) {
            "You can't jump into the limited quantity of water at hand.  ";
        } else {
            obj423_ocean.verDoAction141_jump_into(arg1);
        }
    }

    doAction141_jump_into(arg1) = { obj423_ocean.doAction141_jump_into(arg1); }

    verDoAction120_drown_in(arg1) = { }

    doAction120_drown_in(arg1) = { Me.doAction118_drown(arg1); }

    verIoAction119_drown_in(arg1) = { }

    ioAction119_drown_in(arg1, arg2) = { arg2.doAction118_drown(arg1); }

    verDoAction86(arg1) = {
        if (!arg1.prop125(obj240_sieve)) {
            "You don't have anything appropriate with which to sift it.  ";
        }
    }

    doAction86(arg1) = { self.doAction87_with(arg1, obj240_sieve); }

    verDoAction87_with(arg1, arg2) = { }

    doAction87_with(arg1, arg2) = {
        if (obj423_ocean.location != Me.location) {
            "You'll have to specify a source from which to pour it.  ";
        } else {
            obj423_ocean.doAction87_with(arg1, arg2);
        }
    }
;

class class289_sand: class422_generic_substance, class232
    noun = 'sand'

    sdesc = "sand"

    adesc = "some sand"

    prop504 = 'sand'

    prop834 = true

    prop802 = obj233_sandy_beach

    prop803 = obj446_sandy_beach

    verDoAction112_eat(arg1) = { }

    doAction112_eat(arg1) = {
        if (Me.prop562) {
            "You're not going to \(eat\) your way out of the sand, are you?  ";
            fun226(['Of course you\'re not.  That was just a rhetorical question.  ', 'Of course you\'re not.  That was just a rhetorical question.  ', 'Of course you\'re not.  That was just a rhetorical question.  ']);
        } else {
            "You think back fondly on the days when you'd eat dirt for a nickel.  ";
        }
    }

    verIoAction101_bury_in(arg1) = {
        if (obj233_sandy_beach.location != Me.location) {
            "You can't bury anything in the limited quantity of sand at hand.  ";
        } else {
            obj233_sandy_beach.verIoAction101_bury_in(arg1);
        }
    }

    ioAction101_bury_in(arg1, arg2) = { arg2.doAction100_bury(arg1); }

    doAction9_dig_with(arg1, arg2) = {
        if (obj233_sandy_beach.location != Me.location) {
            "You can't dig in the limited quantity of sand at hand.  ";
        } else {
            obj233_sandy_beach.doAction9_dig_with(arg1, arg2);
        }
    }

    verDoAction157_search(arg1) = {
        if (obj233_sandy_beach.location != Me.location) {
            "It occurs to you that you're unlikely to find anything in the limited quantity of sand at hand.  ";
        } else {
            obj233_sandy_beach.verDoAction75_with(arg1, obj231_hands);
        }
    }

    doAction157_search(arg1) = { obj233_sandy_beach.doAction75_with(arg1, obj231_hands); }

    verDoAction75_with(arg1, arg2) = {
        if (obj233_sandy_beach.location != Me.location) {
            "It occurs to you that you're unlikely to find anything in the limited quantity of sand at hand.  ";
        } else {
            obj233_sandy_beach.verDoAction75_with(arg1, obj231_hands);
        }
    }

    doAction75_with(arg1, arg2) = { obj233_sandy_beach.doAction75_with(arg1, obj231_hands); }

    verDoAction86(arg1) = {
        if (!arg1.prop125(obj240_sieve)) {
            "You don't have anything appropriate with which to sift it.  ";
        }
    }

    doAction86(arg1) = { self.doAction87_with(arg1, obj240_sieve); }

    verDoAction87_with(arg1, arg2) = { }

    doAction87_with(arg1, arg2) = {
        if (obj233_sandy_beach.location != Me.location) {
            "You'll have to specify a source from which to pour it.  ";
        } else {
            obj233_sandy_beach.doAction87_with(arg1, arg2);
        }
    }

    verIoAction146_build_in(arg1) = { }

    ioAction146_build_in(arg1, arg2) = {
        if (obj233_sandy_beach.location != Me.location) {
            "You can't build anything in the limited quantity of sand at hand.  ";
        } else {
            obj233_sandy_beach.ioAction146_build_in(arg1, arg2);
        }
    }

    verDoAction38_sit_on(arg1) = {
        if (obj233_sandy_beach.location != Me.location) {
            "You can't sit in the limited quantity of sand at hand.  ";
        } else {
            obj55_ground.verDoAction38_sit_on(arg1);
        }
    }

    doAction38_sit_on(arg1, arg2) = { obj55_ground.doAction38_sit_on(arg1); }

    verDoAction39_lie_on(arg1) = {
        if (obj233_sandy_beach.location != Me.location) {
            "You can't lie in the limited quantity of sand at hand.  ";
        } else {
            obj55_ground.verDoAction39_lie_on(arg1);
        }
    }

    doAction39_lie_on(arg1, arg2) = { obj55_ground.doAction39_lie_on(arg1); }

    verDoAction54_stand_on(arg1) = {
        if (obj233_sandy_beach.location != Me.location) {
            "You can't stand in the limited quantity of sand at hand.  ";
        } else {
            obj55_ground.verDoAction54_stand_on(arg1);
        }
    }

    doAction54_stand_on(arg1, arg2) = { obj55_ground.doAction54_stand_on(arg1); }
;

class class290: class28, class63
    prop293 = true
;

obj291_ocean_water: class445_far_substance
    noun = 'water'

    adjective = 'ocean'

    prop803 = obj424_ocean_tide_surf

    sdesc = "ocean water"

    prop167 = { return self.prop803.prop167; }

    doAction116_swim_in -> ioAction124_show_to

    verDoAction116_swim_in -> ioAction124_show_to

    doAction141_jump_into -> ioAction124_show_to

    verDoAction141_jump_into -> ioAction124_show_to

    ioAction169_empty_on -> ioAction124_show_to

    verIoAction169_empty_on -> ioAction124_show_to

    ioAction168_empty_in -> ioAction124_show_to

    verIoAction168_empty_in -> ioAction124_show_to

    ioAction13_in -> ioAction124_show_to

    verIoAction13_in -> ioAction124_show_to

    ioAction121_drop_on -> ioAction124_show_to

    verIoAction121_drop_on -> ioAction124_show_to

    ioAction53_on -> ioAction124_show_to

    verIoAction53_on -> ioAction124_show_to

    prop674 -> ioAction124_show_to

    prop673 -> ioAction124_show_to

    prop549 -> ioAction124_show_to

    prop548 -> ioAction124_show_to

    doAction44_from -> ioAction124_show_to

    verDoAction44_from -> ioAction124_show_to
;

obj292_beach_sand: class445_far_substance
    noun = 'sand'

    adjective = 'beach'

    prop803 = obj446_sandy_beach

    sdesc = "beach sand"

    prop167 = { return self.prop803.prop167; }

    doAction141_jump_into -> doAction149_detach_from

    verDoAction141_jump_into -> doAction149_detach_from

    ioAction169_empty_on -> doAction149_detach_from

    verIoAction169_empty_on -> doAction149_detach_from

    ioAction168_empty_in -> doAction149_detach_from

    verIoAction168_empty_in -> doAction149_detach_from

    ioAction13_in -> doAction149_detach_from

    verIoAction13_in -> doAction149_detach_from

    ioAction121_drop_on -> doAction149_detach_from

    verIoAction121_drop_on -> doAction149_detach_from

    ioAction53_on -> doAction149_detach_from

    verIoAction53_on -> doAction149_detach_from

    prop674 -> doAction149_detach_from

    prop673 -> doAction149_detach_from

    prop549 -> doAction149_detach_from

    prop548 -> doAction149_detach_from
;

class class293: class33, class56
;

class class294: class42
    verDoAction112_eat(arg1) = { self.prop177(arg1); }

    doAction112_eat(arg1) = {
        "That was delicious! ";
        obj20.prop283 = obj20.prop283 - self.prop284;
        self.moveInto(nil);
    }

    prop284 = { return obj20.prop285; }
;

obj295_body: class220, class301_your_body
    noun = 'mine' 'body'

    adjective = 'my'

    sdesc = "body"

    prop167 = "It's fit and trim, and very relaxed after your week's vacation.  "

    thedesc = "your body"

    prop914 = { return Me.prop914; }

    prop915 = { return Me.prop914; }

    ioAction148_attach_to -> validActor

    verIoAction148_attach_to -> validActor

    doAction148_attach_to -> validActor

    verDoAction148_attach_to -> validActor

    ioAction149_detach_from -> validActor

    verIoAction149_detach_from -> validActor

    doAction150_detach -> validActor

    verDoAction150_detach -> validActor

    doSynonym('Action149_detach_from') = 'Action154_take_off_from'

    doAction149_detach_from -> validActor

    verDoAction149_detach_from -> validActor

    doAction19_out -> validActor

    verDoAction19_out -> validActor

    doAction18_off -> validActor

    verDoAction18_off -> validActor
;

obj296_wrist: class220, class301_your_body
    noun = 'wrist' 'mine' 'wrists'

    adjective = 'right' 'left' 'my'

    prop708 = 2

    sdesc = "wrist"

    prop509 = true

    prop167 = { "<<(length(self.prop502) == 0 ? "They look fine.  " : self.prop717)>>"; }

    thedesc = "your wrist"
;

obj297_ankle: class220, class301_your_body
    noun = 'ankle' 'ankles' 'mine'

    adjective = 'right' 'left' 'my'

    prop708 = 2

    sdesc = "ankle"

    prop509 = true

    prop167 = { "They look fine.  <<self.prop717>>"; }

    thedesc = "your ankle"
;

obj298_waist: class220, class301_your_body
    noun = 'waist' 'mine'

    adjective = 'my'

    sdesc = "waist"

    prop167 = { "Trim and fit.  It even looks like you've lost a few pounds during your vacation!   <<self.prop717>>"; }

    thedesc = "your waist"

    prop915 = { "Trim though you are after your week's vacation, the strap still isn't long  enough to reach around your waist.  "; }
;

obj299_deep_fissure: class220, class58, class33
    noun = 'cleft' 'crevice' 'fissure'

    adjective = 'deep' 'dark'

    prop708 = 2

    prop915 = "You can't tie anything to the fissure.  "

    prop914 = { return self.prop915; }

    location = obj504_rock

    sdesc = "deep fissure"

    adesc = "the deep fissure"

    prop136 = true

    prop167 = {
        "It's a deep, dark crevice cut in the rock.";
        self.doAction26_look_in(Me);
    }

    doSynonym('Action26_look_in') = 'Action157_search'

    verDoAction26_look_in(arg1) = { }

    doAction26_look_in(arg1) = {
        if (obj465_conch_shell.location == self) {
            "You can just make out the tip of the conch shell hidden in it.  ";
        } else {
            "As dark as it is, you can't see very far inside it.  ";
        }
    }

    verIoAction19_out(arg1) = { }

    ioAction19_out(arg1, arg2) = {
        if (arg2 == obj465_conch_shell && arg2.location == self) {
            arg2.doAction24(arg1);
        } else if (arg2 == obj255_white_rubber_strap && find(obj255_white_rubber_strap.prop502, self) != nil) {
            arg2.doAction149_detach_from(arg1, obj299_deep_fissure);
        } else {
            "You don't see <<arg2.thedesc>> in the fissure.  ";
        }
    }

    ioAction13_in(arg1, arg2) = {
        local local1 = fun410(arg2.prop515);

        if (local1 > 0) {
            obj468___Underwater_____dri.prop874 = true;
            obj468___Underwater_____dri.prop152(arg2);
        } else if (arg2 == obj556_husks_peanuts_peanut || arg2 == obj426_shrimp && length(arg2.prop502) == 0) {
            obj299_deep_fissure.prop909(arg2);
        } else {
            "You lower <<arg2.thedesc>> toward the fissure, but a nagging voice in the  back of your mind suggests that you might never see ";
            if (arg2 != obj426_shrimp) {
                "it";
            }
            if (length(arg2.prop502)) {
                if (arg2 != obj426_shrimp) {
                    ",";
                }
                " ";
                arg2.prop502[1].thedesc;
                if (arg2.prop710 != nil) {
                    " or <<arg2.prop710.thedesc>>";
                }
            }
            " again.  ";
        }
    }

    prop909(arg1) = {
        if (arg1 == obj556_husks_peanuts_peanut) {
            "You set one of the peanuts afloat over the big rock.  It drifts slowly down  towards the dark fissure.  ";
            if (obj465_conch_shell.location == obj299_deep_fissure) {
                "The crab scuttles over to investigate, but soon loses interest and retreats  to the depths of the fissure.  ";
            } else {
                "After a long moment, it slides into the darkness and disappears from sight.  ";
            }
        } else if (arg1 == obj426_shrimp) {
            "You release the shrimp.  Free of your grip, it darts immediately toward  the dark fissure in the rock.  ";
            if (obj465_conch_shell.location == obj299_deep_fissure) {
                "With surprising speed, the crab comes to life and goes after it.  The chase  is brief, and shortly the crab retreats to the depths of the fissure,  shrimp in claw.  ";
            } else if (obj465_conch_shell.location == obj504_rock) {
                "To your amazement, the conch shell resting on the rock comes to life and goes after the shrimp.  It seems that the shell is home to a large crab.  The chase is brief, and shortly the crab retreats to the depths of the fissure, shrimp in claw.  ";
                obj465_conch_shell.prop930;
            } else {
                "In one brief moment, it disappears from sight.  ";
            }
            "Hmm.  If only you had some way of holding on to the shrimp.  ";
            obj426_shrimp.prop812;
        }
    }

    verDoAction76_enter(arg1) = { "It's not that big.  Even if it were, it's doubtful you'd want to enter it.  Didn't  you ever see 'The Deep'?  "; }

    verDoAction73_touch(arg1) = { "Hey, didn't you ever see 'The Deep'?  "; }
;

obj300_busted_trap: class33, class220
    noun = 'construction' 'trap'

    adjective = 'frame' 'chicken' 'busted' 'lobster' 'wooden' 'wireframe' 'wire' 'wood'

    prop708 = 2

    prop502 = []

    location = obj497___Underwater_____dri

    sdesc = "busted trap"

    prop167 = {
        if (!self.prop891) {
            "The construction's function isn't immediately obvious, so you clear away some of the mud surrounding it.  It turns out to be";
        } else {
            "It's";
        }
        " a rough framework of wooden slats and chicken wire.   There's a gaping hole in one face, where something has punched through the  wire and splintered the surrounding slats.  Apparently, it's a busted up  lobster trap.  Needless to say, the trap is empty.  ";
        if (!self.prop891) {
            self.prop891 = true;
            obj302_length_of_rope.moveInto(obj497___Underwater_____dri);
            obj302_length_of_rope.prop891 = true;
            obj302_length_of_rope.prop131 = true;
            obj302_length_of_rope.prop502 += self;
            self.prop502 += obj302_length_of_rope;
            "In the process of uncovering the trap, you've also revealed a short length  of thick rope that's tied to it.  ";
        } else {
            self.prop949;
        }
    }

    prop891 = nil

    verDoAction24(arg1) = { "You give the trap a tentative yank, but it's buried too deeply in the face of  the slope to come free.  "; }

    verIoAction13_in(arg1) = { }

    ioAction13_in(arg1, arg2) = { "You look at the sharp points of torn wire surrounding the hole and decide against it.  "; }
;

class class301_your_body: class33, class224
    prop681 = true

    location = Me

    sdesc = "your body"

    prop167 = "It looks pretty much like it always does.  "

    prop524 = "Just how long do you think your tongue is?  "

    prop525 = { return self.prop167; }

    thedesc = {
        "your ";
        self.sdesc;
    }

    adesc = {
        "your ";
        self.sdesc;
    }

    prop505 = [obj222_the_vendor]

    prop808 = { "He glances at <<self.thedesc>> and says \"Yes, it's very nice.\"  "; }

    prop293 = true

    verDoAction88_uncover(arg1) = {
        if (!Me.prop562) {
            "You're not in anything that you can dig yourself out of.  ";
        } else {
            "Best just to get up, out of the sand.  ";
        }
    }

    doAction161_tan -> prop61

    verDoAction161_tan -> prop61
;

obj302_length_of_rope: class215
    noun = 'rope'

    adjective = 'thick' 'heavy' 'short' 'coarse'

    prop140 = 3

    prop141 = 4

    prop131 = nil

    prop891 = nil

    prop708 = 2

    prop502 = []

    prop709 = { return obj255_white_rubber_strap.prop709; }

    prop712 = &prop914

    prop931(arg1) = { "You try, but the coarse rope is too thick to be knotted around <<arg1.thedesc>>.  "; }

    location = nil

    sdesc = "length of rope"

    prop167 = { "It's a short, stout section of rope, about half as long as you are tall and two thumb  widths thick.  <<self.prop717>>"; }

    prop525 = "It's coarse, with loose fibers poking every which way.  "

    verDoAction159_pull(arg1) = {
        if (find(self.prop502, obj526_pipes) != nil) {
            self.verDoAction143_climb(arg1);
        } else {
            "You tug on <<self.thedesc>>, but nothing happens.  ";
        }
    }

    verDoAction143_climb(arg1) = {
        if (length(self.prop502) == nil) {
            "The rope isn't tied to anything.  ";
        } else if (length(self.prop502) == 2 && !isclass(self.prop502[1], class33) && !isclass(self.prop502[2], class33)) {
            "The rope isn't suspended from anything that would enable you to climb it.  ";
        } else if (find(self.prop502, obj526_pipes) != nil && find(self.prop502, obj303_broken_stave) != nil) {
            obj303_broken_stave.verDoAction143_climb(arg1);
        } else {
            if (find(self.prop502, obj526_pipes) != nil) {
                "You get a firm grip on the rope and lift your legs into the air.  Unfortunately,  despite the long slope of the beach, the pipes are perfectly horizontal,  and you don't go anywhere.  ";
            } else {
                "The rope isn't suspended from anything that would enable you to climb it.  ";
            }
        }
    }
;

obj303_broken_stave: class220, class42
    noun = 'board' 'stave'

    adjective = 'loose' 'broken' 'single' 'wooden' 'wood'

    prop140 = 5

    prop141 = 8

    prop708 = 9

    sdesc = "broken stave"

    prop167 = { "It's a long, heavy, slightly curved piece of wood.  <<self.prop717>>"; }

    location = nil

    prop649 = 5

    verDoAction143_climb(arg1) = {
        if (self.prop710 == obj526_pipes) {
            "You grab hold of the stave and lift your legs into the air.  Unfortunately,  despite the long slope of the beach, the pipes are perfectly horizontal,  so you don't go anywhere.  ";
        } else {
            pass verDoAction143_climb;
        }
    }

    verDoAction159_pull(arg1) = {
        if (self.prop710 == obj526_pipes) {
            self.verDoAction143_climb(arg1);
        } else if (self.location != obj524_stave_cylinder_stave) {
            pass verDoAction159_pull;
        }
    }

    doAction159_pull(arg1) = {
        if (self.location == obj524_stave_cylinder_stave) {
            self.doAction24(arg1);
        } else {
            pass doAction159_pull;
        }
    }

    verDoAction153_take_off(arg1) = {
        if (self.location != obj524_stave_cylinder_stave) {
            pass verDoAction153_take_off;
        }
    }

    doAction153_take_off(arg1) = {
        if (self.location == obj524_stave_cylinder_stave) {
            self.doAction24(arg1);
        } else {
            pass doAction153_take_off;
        }
    }

    verDoAction150_detach(arg1) = {
        if (self.location != obj524_stave_cylinder_stave) {
            pass verDoAction150_detach;
        }
    }

    doAction150_detach(arg1) = {
        if (self.location == obj524_stave_cylinder_stave) {
            self.doAction24(arg1);
        } else {
            pass doAction150_detach;
        }
    }

    verDoAction24(arg1) = {
        if (self.prop710 == obj526_pipes) {
            self.verDoAction143_climb(arg1);
        } else {
            pass verDoAction24;
        }
    }

    doAction24(arg1) = {
        local local1;

        if (self.prop710 == obj465_conch_shell) {
            obj465_conch_shell.doAction24(arg1);
        } else if (self.location != obj524_stave_cylinder_stave) {
            pass doAction24;
        } else {
            local1 = fun219(Me);
            if (local1 > 0) {
                "You set down ";
                if (local1 > 1) {
                    "the stuff you were carrying to free your hands";
                } else {
                    fun221(Me);
                }
                " and then ";
            }
            "<<(local1 > 0 ? "" : "You")>> seize the top end of the stave with both hands.  Though it's no longer bound by the top hoop, the two lower hoops still put a lot of tension on it.  Nevertheless, you grit your teeth and rock the stave back and forth, until it finally scrapes free of the barrel.  ";
            fun207(Me, Me.location);
            obj303_broken_stave.moveInto(Me);
        }
    }

    ioSynonym('Action16_with') = 'Action11_with'

    verIoAction16_with(arg1) = {
        if (self.prop611) {
        }
    }

    ioAction16_with(arg1, arg2) = { arg2.doAction16_with(arg1, self); }

    prop525 = "It's made of rough, unfinished wood.  "
;

class class304: object
    value = ''

    sdesc = { "\"<<self.value>>\""; }

    adesc = { "\"<<self.value>>\""; }

    thedesc = { "\"<<self.value>>\""; }

    verDoAction66_type_on(arg1, arg2) = { }

    doAction66_type_on(arg1, arg2) = { "\"Tap, tap, tap, tap...\" "; }

    doSynonym('Action66_type_on') = 'Action77_enter_on'

    doSynonym('Action66_type_on') = 'Action78_enter_in'

    doSynonym('Action66_type_on') = 'Action79_enter_with'

    verDoAction80_save(arg1) = { }

    prop372(arg1) = {
        if (save(self.value)) {
            "Save failed. ";
            return nil;
        } else {
            "Saved. ";
            return true;
        }
    }

    doAction80_save(arg1) = {
        self.prop372(arg1);
        abort;
    }

    verDoAction81_restore(arg1) = { }

    prop374(arg1) = {
        if (restore(self.value)) {
            "Restore failed. ";
            return nil;
        } else {
            "Restored.\b";
            fun26(obj20.prop139, obj20.prop138);
            Me.location.lookAround(true);
            return true;
        }
    }

    doAction81_restore(arg1) = {
        self.prop374(arg1);
        abort;
    }

    verDoAction82(arg1) = { }

    prop376(arg1) = {
        logging(self.value);
        "Writing script file. ";
    }

    doAction82(arg1) = {
        self.prop376(arg1);
        abort;
    }

    verDoAction158_say(arg1) = { }

    doAction158_say(arg1) = {
        "Okay, \"";
        say(self.value);
        "\".";
    }
;

obj305_the_old_man: class57
    noun = 'ghost' 'man' 'george' 'fisherman'

    adjective = 'old'

    location = obj432___End_of_Pier__

    sdesc = "the old man"

    thedesc = "the old man"

    adesc = "the old man"

    prop301 = {
        if (self.location == obj432___End_of_Pier__) {
            if (obj465_conch_shell.location != nil) {
                "\bAn old man is fishing off the pier with a great, heavy rod.  Resting on  the railing beside him is an open tackle box, while at his feet sit a bucket  full of freshly caught fish and an empty burlap sack.  ";
            } else {
                "\bThe old man is here, apparently packing up for the night.  ";
            }
        } else {
            "\bThe old man is here, apparently on his way home for the night.  ";
        }
    }

    prop167 = {
        if (obj673_pail.location != nil) {
            "He looks like he just stepped out of a Hemingway novel.  He stares out to sea, lantern jaw thrust defiantly forward, stony countenance unbroken by any hint of emotion, while the evening breeze tousles his iron gray hair.  He wears a rumpled blue shirt, brown canvas slacks, and heavy boots.  The cuffs of his shirt are rolled up to the elbows, revealing forearms of corded steel.  Powerful hands, scarred times beyond measure, anchor a rod no  more rigid than themselves.  ";
        } else {
            "Rod and tackle in hands, burlap sack strung over  shoulder, he seems to be heading home for the night.  ";
        }
    }

    ioAction123_give_to(arg1, arg2) = {
        if (arg2 == obj647_life) {
            self.verDoAction130_animate(arg1);
        } else {
            if (obj673_pail.location == nil) {
                "The old man whisks on past you like a rolling stone.  ";
            } else {
                "The old man's head turns towards you as if driven by archaic machinery.  You can almost hear the gears groaning.  He stares at you expressionlessly for a long, embarrassing moment that drags on interminably.  Finally, his eyes dismiss you with a nearly imperceptible flicker before beginning the long return voyage out to sea.  ";
            }
        }
    }

    verDoAction130_animate(arg1) = { "As immobile as the old man is, he \(does\) almost seem to be made of stone.   Nevertheless, he is alive.  "; }

    prop706 = { say(self.prop997[rand(length(self.prop997))]); }

    prop997 = ['A small grunt is the only indication that the old man is even aware of your existence.  ', 'The old man just grunts.  ', 'The old man doesn\'t even turn to face you.  ', 'A tiny tic in the old man\'s cheek suggests that he doesn\'t wish to speak about that.  ', 'The old man just grips his rod more tightly.  ', 'Apparently the old man isn\'t interested in talking about that.  ', 'An uncomfortable silence ensues.  ', 'The old man frowns, but says nothing.  ', 'The old man scuffs his heavy shoes against the cement floor, but makes no reply.  ', 'The old man reels in a few lengths of line, ignoring your remark.  ', 'The old man lets out a few lengths of line, but makes no reply.  ', 'He reels in another fish and tosses it into the bucket, but says nothing.  ']

    prop707 = &prop807

    prop702 = true

    ioAction55_to(arg1, arg2) = {
        arg2 = arg2.value;
        if (obj673_pail.location == nil) {
            "The old man whisks on past you like a rolling stone.  ";
        } else if (lower(arg2) == 'hello sailor' || lower(arg2) == 'hello, sailor') {
            self.prop1010;
        } else if (find(Me.prop719, lower(arg2)) != nil) {
            "The old man spares you a bare nod.  ";
        } else if (find(Me.prop720, lower(arg2)) != nil) {
            "The old man's eyes narrow to bare slits and his molars grind together like  tectonic plates drawn by high tension wires, but he makes no reply.  ";
            obj20.prop484 = ['embarrassed'];
        } else {
            "The old man just grunts.  ";
        }
    }

    prop1010 = {
        if (obj674_waving_girl.prop1011 > 4) {
            "The old man looks mistily out to sea, but otherwise fails to respond.  ";
        } else {
            "To your amazement, the old man's stony countenance softens slightly. He turns to you with an introspective gaze, his unfocused eyes watching some event of long ago.  \"That's... something I've not heard in many a year.  T'was the waving girl first said it to me, back in nineteen and thirty one.\"  ";
        }
        obj20.prop484 = ['curious'];
    }

    prop323 = { self.prop706; }

    verDoAction1_for(arg1, arg2) = {
        if (obj673_pail.location == nil) {
            "The old man whisks on past you like a rolling stone.  ";
        } else if (arg2.prop1012) {
        } else {
            self.prop706;
        }
    }

    verDoAction157_search(arg1) = { self.prop525; }

    prop525 = {
        if (obj673_pail.location == nil) {
            "The old man whisks on past you like a rolling stone.  ";
        } else {
            "The old man whips around with incredible speed and catches  your wrist in a grip of iron.  He stares you down silently, nostrils  flared, quivering in rage.  After a long, uncomfortable silence, he  lets go of your wrist, and you wisely step away.  ";
        }
    }

    prop521 = "Without being too obvious about it, you take a whiff.  As you  might expect, he smells fishy.  "

    prop527 = "All you hear is his slow, stygian breathing.  "

    prop295 = {
        local local1;

        self.prop293 = true;
        obj20.prop497 - self;
        obj675_the_old_man.prop293 = true;
        obj20.prop497 - obj675_the_old_man;
        "\bThe old man jerks and then begins reeling in line furiously.  Apparently he's had a bite.  The battle between man and nature begins!  He lets out a bit of line, giving his catch some play, and then resumes reeling.  The struggle continues until, at last, the line goes slack.  The old man reels and reels, peering over the railing with anticipation until his catch is revealed to be... a shrimp.  He glares with disgust at it for a moment before removing it from his line and tossing it over his shoulder, where it lands at  your feet.  He then expertly ties a new lure and recasts.  ";
        notify(obj305_the_old_man, &prop1013, 1);
        obj305_the_old_man.prop891 = true;
        class676.prop293 = true;
        local1 = firstobj(class676);
      label179849:
        if (local1) {
            local1.prop293 = true;
            obj20.prop497 - local1;
            local1 = nextobj(local1, class676);
            goto label179849;
        }
        obj426_shrimp.moveInto(obj432___End_of_Pier__);
        obj426_shrimp.prop295;
        notify(obj426_shrimp, &prop901, 0);
    }

    prop901 = {
        local local1 = fun227(Me);

        if (local1 == self.location) {
            "\b";
            say(self.prop934[rand(length(self.prop934))]);
        }
    }

    prop934 = ['The slight breeze carries the sound of the old man grumbling to himself.  ', 'The old man doggedly reels in a few lengths of line.  ', 'The old man plays out a few lengths of line.  ', 'The old man pulls back hard on his rod, pulling the line taut.  ', 'The old man reels in a tiny fish, grunts in disgust, and tosses it back.  ', 'The old man consults his bait box, and reties his line with a new lure.  ', 'The old man pulls a flask from his pocket and takes a hearty swig.  ', 'The old man reels in a whopper of a fish, which he tosses into the bucket by his feet.  ', 'The old man\'s mind must have been wandering.  He jerks suddenly back to  attention, evidently the result of a tug on his line.  ', 'The old man stares grimly at the sun, as if daring it to sink any lower.  ', 'The old man stares out to sea, and solemnly salutes a far away tanker.  ', 'A small child bobbles into the area and tries to sneak up behind the old man,  only to break out laughing.  The old man jerks in surprise and throws the  child a long, harsh glare.  ', 'The old man pulls back on his rod with all his might, struggling to reel in  whatever he\'s hooked.  Incredibly, an enormous marlin breaks the surface\!   But victory is short lived.  The line snaps and the old man staggers nearly off his  feet.  ', 'The old man draws a cigarette from his breast pocket, rolls it meditatively  between thumb and forefingers, and then puts it away.  ']

    prop891 = nil

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = {
        "\"You've seen old George?  You're lucky - not everyone does.  He's a ghost  you know.  Been dead since some time in the mid 70s, I hear.  Savannah's  got more ghosts per capita than anywhere I've ever been.\"  ";
        if (!self.prop891) {
            addword(self, &noun, 'George');
            self.prop891 = true;
        }
    }

    prop807 = { "His steely grey eyes hardly flicker.  \"I am what I am, youngster.\"  "; }

    prop1013 = {
        if (fun227(Me) == self.location) {
            notify(obj305_the_old_man, &prop901, 0);
        }
    }

    prop904 = {
        if (fun227(Me) == obj432___End_of_Pier__) {
            "\bThe old man seems reluctantly to be packing his gear away.  He's already  reeled in his line, and his rod lies beside him.  He stows the flies,  lures and weights into the tackle box and folds it up.  Then, he draws a  large folding blade from his hip pocket and proceeds to gut his catch.   He takes each fish in turn from the pail and deftly decapitates it,  slits it lengthwise, strips out the viscera, and sweeps the offal into  the sea.  Once done, he wraps each fish in newspaper and tosses them  into a burlap sack at his feet.  Once the pail is empty, he swings the sack  over his shoulder, collects his rod and tackle, and turns his feet to the  west.  ";
        }
        unnotify(obj305_the_old_man, &prop901);
        unnotify(obj305_the_old_man, &prop904);
        notify(obj305_the_old_man, &prop1002, 1);
        obj673_pail.moveInto(nil);
        obj213_pail.moveInto(obj432___End_of_Pier__);
        obj675_the_old_man.moveInto(nil);
    }

    prop1002 = {
        obj305_the_old_man.prop161(obj449___Middle_of_Pier__);
        notify(obj305_the_old_man, &prop1003, 1);
    }

    prop1003 = {
        obj305_the_old_man.prop161(obj269___Pavilion__);
        notify(obj305_the_old_man, &prop1004, 1);
    }

    prop1004 = {
        obj305_the_old_man.prop161(obj199___Beach_Path__);
        notify(obj305_the_old_man, &prop1014, 1);
    }

    prop1014 = {
        if (Me.location == obj199___Beach_Path__) {
            "\bThe old man casts one last, wrathful glance toward his betrayor the sun, then  follows the brick path to the west, reluctantly heading home for the night.  He  disappears out of sight along the path - literally!  You watch as he fades away  like a shimmer rising from hot asphalt.  Incredible!  You've heard many  stories of hauntings in Savannah, but of course you never believed them.  ";
        }
        obj305_the_old_man.moveInto(nil);
        obj677_the_old_man.moveInto(nil);
    }

    prop326 = {
        "\bThe old man hikes off toward the setting sun, hauling away  the day's catch in the burlap sack slung over his shoulder.  ";
        if (fun227(Me) == obj432___End_of_Pier__ && self.location == obj432___End_of_Pier__) {
            "Whether by chance or intent, he seems to have left the pail behind.  ";
        }
    }

    prop327 = "\bThe old man hikes toward you from the east, with rod and tackle  in hands and a burlap sack slung over one shoulder.  "

    prop1015 = {
        if (self.location == Me.location) {
            unnotify(obj305_the_old_man, &prop901);
        }
        notify(obj305_the_old_man, &prop1016, 1);
    }

    prop1016 = {
        if (self.location == obj432___End_of_Pier__) {
            obj426_shrimp.moveInto(obj432___End_of_Pier__);
            if (Me.location == obj432___End_of_Pier__) {
                "\bThe old man catches another shrimp, and tosses it to the floor  with an irritated grunt.  ";
                notify(obj305_the_old_man, &prop901, 0);
                notify(obj426_shrimp, &prop901, 0);
            }
        }
    }

    prop321 = obj677_the_old_man
;

obj306_scruffy_looking_indi: class57
    noun = 'man' 'men' 'mcgintie' 'individuals' 'pirate' 'pirates' 'rivera'

    adjective = 'brown' 'fat' 'slender' 'scruffy' 'looking' 'heavyset' 'pale' 'thin'

    prop681 = true

    prop509 = true

    location = obj688_dinghy

    prop1025 = nil

    sdesc = "scruffy looking individuals"

    thedesc = {
        "the ";
        self.sdesc;
    }

    adesc = { return self.thedesc; }

    prop167 = {
        if (obj306_scruffy_looking_indi.location == obj688_dinghy) {
            "There are two of them, but you can't make out much more than that  while they're sitting in the dinghy.  ";
        } else {
            "There are two of them.  One is short, slender and dark skinned.  The  other is tall, heavyset and pale.  Both of them are very scruffy  looking.  You can't make out much else with your blurred vision.  ";
        }
    }

    prop527 = { return obj381___Grotto__.prop527; }

    prop521 = {
        if (obj306_scruffy_looking_indi.location == obj688_dinghy) {
            "They're too far away.  The dank stench of the grotto is all you can smell.  ";
        } else {
            "The foul reek of exhaled rum and bourbon eclipses even the dank stench  of the grotto.  ";
        }
    }

    ioAction55_to(arg1, arg2) = {
        arg2 = arg2.value;
        if (self.location == obj688_dinghy) {
            "The two brigands are too distant to hear what little sound you're  currently capable of making.  ";
        } else if (lower(arg2) == 'hello sailor' || lower(arg2) == 'hello, sailor') {
            "The two brigands stop for a second and glance cagily at each other.   The thin, dark skinned one says to the other sotto voce, \"Ey, McGintie,  meat be knowin' the pass sign!\"  McGintie rubs a meaty paw over  one pitted, stubbly cheek before replying.  \"Twixt you 'n me, Rivera,  oy allus thought t'were a damn fool sign.\"  Rivera looks mildly shocked.   \"I wouldn't be lettin' Cab'in hear ye sayin' that.\"  \"Captain be damned.   Let's just be gettin' t' meat on board so oy c'n git back ter me bunk.\"  ";
            obj20.prop484 = ['dismayed'];
        } else if (find(Me.prop719, lower(arg2)) != nil) {
            "The dark, slender man's eyes dart away in a quick flash of disgust.   The heavyset man looks wryly at you and says \"Awr!  Ain't t'all  polite an' dainty like?  Oughter make a fine addition ter Captain's  mess crew.  Har!\"  ";
        } else if (find(Me.prop720, lower(arg2)) != nil) {
            "The dark, slender man flashes a deadly glance at you, and follows it  with a quick, darting kick to your side that knocks the air out of you  and leaves you squirming in pain.  ";
            obj20.prop484 = ['tortured'];
        } else {
            self.verDoAction136_ask_about(arg1, arg1);
        }
    }

    doSynonym('Action136_ask_about') = 'Action2_tell_about'

    verDoAction136_ask_about(arg1, arg2) = {
        if (obj306_scruffy_looking_indi.location == obj688_dinghy) {
            "The men in the dinghy are too far to hear what little sound you're  capable of making.  ";
        } else {
            say(self.prop1031[rand(length(self.prop1031))]);
        }
    }

    prop1031 = ['The paler, heavyset man looks at you with an expression that almost  suggests respect.  "Gar, we got us a live one here!"  ', 'The thin, dark skinned man eyes you cagily.  "Lookit, McGintie.   Our new mate\'s up an\' about!"  ', '"Gar, I\'m \'mazed it can still move it\'s hole after all the redeye  we poured downit!  Hah!"  ', 'The thinner of the two levels a short kick that lands in your gut.   "Shut yer hole, meat!"  ', 'The heavyset man exhales a particularly noxious cloud of vapor your  way and says, "Oh ho!  Wantin\' fer a bit \'o the hair \'o what bit  yer, eh?  Har!"  ', 'The heavier of the two men bends ponderously at the knees and looks  into your face with a crooked grin.  "Gar, ain\'t you t\' lucky one.   We\'re takin\' you on a free \'round \'t world trip!  Har, har!"  His  belly shakes with laughter at his wry pronouncement.  ']

    prop301 = {
        if (self.location == obj688_dinghy) {
            "\bA pair of scruffy looking men are approaching from the mouth of the  inlet in a worn out dinghy.  ";
        } else {
            "\bA pair of scruffy, dangerous looking men loom over you, discussing  the unpleasant fate that awaits you.  ";
        }
    }

    actorAction(arg1, arg2, arg3, arg4) = { self.verDoAction136_ask_about(Me, Me); }
;

obj307_flock_of_gulls: class57
    noun = 'birds' 'gulls' 'bird' 'gull'

    adjective = 'flock' 'of'

    prop509 = true

    sdesc = "flock of gulls"

    thedesc = {
        "the ";
        self.sdesc;
    }

    location = nil

    prop301 = { "\bHundreds of gulls are engaged in a fierce battle over <<(self.prop1022 ? "your sack of peanuts" : "the pile of refuse")>>,  squabbling and squawking at each other and filling the air with hungry shrieks.  "; }

    prop167 = { "They're a dismaying sight, like an overblown pillow fight with beaks and claws.  The flock must contain a full hundred birds, and every one of them fighting over <<(self.prop907 ? "your boiled peanuts" : "the same pile of refuse")>>.  In their ongoing battle, they peck at both their food and each other.  Occasionally one or a few take wing, leapfrogging over the others for dominance.  You'd hate to have all those gulls pecking around you.  "; }

    prop527 = { "The gulls shriek greedily, fighting over <<(self.prop907 ? "your boiled peanuts" : "a pile of refuse")>>.  "; }

    verDoAction94_catch(arg1) = { self.prop525; }

    prop525 = {
        "You run into the midst of the flock and try to grab one of the angry squawkers.  They elude your grasp at every turn.  Eventually you give up, disappointed and out of breath.  ";
        obj20.prop484 = ['breathless'];
    }

    prop521 = "Peeyew!  They reek of garbage and raw fish.  "

    prop702 = true

    prop706 = { "The gulls don't appear to be interested in speaking with you.  I guess you should have made an appointment with their secretary.  "; }

    prop505 = [obj305_the_old_man]

    prop807 = "The old man angrily reels his line.   \"Rotten thieves!  Pick a man's catch to bones in minutes.\"  "

    prop323 = { self.prop706; }

    verDoAction130_animate(arg1) = { "They're pretty animated already.  "; }

    verDoAction1_for(arg1) = { self.prop706; }

    verDoAction26_look_in(arg1) = { "You run into the middle of the flock, hoping to startle them into leaving.  Many of the gulls do take flight, surrounding you in a burst of feathers that blinds and confuses you.  You stumble back out of the flock, no wiser for the experience.  "; }

    verDoAction157_search(arg1) = { self.verDoAction26_look_in(arg1); }

    prop907 = 0

    prop924 = true

    verIoAction124_show_to(arg1) = { "They pay no attention.  It occurs to you that the gulls aren't intelligent enough  to understand anything that isn't actually thown into their midst.  "; }

    ioSynonym('Action123_give_to') = 'Action138_throw_to'

    ioSynonym('Action123_give_to') = 'Action53_on'

    ioAction123_give_to(arg1, arg2) = {
        if (arg2 == obj426_shrimp) {
            "You toss the shrimp toward the flock of gulls.  A lone gull spots it, rushes over, and devours it in a single gulp.  ";
            obj426_shrimp.prop812;
        } else if (arg2 == obj563_boiled_crab) {
            "You throw the boiled crab into the flock of gulls.  A brief feeding frenzy  ensues, as the gulls battle for the bits of crab meat.  In a few seconds,  the crab has disappeared from sight.  ";
            obj563_boiled_crab.moveInto(nil);
        } else if (arg2 != obj556_husks_peanuts_peanut) {
            "You toss <<arg2.thedesc>> among the squabbling hoard.  Several of the gulls  dash toward <<(arg2.prop509 ? "them" : "it")>>, but quickly find  <<(arg2.prop509 ? "them" : "it")>> to be inedible.  ";
            arg2.moveInto(obj307_flock_of_gulls.location);
        } else if (self.prop907 == 0) {
            "You toss a couple of peanuts toward the flock of gulls.  ";
        } else if (self.prop907 == 1) {
            "You toss a few more peanuts towards the flock of gulls.  ";
        } else if (self.prop907 == 2) {
            "Finally, you toss the entire bag of peanuts toward the hungry flock.  ";
            obj556_husks_peanuts_peanut.moveInto(nil);
        }
        ++self.prop907;
        if (self.prop907 == 1) {
            "One lone gull takes notice of your offering and waddles over to investigate.  It spots the <<(arg2 == obj426_shrimp ? "shrimp" : "peanuts")>>, snatches <<(arg2 == obj426_shrimp ? "it" : "one")>> up, and devours it in a single gulp.  ";
        } else if (self.prop907 == 2) {
            "The first gull pecks hungrily at the <<(arg2 == obj426_shrimp ? "shrimp" : "peanuts")>>, drawing the attention of some of the others.   They flap over to see what the first gull is eating, and become embroiled in a minor squabble over the <<(arg2 == obj426_shrimp ? "shrimp" : "peanuts")>>.  ";
        } else if (self.prop907 == 3) {
            "The trickle of curious gulls turns into a flood.  Soon, the entire hoard comes  flapping and squawking to join the fight over your peanuts, abandoning the  trash heap in the process.  You couldn't say how long the peanuts will keep  them busy, but chances are it won't be for long.  ";
            self.prop1022 = true;
            self.prop907 = 0;
            obj20.prop484 = ['victorious'];
        }
    }

    prop1023 = {
        self.prop1022 = nil;
        if (Me.location == obj451___Dry_Sand__South_of) {
            "\bThe peanuts must be running out.  You can see a few gulls beginning to trickle  back towards the mound.  The trickle grows to a flood and soon the entire flock  is in motion, returning to the mound en masse.  No trace remains of the peanuts  you threw down.  Even the brown paper sack is gone.  ";
        }
    }

    prop901 = {
        local local1 = fun227(Me);

        if (local1 == self.location) {
            "\b";
            say(self.prop934[rand(length(self.prop934))]);
        }
    }

    prop934 = ['A new gull, apparently a stranger to the flock, flies low over the feeding grounds  and sends the other gulls into a screaming rage.  ', 'A snowy white gull apparently materializes right in the middle of the flock, cranes  its neck as if searching for someone, and then dematerializes.  ', 'Two gulls break off from the main flock to fight over a choice morsel.  A third flies  over to investigate, and soon all three fly squawking away over the beach.  ', 'A particularly bold or greedy gull waddles right up to your feet to seek a handout.   It stares at you with one beady eye for a long, uncomfortable moment before  returning to the flock.  ', 'Something brushes your shoulder.  You pivot, instinctively, just  in time to see a gull sweep past your head.  ', 'A toddler of about four, gurgling excitedly, barrels into the flock of gulls.  A flurry  of white and grey feathers explodes into the air, only to flap back to earth a few  feet away.  ', 'The gulls battle among themselves for dominance over the temporary food supply.  ', 'From somewhere among the flock you hear a raucous cry that sounds suspiciously  like "Big Water\!"  ', 'Two strutting male gulls face off, puffing out their breast feathers and bobbing their  heads in each other\'s direction.  A noise suspiciously like laughter emanates from  several female gulls, and the two males hurriedly stand down.  ', 'The entire flock suddenly erupts in a bout of frenzied screeching for no apparent reason.   After a moment or two, they revert to their original decibel level.  ']

    verDoAction162_feed(arg1) = { "It occurs to you that you might try feeding them some specific thing.  "; }

    verIoAction163_feed_to(arg1) = { self.verIoAction123_give_to(arg1); }

    ioAction163_feed_to(arg1, arg2) = { self.ioAction123_give_to(arg1, arg2); }
;

obj308_for: class184
    preposition = 'for'

    sdesc = "for"
;

obj309_into: class184
    preposition = 'into'

    sdesc = "into"
;

obj310_against: class184
    preposition = 'against'

    sdesc = "against"
;

class class311: class158
    action(arg1) = {
        local local1 = arg1.location;

        if (isclass(local1, obj216)) {
            arg1.prop161(self.prop465(arg1));
        } else {
            "You can't swim here!  ";
            return nil;
        }
    }
;

obj312: class311
    verb = 'wade east' 'swim east'

    prop465(arg1) = { return arg1.location.prop304; }
;

obj313: class311
    verb = 'wade south' 'swim south'

    prop465(arg1) = { return arg1.location.prop303; }
;

obj314: class311
    verb = 'wade north' 'swim north'

    prop465(arg1) = { return arg1.location.prop302; }
;

obj315: class311
    verb = 'wade west' 'swim west'

    prop465(arg1) = { return arg1.location.prop305; }
;

obj316: class311
    verb = 'wade northeast' 'wade ne' 'swim northeast' 'swim ne'

    prop465(arg1) = { return arg1.location.prop308; }
;

obj317: class311
    verb = 'wade northwest' 'wade nw' 'swim northwest' 'swim nw'

    prop465(arg1) = { return arg1.location.prop309; }
;

obj318: class311
    verb = 'wade southeast' 'wade se' 'swim southeast' 'swim se'

    prop465(arg1) = { return arg1.location.prop310; }
;

obj319: class311
    verb = 'wade southwest' 'wade sw' 'swim southwest' 'swim sw'

    prop465(arg1) = { return arg1.location.prop311; }
;

obj320: class311
    verb = 'swim down'

    prop465(arg1) = { return arg1.location.prop307; }
;

obj321: class311
    verb = 'swim up'

    prop465(arg1) = { return arg1.location.prop306; }
;

class class322: class158
    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = { return arg1.location.prop307; }
;

class class323_move_north: class82
    sdesc = "move north"

    doAction = 'Action102_move_north'
;

class class324_move_south: class82
    sdesc = "move south"

    doAction = 'Action103_move_south'
;

class class325_move_east: class82
    sdesc = "move east"

    doAction = 'Action104_move_east'
;

class class326_move_west: class82
    sdesc = "move west"

    doAction = 'Action105_move_west'
;

class class327_move_northeast: class82
    sdesc = "move northeast"

    doAction = 'Action106_move_northeast'
;

class class328_move_northwest: class82
    sdesc = "move northwest"

    doAction = 'Action107_move_northwest'
;

class class329_move_southeast: class82
    sdesc = "move southeast"

    doAction = 'Action108_move_southeast'
;

class class330_move_southwest: class82
    sdesc = "move southwest"

    doAction = 'Action109_move_southwest'
;

obj331_press: class82, class83
    verb = 'press'

    sdesc = "press"

    doAction = 'Action110_press'
;

obj332_taste: class82, class83
    verb = 'taste' 'lick'

    sdesc = "taste"

    doAction = 'Action111_taste'
;

class class333_eat: class82
    sdesc = "eat"

    doAction = 'Action112_eat'
;

class class334_drink: class82
    sdesc = "drink"

    doAction = 'Action113_drink'
;

obj335_drink_from: class82
    verb = 'drink from'

    sdesc = "drink from"

    doAction = 'Action114_drink_from'
;

obj336_listen: class82, class83
    verb = 'listen'

    sdesc = "listen"

    action(arg1) = { Me.location.prop527; }
;

obj337_listen_to: class82, class83
    verb = 'listen to'

    sdesc = "listen to"

    doAction = 'Action115_listen_to'
;

obj338_swim: class82, class83
    verb = 'swim'

    sdesc = "swim"

    action(arg1) = {
        local local1 = Me.location;

        if (isclass(local1, obj266) || local1 == obj339___Inside_the__Octopu) {
            "Perhaps you should move out into deeper water.  ";
        } else if (isclass(local1, obj265) || isclass(local1, obj217)) {
            "You swim around for a bit before coming to rest in your original location.  ";
        } else {
            "Perhaps you should enter the water, first.  ";
        }
    }
;

obj339___Inside_the__Octopu: obj237, obj228, obj216
    noun = 'loc-oldbell'

    prop485 = 'freezing'

    prop682 = 'water'

    prop687 = nil

    sdesc = "\(Inside the 'Octopus'\)"

    prop167 = {
        "As you suspected, the 'octopus' is in fact a rusted old diving bell.  Suspended from the ceiling of the bell is a useless hunk of flaking metal that must once have been an air valve.  By some miracle of good fortune, the chamber is still full of air.  Several thick round portholes look out on the frigid depths.  ";
        if (!obj503_porthole.prop891) {
            "A surprising amount of light passes through them from the outside.  ";
        } else {
            "Sadly, all is dark beyind them, revealing no sign of your earlier vision.  ";
        }
    }

    prop666 = { "You can exit the bell.  "; }

    prop692 = "A rusted hunk of metal that used to be an air valve is suspended above you.  "

    prop905 = nil

    prop313 = {
        if (!obj503_porthole.prop891 && self.prop905 == nil) {
            "You take a deep breath and prepare to exit the bell... but just as you're about  to dive, a sudden glint of light draws your eyes towards one of the portholes.  ";
            self.prop905 = true;
            return nil;
        } else if (!obj503_porthole.prop891) {
            "You take one last quick glance, and can't help feeling that you've missed  something important.  ";
        }
        return obj397___Underwater_____dri;
        obj20.prop491 = true;
        setfuse(&fun411, 2, 0);
    }

    prop527 = { say(self.prop906[rand(3)]); }

    prop906 = ['The bell reverberates with a curious, chicken-like clucking sound.  ', 'A loud electric ping resounds throughout the chamber.  ', 'The dull roar of the surf fills your ears.  ']

    prop521 = { "The sharp, actinic scent of rusting metal is so strong you can taste it.   Layered below that is a strong, salty tang, and a hint of fish.  "; }

    prop498 = {
        if (rand(4) < 1) {
            say(self.prop885[rand(length(self.prop885))]);
        }
    }

    prop885 = ['\bSomething big and grey swims by, just at the limits of visibility.  ', '\bAn enormous crab scuttles up to the bell and crosses over its silt  covered baseplate, nearly brushing your toes.  ', '\bA school of small silver fish darts by the portholes.  A stray ray of light  reflects brightly off their scales.  ']
;

obj340_swim_in: class82, class83
    verb = 'swim in'

    sdesc = "swim in"

    doAction = 'Action116_swim_in'
;

obj341: class158, class83
    verb = 'dive' 'sink'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = {
        local local1 = Me.location;

        if (isclass(local1, obj266)) {
            "It's too shallow here.  It occurs to you to swim out into deeper water.  ";
            return nil;
        } else if (isclass(local1, obj265) && local1.prop687 == nil) {
            "You can't go any deeper.  ";
        } else if (isclass(local1, obj265) || isclass(local1, obj217)) {
            return local1.prop307;
        } else {
            "You try to dig a hole to China, but don't get very far.  ";
            return nil;
        }
    }
;

obj342: class158, class83
    verb = 'surface' 'rise'

    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = {
        if (!isclass(Me.location, obj217)) {
            "You're already on the surface.  ";
            return nil;
        } else {
            return arg1.location.prop306;
        }
    }

    doAction = 'Action117'
;

obj343_drown: class82, class83
    verb = 'drown'

    sdesc = "drown"

    action(arg1) = { Me.doAction118_drown(arg1); }

    doAction = 'Action118_drown'
    ioAction(obj96_in) = 'Action119_drown_in'
;

obj344_drown_in: class82, class83
    verb = 'drown in'

    sdesc = "drown in"

    doAction = 'Action120_drown_in'
;

class class345: class170
    prop476(arg1) = { fun14(); }

    action(arg1) = {
        self.prop476(arg1);
        abort;
    }
;

obj346: class40
    prop980 = {
        "As you gaze into the distant sky a strange sensation overcomes you.  You  feel like a balloon being inflated.  You rise, leaving the canopy behind. As you ascend toward the stratosphere, your mind and vision expand  like some huge bubble.  Your surface acts like a lens, magnifying, intensifying.  Everything seems almost surreally beautiful.  The deep orange sun wavers a hair's breadth above the horizon, heavy and ripe.  Its rays  speed diagonally towards you through streamers of cloud turned to pink cotton candy.  The sweeping rays hazily  rake the fertile wetlands that lie beyond the shore. Broad swathes of grassy emerald are bordered by wheat colored marshes.   Green and gold are divided by snake-like ribbons of shadow and  light, where twisting streams alternately capture and reflect the light.   The rays fade lazily to the east, smudging the sky with shades of  peach and rose and lilac and cool, steely blue. A pale moon hangs like a plump sand dollar in the milky blue eastern sky.  And beyond, the stars... \b The vision recedes, sending you plummeting like a falling star to the  earth's welcoming grace.  You find yourself \(in\) yourself again, standing  on pavilion canopy in the cool evening air.   \b You reflect on the experience for a while.   You'd nearly forgotten how to appreciate the beauty of everyday life.   It's enough to get you to thinking about your job again, and how it consumes 			 so much time that you can't even enjoy common miracles such as this.   ";
        fun12(Me);
        self.prop1032;
        obj478_maintenance_hatch.prop900 = true;
        Me.prop899 = true;
        obj20.prop484 = ['reverential', 'reverential', 'solemn', 'solemn'];
    }

    prop977 = {
        "You set your feet to the dance hall floor and follow the steps  you learned from the sunken diagram.  You start out clumsily, but slowly attain a modest grace. As you whirl about, ghostly figures begin to join you - a small few at first, but growing in number.  They surge into tangibility, spinning in sharp toed wing tips and gossamer slippers.  Stately young women  in frilly gowns twirl about you, lead by gentlemen in high collared jackets.   Tearing your gaze from the the revelers, you see that the pavilion has undergone a transformation of its own.  Where once all  was drear grey, now are rough wooden planks decorated with colorful diagrams.  The pavilion has also shrunken considerably.  Gay banners brighten the otherwise gloomy rafters.  Suddenly, someone taps your shoulder, a new partner inviting  you to join the revelry.  Following your confrere's lead, you swing  to the spirited notes of a lively jazz band.  The musicians endure for hours, but you never tire.  Unnoticed, the sun sinks into the west.   As the sky grows dark, attendants set out paper lanterns, which bring a fiery glow to the festivities. You dance through song after song, until you're giddy and slicked with sweat.   Finally, the ball begins to wind down.  The musicians belt out one final, powerful number.  Afterwards, they pack away their instruments.  The lights dim as the attendants douse the paper lanterns one by one and the dancers shuffle toward the exit.  As they depart, the ethereal dancers fade back into the past.  The musicians fade too, followed at last by the attendants and their lanterns.  \b In a few bare moments everyone is gone, and you see that the pavilion  has reverted back to grey cement.  Though hours seemed to have passed while  you danced, the sun is still just where you recall seeing it prior to this latest vision.   \b You feel like beating your chest in wild excitement.  Ahh!  What an incredible  reminder of the joy of expression!  In fact, it gets you to thinking about work again,  particularly the way it crushes all your creative output and turns it  into predigested pap for unintelligent clients.   ";
        fun12(Me);
        self.prop1032;
        obj530_ghostly_dancers.prop891 = true;
        obj20.prop484 = ['ebullient', 'ebullient', 'credulous', 'credulous'];
    }

    prop985 = {
        "You set the conch shell in the cavity.  It's a perfect fit, and somehow you can sense the... rightness... of it.  A shiver seems to ripple down the dragon's spine as if presaging some magical awakening.   The vibrations rebound from the tail and shudder back up the spine,  growing in force and velocity until they disappear into the base of the  creature's skull.  Then, slowly, lazily, the eyes open as if from a long,  restful sleep.  The creature stretches its long, sinuous neck.   Its head darts abruptly forward and its mouth splits open in a great, toothy  yawn that sends you peddling backwards through the sand.  Then, it rises on  its plump forelegs and shakes from side to side like a dog, casting off  a misty spray.  Stretched and shaken, the creature throws its  head skyward and trumpets forth with an elephantine \(roar\) that  rattles your bones and sends every gull in the vicinity flapping  away down the beach.  The creature's wings snap open with  a \(crack\) that echoes over the water like gunshot.   Finally, the great, sandy beast glances around the beach, tightens the  muscles of its powerful hind legs, and launches itself into the air.   Wings beating the air, tail whipping from side to side, it claws at the sky,  climbing higher and higher.  It turns to the west, toward the setting  sun and the great marshy wetlands.  Soon, it's just a speck against  the pastel smudged sky.  Then, gone. \b Incredible.  You've never believed that there was any real magic in the world,  though your heart has always wished otherwise.  Here it is not only proven,  but shown to be the result of singular personal vision.  What else but the  sculptor's purity of belief in his creation could have brought it to life?  It  gets you to thinking about work again, and how infrequently it lets you pursue  your own vision. ";
        fun12(Me);
        self.prop1032;
        obj646_dragon_sculpture.moveInto(nil);
        obj488_dragon_sculpture.moveInto(nil);
        obj487_dragon_sculpture.moveInto(nil);
        obj560_conch_shell.moveInto(nil);
        obj646_dragon_sculpture.prop982 = true;
        obj20.prop484 = ['awestruck', 'awestruck', 'exuberant', 'exuberant'];
    }

    prop992 = {
        "You toss the bottle containing the mite onto the pile, where it shatters on impact.  For a moment, nothing happens.  Then you detect a tiny whiff of smoke.  Other than that, still nothing.  You're just about ready to give up on your plan when you spot a writhing black line in the sand.  Holy cow!  It's a living stream of the tiny crustaceans.  Seconds later they swarm over the pile of broken glass.  Before your eyes they begin dissolving the bottles and shards into tiny molten beads.  They carry the fiery drops to the middle of the pile.  The drops are shaped  into rounded towers, which sprout like enormous soap bubbles.  The bulbous, irregular spheres appear to be full of sand, with only a thin  skin of glass.  Higher and higher climb the towers, until they nearly brush the bottom of the pier.  A flash of color catches your eye.  A sheet of thin blue plastic, once part of the glass recycling canister, is floating across the floor.  Now that you've noticed it, there are pieces of plastic in motion all around you, each levitating slightly above the ground.  Instead of melting the plastic down, the mites carry the sheets to the perimeters of the tower and begin incorporating them into a spiraling ramp.  Step by step, the ramp corkscrews up and around until it wraps the pinnacle of the tallest tower.  Finally, all growth  ceases.  The finished structure looms over twice your height.   \b An unexpected tear rolls down your cheek.  The spectacle has cut through layers  of cynicism to revive your appreciation for the unfamiliar.   It's enough to get you thinking about work again.  You begin to realize  how the daily monotony of your job has blunted your desire for new experience. ";
        fun12(Me);
        self.prop1032;
        "\bLooking around, you spot one ancient, discolored bottle that was passed up  by the mites.  ";
        obj458_bottle_bottles.moveInto(nil);
        obj491_looming__crystalline.moveInto(obj285___Damp_Sand__Beneath);
        obj491_looming__crystalline.prop295;
        obj461_colony_of_mites.moveInto(obj491_looming__crystalline);
        obj440_organic_looking_cast.moveInto(nil);
        obj561_antique_bottle.moveInto(obj285___Damp_Sand__Beneath);
        obj561_antique_bottle.prop295;
        obj20.prop484 = ['astonished', 'astonished'];
    }

    prop951 = {
        "You glance out the porthole expecting to see little more than muck and murk.  Instead, you're confronted with a breathtaking vision. The stygian depths have parted to permit a single powerful beam of sunlight, allowing it to illuminate a scene of startling beauty.  Beyond the portholes you can make out   a thriving coral reef, swarming with a kaleidoscopic variety of life.  Brain coral sprout like fungi, their convoluted folds home to tiny shrimp.   Larger crustaceans are visible here and there, hiding in shadow as they wait for their unwary prey.   Schools of fish swarm in great prismatic clouds, their pale bellies reflecting tiny bursts of light as they wheel and twirl.  Fluted ivory branches climb surface ward,  reaching like grasping fingers for the silver fish that dart among them.  And presiding over all like the kings of yore are  great purple sea fans, which wave majestically in the currents  as if bestowing grace upon their radiant subjects. \b Discovering all this at such great depth and so far north is nothing short of miraculous.  You'd almost forgotten the pleasant thrill of finding  beauty in unexpected places.  It starts you thinking about work again, in  particular the way it dulls your interest in searching for wonder.   ";
        fun12(Me);
        self.prop1032;
        "\b You notice that the mud beneath the coral seems oddly level.   In fact, one patch in particular doesn't look like mud at all. ";
        obj602_patch_of_level_surfa.moveInto(obj339___Inside_the__Octopu);
        obj602_patch_of_level_surfa.prop295;
        obj599_patch_of_level_surfa.moveInto(obj397___Underwater_____dri);
        obj599_patch_of_level_surfa.prop295;
        obj503_porthole.prop891 = true;
        obj599_patch_of_level_surfa.prop950;
        obj20.prop484 = ['reverential', 'reverential', 'solemn', 'solemn'];
    }

    prop1035 = nil

    prop736 = {
        if (Me.location == obj381___Grotto__) {
            "Ugh.  You're far too groggy to be assessing your emotional state just now.  ";
            exit;
        }
        if (!self.prop1035) {
            "\"Hmm,\" you wryly think to yourself.  \"Maybe I've been playing too many  adventure games lately.  If only life worked that way.\"  \b";
            self.prop1035 = true;
        }
        "Not exactly a score as such, but...\n";
        if (length(obj20.prop487) < 6) {
            "\b";
        }
        if (obj491_looming__crystalline.location != nil) {
            "\n-\tThe castle builders have revitalized your waning belief in a world full of  novelty.  ";
        }
        if (Me.prop899) {
            "\n-\tYour sunset vision has reawakened your appreciation for the beauty of the  mundane.  ";
        }
        if (Me.prop976) {
            "\n-\tYour strange kidnapping experience has rewarded you with the treasures  of life and freedom.";
        }
        if (obj503_porthole.prop891) {
            "\n-\tThe coral reef has shown you that beauty may be found in unexpected places.  ";
        }
        if (obj530_ghostly_dancers.prop891) {
            "\n-\tThe ghostly dancers have reminded you of the ineluctable joy of creative  expression.  ";
        }
        if (obj646_dragon_sculpture.prop982) {
            "\n-\tThe sand dragon's flight has proven the power and the magic of personal vision.  ";
        }
        self.prop1032;
    }

    prop1032 = {
        local local1 = length(obj20.prop487);

        if (local1 == 6) {
            "\bYou feel conflicted.  You've been thinking to yourself, \"Oh man, maybe I should quit.\"   After the past week, you're of half a mind to do it, so you can pursue your own  creative interests.  If only someone or something would present you with some  convincing arguments to get you off the fence.  ";
        } else if (local1 == 5) {
            "\bYou feel confused.  You're now thinking,  \"I didn't realize how serious I was about quitting.\"   The truth is, you didn't \(really\) believe you were going to find the motivation to  quit here on the beach.  But it's hard to ignore the wonder of what you've seen.   Maybe you really \(could\) quit.  Still, you're going to need a lot more convincing.  ";
        } else if (local1 == 4) {
            "\bYou're wavering.  You're now thinking, \"Maybe I'm being hasty.\"  Sure,  a couple of fancy displays  now and then make life more interesting, but is that enough reason to quit your job?   And what about your employers?  What'll they do without you?  You're still going to  need a few more convincing arguments.  ";
        } else if (local1 == 3) {
            "\bYou feel hesitant. You're now thinking, \"Well now, wait a minute.\"   What's life about if not living?  And much as  you hate to admit it, your employers can probably replace you easily.  You're still not  quite decided, but it would only take several more arguments to set your mind.  ";
        } else if (local1 == 2) {
            "\bYou feel skittish.   You've begun to ask yourself, \"Could I really do this?\"   You've begun unconsciously to tally  your savings.  You've even got the beginnings of a resignation letter going  in the back of your mind.  If only you had a couple more arguments to put your mind  at rest.  ";
        } else if (local1 == 1) {
            "\bYou feel excited.  \"Yes, I could really do this!\" you exclaim.  You've got plenty  of money in the bank.   And to heck with your employers!  What have they ever really done for you?  You're  teetering right on the brink of decision.  If only you had one more argument to set your  resolve.  ";
        } else if (local1 == 0) {
            "\bYou feel resolute.  \"That's it.  I'm quitting.\"  You've made up your mind and  thrown caution to the winds.   First thing on Monday, you're going to write your letter of resignation.  You feel  exhilaratingly light,  as if some constant pressure had been removed.  You're sure that  this is the right decision.  ";
        }
    }
;

class class347: object
    validDo(arg1, arg2, arg3) = { return arg2.prop179(arg1); }

    validDoList(arg1, arg2, arg3) = {
        local local1, local2;

        local2 = arg1.location;
      label210203:
        if (local2.location) {
            local2 = local2.location;
            goto label210203;
        }
        local1 = fun30(arg1) + fun30(local2) + obj20.prop148;
        return local1;
    }

    validIo(arg1, arg2, arg3) = { return arg2.prop179(arg1); }

    validIoList(arg1, arg2, arg3) = { return self.validDoList(arg1, arg2, arg3); }

    doDefault(arg1, arg2, arg3) = { return arg1.contents + arg1.location.contents; }

    ioDefault(arg1, arg2) = { return arg1.contents + arg1.location.contents; }
;

class class348_drop: class82, class83
    sdesc = "drop"

    doDefault(arg1, arg2, arg3) = { return arg1.contents; }

    ioAction(obj91_on) = 'Action121_drop_on'
    doAction = 'Action122_drop'
;

class class349_give: class82
    sdesc = "give"

    prepDefault = obj52_to

    doDefault(arg1, arg2, arg3) = { return arg1.contents; }

    ioAction(obj52_to) = 'Action123_give_to'
;

class class350_show: class82
    sdesc = "show"

    prepDefault = obj52_to

    doDefault(arg1, arg2, arg3) = { return arg1.contents; }

    ioAction(obj52_to) = 'Action124_show_to'
;

obj351_buy: class82
    verb = 'buy'

    sdesc = "buy"

    doAction = 'Action125_buy'
    ioAction(obj93_from) = 'Action126_buy_from'
;

obj352_pay_for: class82
    verb = 'pay for'

    sdesc = "pay for"

    doAction = 'Action127_pay_for'
;

obj353_pay: class82
    verb = 'pay'

    sdesc = "pay"

    doAction = 'Action128_pay'
    ioAction(obj308_for) = 'Action129_pay_for'
;

obj355_animate: class82
    verb = 'animate'

    sdesc = "animate"

    doAction = 'Action130_animate'
;

class class356_put: class82
    sdesc = "put"

    prepDefault = obj96_in

    doDefault(arg1, arg2, arg3) = { return takeVerb.doDefault(arg1, arg2, arg3) + arg1.contents; }

    ioAction(obj96_in) = 'Action13_in'
    ioAction(obj91_on) = 'Action121_drop_on'
;

obj357_slide: class82
    verb = 'slide'

    sdesc = "slide"

    ioAction(obj191_under) = 'Action5_under'
;

class class358: class158
    action(arg1) = { arg1.prop161(self.prop465(arg1)); }

    prop465(arg1) = { return arg1.location.prop313; }
;

class class359_clean: class82
    sdesc = "clean"

    ioAction(obj68_with) = 'Action134_clean_with'
    doAction = 'Action135_clean'
;

class class360_ask: class82
    sdesc = "ask"

    prepDefault = obj84_about

    validIo(arg1, arg2, arg3) = { return arg3 == 1; }

    validIoList = nil

    ioAction(obj84_about) = 'Action136_ask_about'
;

class class361_throw: class82
    sdesc = "throw"

    prepDefault = obj127_at

    ioAction(obj127_at) = 'Action53_on'
    ioAction(obj52_to) = 'Action138_throw_to'
;

obj362_stand_in: class82
    verb = 'stand in'

    sdesc = "stand in"

    doAction = 'Action139_stand_in'
;

obj363___In_the_Diving_Bell: obj237
    noun = 'loc-newbell'

    prop682 = 'metal'

    sdesc = "\(In the Diving Bell\)"

    prop167 = { "It surrounds you like a sturdy white shell.  The ceiling is only a few fingers above your head, causing you to  hunch over a bit for fear of bashing your skull.   Protruding from the ceiling is a thin pipe that ends in an air valve. Several thick, round portholes look on the outside world.  "; }

    prop666 = { "You can exit the bell.  "; }

    prop692 = "Protruding from the ceiling is a thin pipe that ends in an air valve."

    prop527 = { "The bell is filled with a constant low moan as the light breeze reverberates through  the hollow chamber.  It's like standing in a giant sea shell.  "; }

    prop313 = {
        "You duck your head and crab walk out of the bell.  \b";
        return obj199___Beach_Path__;
    }

    prop498 = {
        if (rand(4) == 1) {
            say(self.prop885[rand(length(self.prop885))]);
        }
    }

    prop885 = ['\bAn elderly couple strolls by the bell, failing to notice you inside it.  ', '\bA bunch of barely dressed children race by, pausing only to point and giggle  at you through the portholes.  ', '\bA slight wind fills the bell chamber with a low, almost subliminal moan.  ']
;

obj364_jump_over: class82
    verb = 'dive off' 'dive over' 'jump off' 'jump over'

    sdesc = "jump over"

    doAction = 'Action140_jump_over'
;

obj365_jump_into: class82
    verb = 'dive in' 'dive on' 'dive into' 'jump in' 'jump on' 'jump into'

    sdesc = "jump into"

    doAction = 'Action141_jump_into'
;

obj366_jump_through: class82
    verb = 'hop thru' 'hop through' 'dive thru' 'dive through' 'jump thru' 'jump through'

    sdesc = "jump through"

    doAction = 'Action142_jump_through'
;

class class367_climb: class82
    sdesc = "climb"

    doAction = 'Action143_climb'
;

obj368_dig: class82
    verb = 'dig with'

    sdesc = "dig"

    doAction = 'Action144_dig'
;

obj369_build: class82
    verb = 'build' 'make'

    sdesc = "build"

    doAction = 'Action145_build'
    ioAction(obj96_in) = 'Action146_build_in'
    ioAction(obj91_on) = 'Action146_build_in'
;

class class370_attach: class82
    sdesc = "attach"

    prepDefault = obj52_to

    ioAction(obj52_to) = 'Action148_attach_to'
;

class class371_detach: class82
    prepDefault = obj93_from

    sdesc = "detach"

    ioAction(obj93_from) = 'Action149_detach_from'
    doAction = 'Action150_detach'
;

class class372_get_out_of: class82
    sdesc = "get out of"

    action(arg1) = { askdo; }

    doDefault(arg1, arg2, arg3) = {
        if (arg1.location && arg1.location.location) {
            return [] + arg1.location;
        } else {
            return [];
        }
    }

    doAction = 'Action151_get_out_of'
;

class class373_get_on: class82
    sdesc = "get on"

    doAction = 'Action152_get_on'
;

class class374_take_off: class82
    sdesc = "take off"

    doAction = 'Action153_take_off'
    ioAction(obj93_from) = 'Action154_take_off_from'
;

class class375_push: class82
    sdesc = "push"

    doAction = 'Action155_push'
;

class class376_open: class82
    sdesc = "open"

    doAction = 'Action156_open'
;

obj377: class170
    verb = 'yes' 'ok'

    action(arg1) = {
        local local1 = obj20.prop138 - obj20.prop493;

        if (obj20.prop492 == true && local1 == 1) {
            say(obj20.prop494);
        } else {
            "Yes?  ";
        }
        obj20.prop492 = nil;
    }
;

obj378: class170
    verb = 'nope' 'no'

    action(arg1) = {
        local local1 = obj20.prop138 - obj20.prop493;

        if (obj20.prop492 == true && local1 == 1) {
            say(obj20.prop495);
        } else {
            "No?  ";
        }
        obj20.prop492 = nil;
    }
;

obj379: class170
    verb = 'maybe'

    action(arg1) = {
        local local1 = obj20.prop138 - obj20.prop493;

        if (obj20.prop492 == true && local1 == 1) {
            say(obj20.prop496);
        } else {
            "Maybe what?  ";
        }
        obj20.prop492 = nil;
    }
;

class class380: class82
    action(arg1) = { "%Your% throat is a bit sore now. "; }
;

obj381___Grotto__: class31
    prop485 = 'groggy'

    sdesc = "\(Grotto\)"

    prop167 = { "You're tied up in some sort of underground grotto.  The walls and ceiling are of rough stone, and water drips from the ceiling and puddles around you on the stony floor.  A cool breeze on your back suggests that the cavern extends to some distance behind you. Nearby, a thin, sandy shore descends towards a sheltered inlet.  The inlet follows the cove as it bends out of sight towards the sea, while pink tongues of sunset reach back around the bend to lick the dark walls of the cave.  "; }

    prop666 = { "There is no escape while you lie, tied up on the stony ground.  "; }

    prop692 = "Dark, dripping stone.  "

    prop156 = "You're not going anywhere while you're tied up on the floor.  "

    prop1017 = { "The back of your head throbs, and coarse rope binds your arms.   You can't sit up or even focus your eyes well enough to do that.  "; }

    prop683 = "The ground here is cold and stony.  "

    prop654 = [obj109_look, obj336_listen, obj337_listen_to, obj133, obj37, obj38_tell, obj147_touch, obj405_look_up, obj134_yell_at, obj115, obj249_smell, obj130, obj396, againVerb, obj36_inspect]

    roomAction(arg1, arg2, arg3, arg4, arg5) = {
        if (isclass(arg2, class170)) {
            pass roomAction;
        } else if ((arg2 == obj36_inspect || arg2 == obj147_touch) && (arg3 == Me || isclass(arg3, class301_your_body))) {
            "Ugh.  Your whole body throbs painfully with the blood pulsing dully  through your veins.  ";
            exit;
        } else if (arg3 == obj700_coarse_rope && (arg2 == obj144 || arg2 == obj92 || arg2 == obj118 || arg2 == takeVerb && arg4 == obj98_off)) {
            "You rock back and forth on the stony ground, struggling to break free  of the rope that binds you.  The motion sets your head to throbbing and the  coarse rope tears into your flesh, but you're unable to free yourself.  ";
            exit;
        } else if (arg2 == obj129_stand || arg2 == obj110_sit_on || arg2 == obj401_sit_up) {
            "You rock back and forth and manage to get your knees beneath you.   Unfortunately, this puts your forehead against the floor and sends  shooting pains through your head and neck.  You try to raise your head  up off the floor, but the effort proves to be too much, and you fall  back over on your side.  ";
            exit;
        } else if (arg2 == obj112_lie_on) {
            "You're already lying on the ground.  ";
            exit;
        } else if ((arg2 == obj119_attack || arg2 == obj276_kick || arg2 == obj118) && arg3 == obj306_scruffy_looking_indi) {
            if (obj306_scruffy_looking_indi.location == obj688_dinghy) {
                "Even if you had any hope of attacking the brigands, they're too far away.  ";
            } else if (obj306_scruffy_looking_indi.location == obj381___Grotto__) {
                "You roll toward the brigands and try feebly to raise your feet for a  kick.  The heavyset man looks at you with wry amusement, and says  \"Gar, it's a scrappy 'on, in't it?\"  The other man only glares at you  with irritation.   ";
            }
            exit;
        } else if (arg2 == obj116) {
            "It's hard to tell with your hands tied behind you, but you don't seem to be  carrying anything.  ";
            exit;
        } else if (find(self.prop654, arg2) != nil) {
            pass roomAction;
        } else {
            self.prop1017;
            exit;
        }
    }

    prop527 = {
        local local1 = obj306_scruffy_looking_indi.prop1025;

        switch (obj306_scruffy_looking_indi.prop1025) {
          case '1':
            self.prop1026;
            goto label216602;
          case '2':
            self.prop1027;
            goto label216602;
          case '3':
            self.prop1028;
            goto label216602;
          case '4':
            self.prop1029;
            goto label216602;
          default:
            say(self.prop694[rand(length(self.prop694))]);
        }
      label216602:
    }

    prop1026 = "You can hear the creak of old wood, accompanied by small  splashes and grumbled conversation.  "

    prop1027 = "The two men's coarse voices carry over the placid waters of the inlet.  "

    prop1028 = "The two men continue to argue, their harsh voices scraping  across your raw nerves.  "

    prop1029 = "The pirates continue to grumble menacingly about your fate.  "

    prop694 = ['The wind rushes through the grotto, making it sound as if you were in  an enormous conch shell.  ', 'Droplets of water fall from the stony ceiling, landing with tiny plips  and plops on the puddled ground.  ', 'You hear the shrill squawking of a gull emanating from somewhere  around the bend.  ', 'You can just make an a tiny skittering sound, as of crabs scuttling over  the stony ground.  ', 'From somewhere further back in the cave comes a gentle creaking noise.  ']

    prop1030 = nil

    prop521 = {
        "The dank, briny odor of the subterranean grotto is almost overwhelming.  ";
        if (self.prop1030 == nil) {
            "Beneath it is a subtle trace of... something... \(phew\)!  Perhaps it's not so subtle after all.  ";
        }
        "Beneath the fetid cave smell is the foul stench of exhaled rum.  ";
    }

    prop498 = {
        if (rand(3) == 1) {
            say(self.prop885[rand(length(self.prop885))]);
        }
    }

    prop885 = ['\bA drop of water falls from the stony ceiling and lands with a \(plip\) on  the puddled ground.  ', '\bA strong wind charges through the grotto, echoing off every surface and  filling the chamber with its roar.  ', '\bThe gentle surf laps against the thin shore.  ']
;

class class382_search: class82
    sdesc = "search"

    doAction = 'Action157_search'
;

class class383_say: class82
    sdesc = "say"

    doAction = 'Action158_say'
;

class class384_pull: class82
    sdesc = "pull"

    doAction = 'Action159_pull'
;

class class385_break: class82
    sdesc = "break"

    doAction = 'Action160_break'
;

obj386: class170
    verb = 'philosophy'

    action(arg1) = {
        self.prop784(arg1);
        abort;
    }

    prop784(arg1) = { "Like a certain large computer game company, the author of this game  believes that people play adventure games for fun and entertainment,  not to be whacked over the head every time they try something  dumb or a little risky.  Nothing will ever kill you in \(Sunset Over   Savannah\), and nothing you can do will ever put you in a situation  where you can't complete the game.  You \(can\) get hurt for doing  obviously stupid things, but to paraphrase Nietzsche, that which doesn't  kill you only makes you stronger.  "; }
;

obj387: class170
    verb = 'freeware' 'payment' 'register'

    action(arg1) = {
        self.prop785(arg1);
        abort;
    }

    prop785(arg1) = { "This game is freeware.  No financial compensation is required.   However, it is not in the public domain and all rights are reserved.  This game  may not be sold for profit, though a nominal fee may be charged for distribution of the media on which it appears.  If you would like to include  a copy of this game on a CD-ROM collection, all the author asks is that you give  him advance notice and a copy of the CD-ROM in question. \b If you like the game, you can help the author by contacting any computer game  company and suggesting that they take a look at \(Sunset Over Savannah\).   If you yourself work for a computer game company, the  author would be thrilled and delighted to hear from you.   \b Any updated versions of this game will be made available at  \nftp.gmd.de/if-archive/games/tads/savannah.gam. \b Ivan Cockrum <ivan@cockrumville.com> "; }
;

obj388: class170
    verb = 'email' 'contact'

    action(arg1) = {
        self.prop786(arg1);
        abort;
    }

    prop786(arg1) = { "Ivan Cockrum <ivan@cockrumville.com> \n1707 Bellevue Ave, #301 \nSeattle, WA 98122 \n206-324-4361 \b The author welcomes all email, but holds a special place in his heart for messages  that offer job opportunities with established computer game companies.  "; }
;

obj389: class170
    verb = 'info'

    action(arg1) = {
        self.prop787(arg1);
        abort;
    }

    prop787(arg1) = { "\(Sunset Over Savannah\)  \nAn Existential Vacation by Ivan Cockrum. \nWinner of the 1997 XYZZY Award for Best Writing. \nCopyright (c) 1997 by Ivan Cockrum.  All rights reserved. \n<<obj181_Release_1_0_4__8_2_9.sdesc>>   \b \nType \(CONTACT\) for contact information.   \nType \(FEATURES\) for a list of features particular to this game.   \nType \(INSTRUCTIONS\) if you've never played a text adventure game before.   \nType \(ADVENTURE\) for more information about text adventures. \nType \(PHILOSOPHY\) for the author's game design philosophy. \nType \(FREEWARE\) for information about registration and distribution of this game. \nType \(CREDITS\) for a list of people who made the making of this game possible. "; }
;

obj390: class170
    verb = 'features'

    action(arg1) = {
        self.prop788(arg1);
        abort;
    }

    prop788(arg1) = { "Instead of a numerical score, \(Sunset Over Savannah\) tracks your  emotional and physical state.  Your center, or core state  begins at 'conflicted', and permanent changes occur as major puzzles  are solved.  Certain lesser events can temporarily alter your emotions  for better or worse, but they'll always return to center within a few turns. Typing SCORE will list any important milestones you've passed and give you  an indication of your overall emotional state.  EXAMINE MYSELF will give you  a rundown of any cuts or bruises you may have accumulated.   \b The game will never kill you, or let you reach an unfinishable state (for more about this, type PHILOSOPHY).  You \(can\) get hurt though, and any injuries will be reflected in your temporary  emotional state, as well as your permanent physical state. \b The game's beach environment was designed to be as permissive as possible, so feel free to go swimming, build a sand castle, dig for buried treasure, dive off the pier, etc.  And since the game was designed with the inexperienced adventurer in mind, the parser is very forgiving, and will usually accept three or more command variations for any important action.   \b EXITS displays a brief list of all exits available from the \(current\) location, EXITS ON displays a brief list of all available exits whenever \(any\) room description is displayed, and EXITS OFF turns off exit descriptions. "; }
;

obj391: class170
    verb = 'credits' 'acknowledgements'

    action(arg1) = {
        self.prop789(arg1);
        abort;
    }

    prop789(arg1) = { "Very special thanks must go to the friends and relatives who helped by giving  me the freedom to create this game: \b - My girlfriend Nancy, for supporting and following me through it all; \n- Nancy's mom Linda Chavis, and the Chavis household, for feeding  \n\tme and letting me work undisturbed for many months; \n- My mom, Andrea Kline, and my grandparents, Charlotte and Allen  \n\tKline for \(always\) being there for me; \n- My dad, Dave Cockrum and his wife Paty, for keeping my dogs  \n\tfar longer than they expected; \n- David Micklewright, for paying to fix the fried  \n\tmotherboard that brought development to a sudden, screeching halt; \n- Dave Goodman, the Quick Family, Janice Quick, Melissa Cape,  \n\tand Mike Harl, for sheltering us in our travels down the Coast. \b Programming credit goes to the following, whose code I either overtly  borrowed or blatantly imitated.  Either way, I learned a great deal from  each of them. \b \n- Dave Baggett, for showing me how to tie things together; \n- Neil deMause, for disallow all, various sense verbs, miscellaneous changes  \n\tto Actor and thing, and the concepts of exit descriptions and platforms; \n- Stephen Granade, for improved npc interaction with askFor,  \n\taskAbout, tellAbout, and factoids; \n- Neil K. Guy for his HTML conversion of Michael Roberts' TADS  \n\tmanual, which I found to be an invaluable resource; \n- Andrew Plotkin, whose 'So Far' had some of the best player interaction I've  \n\tever seen in adventure game (except for that damned 'light trickle' command); \n- Scott Steinfath, for answerme.t, which allowed me to answer my own  \n\trhetorical questions; \n- G. Kevin Wilson, for waterrooms, substances and substance containers,  \n\tthe very heart of the beach. \b And finally, my beta testers: Paul E. Coad, Stephen Granade, Bernd Schmidt and  Lucian P. Smith.  Special thanks to tester Andrew Plotkin for his gentle, well  considered feedback on the intangibles that make a game good. "; }
;

obj392: class170
    verb = 'adventure'

    action(arg1) = {
        self.prop790(arg1);
        abort;
    }

    prop790(arg1) = { "Text adventure (also known as Interactive Fiction) lives!  This game and many  others like it can be found at the Interactive Fiction archive at  ftp.gmd.de/if-archive/.  Unfortunately, the archive is not very well organized.  However, there is an active community of IF players who would be only too happy to  help you find what you're looking for.  They can be found on the twin newsgroups,  rec.arts.int-fiction and rec.games.int-fiction.  Stop by and say hi sometime! "; }
;

obj393: class170
    verb = 'exits on' 'exitson'

    action(arg1) = {
        self.prop791(arg1);
        abort;
    }

    prop791(arg1) = {
        "Okay, all room descriptions will be followed by a short list of all  available exits.  \b";
        obj20.prop490 = true;
        Me.location.prop666;
    }
;

obj394: class170
    verb = 'exits off' 'exitsoff'

    action(arg1) = {
        self.prop792(arg1);
        abort;
    }

    prop792(arg1) = {
        "Okay, exit descriptions won't be displayed.  ";
        obj20.prop490 = nil;
    }
;

obj395: class170
    verb = 'exits' 'direction' 'directions' 'show exits'

    action(arg1) = {
        Me.location.prop666;
        abort;
    }
;

obj396: class170
    verb = 'xyzzy'

    action(arg1) = { self.prop793(arg1); }

    prop794 = nil

    prop793(arg1) = {
        local local1 = Me.location;

        if (isclass(local1, obj217)) {
            "The word escapes your mouth in a glittering swarm of bubbles.  Instead of fleeing to the surface, they remain suspended in the water around you.  ";
        } else {
            "The word escapes your mouth like a gentle zephyr and  swirls in the air around you.  ";
        }
        if (local1 == obj381___Grotto__) {
            "The breeze soon dissipates, leaving your situation unchanged.  ";
            exit;
        }
        if (self.prop794 || isclass(local1, obj237) || local1 == obj199___Beach_Path__ || local1 == obj397___Underwater_____dri) {
            "You can feel powerful forces gathering, like a static charge before a storm.  You glance around in anticipation.  A long moment passes, but nothing happens.  You begin to fear that something has gone truly awry with the fabric of the universe.  ";
        } else {
            "You can feel powerful forces gathering, like a static charge before a storm.  You glance around in anticipation.  A long moment passes, but nothing happens.  Then, a distant bass rumble begins, somewhere far, far away.  ";
            if (isclass(local1, obj216)) {
                "You can feel the current pulsing with the distant vibrations, and the rumbling grows steadily louder and louder until you fear a tidal wave must be approaching.  ";
                if (isclass(local1, obj217)) {
                    "The waves buffet you mercilessly, until you're forced to claw your way to the surface, where you fight to remain afloat amid the suddenly pounding surf.  ";
                    Me.moveInto(local1.prop518);
                    obj20.prop491 = nil;
                    obj20.prop484 = ['awestruck', 'awestruck', 'awestruck'];
                } else {
                    "The surf rises violently, buffeting you with crashing waves that leave you sputtering and gasping.  ";
                }
            } else {
                "You can feel the distant vibrations in the soles of your feet, and the rumbling grows steadily louder and louder until you fear an earthquake must be approaching. The surf becomes violently choppy, throwing up pounding waves that come crashing onto shore.  ";
            }
            "Then, in the eastern distance, an incredible sight. Some... thing, some enormous, unimaginably big \(thing\) as big as an island rises from the  sea, rivulets of water streaming down its back and sides.   Even from here you can see that its rugged, craggy flesh is cut through with channels like ancient ravines, from which sprout entire forests of flora.  A mouth wide enough to swallow your entire hotel is lined with jagged, discolored teeth at least as big as you are, and one cold, round eye the size of a wading pool penetrates the distance to stare right at you.  You can actually feel the impossible beast considering you, as if judging the worth of your very soul, and you shrivel beneath the intense scrutiny of that piercing eye. The examination seems to drag on forever, until at last, the eye turns away.  The incredible mouth slowly draws open in a terrifying grimace that seems to drain half the ocean, and a sound like all the trumpets of heaven proclaiming judgment day thunders across the beach, rattling every stick and bone in its path.  The echoes are still reverberating up and down the beach moments later, when the beast heaves its massive, ponderous bulk back beneath the waves.  As it disappears once more into the sea, a name from the old testament suddenly pops into your head.  \(Leviathan\).  And as the crashing surf slowly returns to its once gentle nature, you realize that whatever verdict was decided here today will remain forever hidden from you beneath the implacable depths. ";
            self.prop794 = true;
        }
    }
;

obj397___Underwater_____dri: obj217
    noun = 'loc-under10'

    prop485 = 'freezing'

    prop518 = obj490___Deep_Water__Beneat

    prop687 = nil

    prop306 = obj490___Deep_Water__Beneat

    prop312 = {
        if (!obj339___Inside_the__Octopu.prop293) {
            "You swim between the four thin legs and rise up into a hollow, air filled  chamber!  You take a deep, grateful breath.  \b";
        } else {
            "You swim up inside the body of the rusting bell and take a deep breath.   Thank goodness the chamber still contains air!  \b";
        }
        obj501_tentacles_pocket_bat.prop891 = true;
        obj20.prop491 = nil;
        return obj339___Inside_the__Octopu;
    }

    sdesc = "\(Underwater\), (drifting)"

    prop167 = {
        "You're at the bottom of a long, precipitous slope.  The cold and pressure are intense.  Judging by the dim light, you must be many fathoms below the surface.  It's astonishing that you made it  this deep without any diving equipment.  An enticing beam of light in these frigid, sub-arctic depths has resolved into";
        if (!obj501_tentacles_pocket_bat.prop891) {
            "... the huge staring eye of an enormous octopus!";
        } else {
            " the porthole of a long disused diving bell.  The porthole only reflects the  single, powerful ray of sunlight that has miraculously penetrated to this  great depth.  ";
        }
        if (obj502_surface_pattern.location == self) {
            "\n\tYou can make out a partially obscured pattern in the fine mud of the ocean floor.  ";
        }
    }

    prop666 = { "You can<<(obj501_tentacles_pocket_bat.prop891 == nil ? " enter the dive bell, or" : "")>>  swim to the surface.  "; }

    prop692 = "Darkness.  "
;

obj398: class170
    verb = 'die'

    action(arg1) = {
        self.prop795(arg1);
        abort;
    }

    prop795(arg1) = { "No.  Your will to live is stronger than all the forces of mediocrity that  would push you down.  "; }
;

class class399: class83
    action(arg1) = {
        if (arg1.prop449) {
            "%You% %are% much too anxious worrying about %your% continued survival to fall asleep now. ";
        } else if (obj20.prop450 + 1 < obj20.prop451) {
            "%You're% not tired. ";
        } else if (!arg1.location.prop164 && !arg1.location.prop154) {
            "I don't know about you, but I can never sleep standing up. %You% should find a nice comfortable bed somewhere. ";
        } else {
            "%You% quickly drift%s% off into dreamland...\b";
            fun16();
        }
    }
;

obj400_tan: class82
    verb = 'tan'

    sdesc = "tan"

    action(arg1) = { "It's too late in the day.  All the good rays are long gone.  "; }

    doAction = 'Action161_tan'
;

obj401_sit_up: class82
    verb = 'sit up'

    sdesc = "sit up"

    action(arg1) = {
        if (!arg1.location.prop665 == 3) {
            "You're not lying on anything.  ";
        } else if (Me.prop562) {
            obj55_ground.doAction151_get_out_of(arg1);
        } else {
            arg1.location.doAction38_sit_on(arg1);
        }
    }
;

obj402_feed: class82
    verb = 'feed'

    sdesc = "feed"

    doAction = 'Action162_feed'
    ioAction(obj52_to) = 'Action163_feed_to'
;

obj403_diagnose: class170
    verb = 'diagnose'

    sdesc = "diagnose"

    action(arg1) = { Me.prop167; }
;

obj404_hyperventilate: class82
    verb = 'hyperventilate'

    sdesc = "hyperventilate"

    action(arg1) = {
        if (obj20.prop491) {
            "Not a very good idea while you're under water.  ";
        } else {
            "You take a few quick, shallow breaths, rapidly inhaling and exhaling.   Eventually you start to feel dizzy, and stop.  ";
        }
    }
;

obj405_look_up: class82
    verb = 'look up'

    sdesc = "look up"

    action(arg1) = {
        local local1 = fun227(Me);

        local1.prop692;
    }
;

obj406_win: class170
    verb = 'win'

    sdesc = "win"

    action(arg1) = { fun201(Me); }
;

obj407_gimme: class170
    verb = 'gimme'

    sdesc = "gimme"

    validDo(arg1, arg2, arg3) = { return arg3 == 1; }

    validDoList = nil

    doAction = 'Action164_gimme'
;

obj408_send_me: class170
    verb = 'sendme'

    sdesc = "send me"

    validDo(arg1, arg2, arg3) = { return arg3 == 1; }

    validDoList = nil

    doAction = 'Action165_send_me'
;

obj409_ride: class82
    verb = 'ride'

    sdesc = "ride"

    doAction = 'Action166_ride'
;

fun410: function(arg1) {
    local local1, local2, local3, local4;

    local1 = length(arg1);
    local2 = 1;
    local4 = 0;
  label231436:
    if (local2 <= local1) {
        local3 = arg1[local2];
        if (local3.prop649 != 0) {
            local4 = local4 + local3.prop649;
        }
        if (length(local3.contents)) {
            local4 = local4 + fun410(local3.contents);
        }
        local2 = local2 + 1;
        goto label231436;
    }
    return local4;
}

fun411: function(arg1) {
    if (!obj20.prop491 || Me.prop875) {
        return nil;
    }
    "\bPressure starts to build in your lungs.  ";
    setfuse(&fun412, 1, arg1);
    return nil;
}

fun412: function(arg1) {
    if (!obj20.prop491 || Me.prop875) {
        return nil;
    }
    "\bThe pressure turns into an itch, which quickly becomes a burning heat.  ";
    setfuse(&fun413, 1, arg1);
    return nil;
}

fun413: function(arg1) {
    if (!obj20.prop491 || Me.prop875) {
        return nil;
    }
    "\bThe burning pain in your lungs grows stronger, triggering the first feelings  of panic and setting your heart racing.  ";
    setfuse(&fun414, 1, arg1);
    return nil;
}

fun414: function(arg1) {
    local local1 = Me.location;

    if (!obj20.prop491 || Me.prop875) {
        return nil;
    }
    "\bYour lungs are on fire and blue blood pounds in your veins, setting off waves of panic.  You can control yourself no longer!  Instinct takes over and sends you kicking and clawing your way to the surface.  ";
    if (local1 != obj466___Underwater_____dri && local1 != obj467___Underwater_____dri && local1 != obj468___Underwater_____dri) {
        "You rise and rise and can't climb fast enough and finally, just when you don't think you're going to make it, you break the surface.  ";
    }
    "You sputter and gasp, inhaling deeply of the fresh salty air.  After a few moments, the fire in your lungs subsides and calm is restored to your pounding veins.  ";
    obj20.prop489 = Me.location;
    Me.moveInto(Me.location.prop518);
    obj20.prop491 = nil;
}

fun415: function(arg1) {
    local local1, local2, local3;

    if (length(arg1.prop502) && isclass(arg1, class215)) {
        arg1 = arg1.prop502[1];
    }
    if (length(arg1.prop502) && arg1 != obj225_goggles) {
        local1 = true;
    }
    local2 = arg1.prop710;
    local3 = obj228.prop698[rand(length(obj228.prop698))];
    if (local3 == Me.location || local3 == Me.location.location) {
        "\b\^<<arg1.prop514>> ";
        if (local1 && local2 != nil) {
            "and <<local2.prop514>>, tied together by <<arg1.prop502[1].prop514>>, ";
        } else if (local1) {
            "tied to <<arg1.prop502[1].prop514>> ";
        }
        "wash<<(local2 == nil ? "es" : "")>> up onto the shore.  ";
    }
    arg1.moveInto(local3);
    arg1.prop507 = nil;
    if (local2) {
        arg1.prop710.prop507 = nil;
    }
    return nil;
}

fun416: function(arg1) {
    if (isclass(arg1.location, obj265)) {
        if (arg1.prop179(Me)) {
            "\b\^<<arg1.prop513>> starts drifting slowly toward shallower water";
            if (arg1.prop710 != nil) {
                ", towing <<arg1.prop710.prop513>> behind it";
            }
            ".  ";
        }
        setfuse(&fun417, 1, arg1);
    }
    return nil;
}

fun417: function(arg1) {
    if (isclass(arg1.location, obj265)) {
        if (arg1.prop179(Me)) {
            "\b\^<<arg1.prop513>> continues to drift toward shallow water";
            if (arg1.prop710 != nil) {
                ", towing <<arg1.prop710.prop513>> behind it";
            }
            ".  ";
        }
        setfuse(&fun418, 1, arg1);
    }
    return nil;
}

fun418: function(arg1) {
    if (isclass(arg1.location, obj265)) {
        if (arg1.prop179(Me)) {
            "\b\^<<arg1.prop513>> drifts out of reach into shallower water";
            if (arg1.prop710 != nil) {
                ", towing <<arg1.prop710.prop513>> behind it";
            }
            ".  ";
        } else if (Me.location == arg1.location.prop839) {
            "\b\^<<arg1.prop514>> floats into view";
            if (arg1.prop710 != nil) {
                ", towing <<arg1.prop710.prop514>> behind it";
            }
            ".  ";
        }
        arg1.moveInto(arg1.location.prop839);
        setfuse(&fun419, 1, arg1);
    }
    return nil;
}

fun419: function(arg1) {
    if (isclass(arg1.location, obj266)) {
        if (arg1.prop179(Me)) {
            "\b\^<<arg1.prop513>> starts drifting slowly towards shore";
            if (arg1.prop710 != nil) {
                ", towing <<arg1.prop710.prop513>> behind it";
            }
            ".  ";
        }
        setfuse(&fun420, 1, arg1);
    }
    return nil;
}

fun420: function(arg1) {
    if (isclass(arg1.location, obj266)) {
        if (arg1.prop179(Me)) {
            "\b\^<<arg1.prop513>> continues to drift towards shore";
            if (arg1.prop710 != nil) {
                ", towing <<arg1.prop710.prop513>> behind it";
            }
            ".  ";
        }
        setfuse(&fun421, 1, arg1);
    }
    return nil;
}

fun421: function(arg1) {
    if (isclass(arg1.location, obj266)) {
        if (arg1.prop179(Me)) {
            "\b\^<<arg1.prop513>> drifts out of reach onto the shore";
            if (arg1.prop710 != nil) {
                ", towing <<arg1.prop710.prop513>> behind it";
            }
            ".  ";
        } else if (Me.location == arg1.location.prop839) {
            "\b\^<<arg1.prop514>> drifts up onto the shore";
            if (arg1.prop710 != nil) {
                ", towing <<arg1.prop710.prop514>> behind it";
            }
            ".  ";
        }
        arg1.moveInto(arg1.location.prop839);
    }
    return nil;
}

class class422_generic_substance: class42, class28
    noun = 'substance'

    adjective = 'generic'

    sdesc = "generic substance"

    prop504 = nil

    prop699 = nil

    prop140 = 0

    prop141 = 0

    prop508 = 0

    prop840 = 1

    isVisible(arg1) = { return length(self.prop841(arg1)) > 0; }

    prop179(arg1) = { return length(self.prop842(arg1)) > 0; }

    prop841(arg1) = {
        local local1, local2, local3, local4, local5;

        local5 = [];
        local3 = fun30(arg1) + fun30(arg1.location) + obj20.prop148;
        local1 = 1;
        local2 = length(local3);
      label234632:
        if (local1 <= local2) {
            local4 = local3[local1];
            if (isclass(local4, class218) && local4.isVisible(arg1) && local4.prop501 && local4.prop504 == self.prop504) {
                local5 += local4;
            }
            local1++;
            goto label234632;
        }
        return local5;
    }

    prop842(arg1) = {
        local local1, local2, local3, local4, local5;

        local5 = [];
        local3 = fun18(arg1) + fun18(arg1.location) + obj20.prop148;
        local1 = 1;
        local2 = length(local3);
      label234794:
        if (local1 <= local2) {
            local4 = local3[local1];
            if (isclass(local4, class218) && local4.prop179(arg1) && local4.prop501 && local4.prop504 == self.prop504) {
                local5 += local4;
            }
            local1++;
            goto label234794;
        }
        return local5;
    }

    prop806(arg1, arg2) = {
        local local1, local2, local3;

        local1 = self.prop842(arg1);
        if (length(local1) == 0) {
            local1 = self.prop843(fun18(arg1));
        }
        if (length(local1) == 0) {
            if (arg2 == 'held') {
                "You're not carrying anything that contains any <<self.sdesc>>.  ";
            } else {
                "There's nothing nearby with any <<self.sdesc>> in it.  ";
            }
            exit;
        }
        if (arg2 == 'held') {
            local2 = 1;
            local3 = length(local1);
          label235130:
            if (local2 <= local3) {
                if (local1[local2].location == Me) {
                    local1 = local1[1] = local1[local2];
                } else {
                    local2++;
                    goto label235130;
                }
            }
        } else if (length(local1) > 1) {
            local2 = 1;
            local3 = length(local1);
          label235226:
            if (local2 <= local3) {
                if (isclass(local1[local2], class431)) {
                    local1 = local1[1] = local1[local2];
                }
                local2++;
                goto label235226;
            }
        }
        return local1[1];
    }

    prop843(arg1) = {
        local local1, local2, local3;

        local3 = [];
        local1 = 1;
        local2 = length(arg1);
      label235332:
        if (local1 <= local2) {
            if (isclass(arg1[local1], class431)) {
                local3 = arg1[local1];
                goto label235425;
            } else if (isclass(arg1[local1], class218) && arg1[local1].prop501) {
                local3 += arg1[local1];
            }
            local1++;
            goto label235332;
        }
      label235425:
        return local3;
    }

    verDoAction171_fill(arg1) = { "You can't fill <<self.thedesc>> with anything.  "; }

    doAction171_fill(arg1) = { }

    doAction122_drop(arg1) = { self.doAction167_empty(arg1); }

    verDoAction167_empty(arg1) = { }

    doAction167_empty(arg1) = {
        local local1;

        local1 = self.prop806(arg1, 'held');
        if (isclass(local1, class431)) {
            "You're not carrying anything that contains any <<self.sdesc>>.  ";
        } else {
            local1.doAction167_empty(arg1);
        }
    }

    verDoAction169_empty_on(arg1, arg2) = { }

    doAction169_empty_on(arg1, arg2) = {
        local local1;

        local1 = self.prop806(arg1, 'held');
        local1.doAction169_empty_on(arg1, arg2);
    }

    verDoAction168_empty_in(arg1, arg2) = { }

    doAction168_empty_in(arg1, arg2) = {
        local local1;

        local1 = self.prop806(arg1, 'held');
        arg2.doAction172_fill_from(arg1, local1);
    }

    verDoAction170_empty_from(arg1, arg2) = {
        if (arg2 != nil && arg2.prop504 != self.prop504) {
            "/^<<arg2.thedesc>> doesn't contain any <<self.sdesc>>.  ";
        } else {
            arg2.verDoAction167_empty(arg1);
        }
    }

    doAction170_empty_from(arg1, arg2) = { arg2.doAction167_empty(arg1); }

    verDoAction24(arg1) = { "You need to specify an empty container in which to put it. "; }

    verDoAction19_out(arg1, arg2) = {
        if (arg2 != nil && arg2.prop504 != self.prop504) {
            caps();
            arg2.thedesc;
            " doesn't contain any <<self.sdesc>>.  ";
        } else {
            self.verDoAction24(arg1);
        }
    }

    verDoAction13_in(arg1, arg2) = { }

    doAction13_in(arg1, arg2) = {
        if (self.prop802.location == Me.location) {
            arg2.doAction172_fill_from(arg1, self.prop802);
        } else {
            "You'll have to specify something from which to fill it.  ";
        }
    }

    verIoAction173_fill_with(arg1) = { }

    ioAction173_fill_with(arg1, arg2) = { self.doAction13_in(arg1, arg2); }

    verIoAction172_fill_from(arg1) = { }

    ioAction172_fill_from(arg1, arg2) = { self.doAction13_in(arg1, arg2); }

    verIoAction169_empty_on(arg1) = { self.prop850; }

    ioAction169_empty_on(arg1, arg2) = {
        if (self.prop802.location == Me.location) {
            self.prop802.ioAction169_empty_on(arg1, arg2);
        } else {
            self.prop803.ioAction169_empty_on(arg1, arg2);
        }
    }

    verIoAction168_empty_in(arg1) = { self.prop850; }

    ioAction168_empty_in(arg1, arg2) = {
        if (self.prop802.location == Me.location) {
            self.prop802.ioAction168_empty_in(arg1, arg2);
        } else {
            "You can't do that with <<self.thedesc>> you're carrying.  ";
            self.prop851;
            self.prop803.ioAction168_empty_in(arg1, arg2);
        }
    }

    prop850 = {
        if (self.prop802.location != Me.location && self.prop803.location != Me.location) {
            self.prop851;
            "Unfortunately, you can't reach <<self.prop802.thedesc>> from here.  ";
        }
    }

    prop851 = { "Since you can't do that with the <<say(self.prop801)>> you're carrying,  I'll assume that by \"<<say(self.prop801)>>,\" you meant <<self.prop802.thedesc>> .  "; }

    verIoAction13_in(arg1) = { self.prop850; }

    ioAction13_in(arg1, arg2) = {
        if (self.prop802.location == Me.location) {
            self.prop802.ioAction13_in(arg1, arg2);
        } else {
            "You need to specify a container in which to put it.  ";
        }
    }

    verIoAction121_drop_on(arg1) = { self.verIoAction13_in(arg1); }

    ioAction121_drop_on(arg1, arg2) = { self.ioAction13_in(arg1, arg2); }

    verIoAction53_on(arg1) = { self.verIoAction13_in(arg1); }

    ioAction53_on(arg1, arg2) = { self.ioAction13_in(arg1, arg2); }

    prop548(arg1) = { self.verIoAction13_in(arg1); }

    prop549(arg1, arg2) = { self.ioAction13_in(arg1, arg2); }

    verDoAction100_bury(arg1) = { "What would be the point of that?  "; }
;

obj423_ocean: obj430, class431, class28, class33
    noun = 'ocean'

    prop149 = "in"

    prop150 = "out of"

    thedesc = "the ocean"

    prop504 = 'salt water'

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop807 = { "He gazes longingly out to sea.  \"Aye.  My life and my love.\"  "; }

    prop808 = { "He looks out toward the horizon.  \"Yeah, it's beautiful.  I love watching ships  disappear over the edge.  I just wish I could get up early enough to see the sun  rise.  Not much of a morning person, I guess.\"  "; }

    location = {
        local local1 = fun227(Me);

        if (isclass(local1, obj216)) {
            return local1;
        } else {
            return nil;
        }
    }

    locationOK = true

    prop167 = "The ocean stretches out around you.  "

    verDoAction113_drink(arg1) = { }

    doAction113_drink(arg1) = { "Enjoy spending time in the bathroom, do you?  "; }

    verIoAction53_on(arg1) = { }

    ioAction53_on(arg1, arg2) = {
        if (arg2 == obj212_brick) {
            obj212_brick.doAction122_drop(arg1);
        } else {
            Me.location.prop152(arg2);
        }
    }

    verIoAction13_in(arg1) = { }

    ioAction13_in(arg1, arg2) = {
        if (arg2 == obj212_brick) {
            obj212_brick.doAction122_drop(arg1);
        } else {
            Me.location.prop152(arg2);
        }
    }

    verDoAction38_sit_on(arg1) = {
        local local1 = Me.location;

        if (isclass(local1, obj217) && local1.prop687 == nil) {
            obj55_ground.verDoAction38_sit_on(arg1);
        } else if (isclass(local1, obj265) || isclass(local1, obj217)) {
            "You cross your legs and hang suspended in the water for awhile.  ";
        }
    }

    doAction38_sit_on(arg1) = { obj55_ground.doAction38_sit_on(arg1); }

    verDoAction39_lie_on(arg1) = {
        local local1 = Me.location;

        if (isclass(local1, obj217) && local1.prop687 == nil) {
            obj55_ground.verDoAction39_lie_on(arg1);
        } else if (isclass(local1, obj265) || isclass(local1, obj217)) {
            "You set yourself parallel to the ocean floor and drift in the surging tide.  ";
        }
    }

    doAction39_lie_on(arg1) = { obj55_ground.doAction39_lie_on(arg1); }

    doSynonym('Action141_jump_into') = 'Action116_swim_in'

    verDoAction141_jump_into(arg1) = { }

    doAction141_jump_into(arg1) = {
        local local1 = Me.location;

        if (isclass(local1, obj266) || local1 == obj339___Inside_the__Octopu) {
            "You splash around in the water for awhile.  Ah, how it brings back the giddy joys of childhood.  ";
        } else if (isclass(local1, obj265) || isclass(local1, obj217)) {
            "You propel yourself through the water, skimming a couple of bodylengths before coming to a halt.  ";
        }
    }

    verDoAction120_drown_in(arg1) = { }

    doAction120_drown_in(arg1) = { Me.doAction118_drown(arg1); }

    verIoAction119_drown_in(arg1) = { }

    ioAction119_drown_in(arg1, arg2) = { arg2.doAction118_drown(arg1); }

    verDoAction86(arg1) = {
        if (!arg1.prop125(obj240_sieve)) {
            "You don't have anything appropriate with which to sift.  ";
        }
    }

    doAction86(arg1) = { self.doAction87_with(arg1, obj240_sieve); }

    verDoAction87_with(arg1, arg2) = { }

    doAction87_with(arg1, arg2) = {
        if (isclass(arg1.location, obj217)) {
            "You wave the sieve through the water, but capture nothing of any interest.  ";
        } else {
            "You scoop a few handfuls of ocean water through the sieve, but find nothing of interest.  ";
        }
    }
;

obj424_ocean_tide_surf: class290
    noun = 'ocean' 'tide' 'surf'

    thedesc = "the ocean"

    location = {
        local local1 = Me.location;

        if (obj423_ocean.location != local1) {
            return local1;
        } else {
            return nil;
        }
    }

    locationOK = true

    verDoAction115_listen_to(arg1) = { }

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop807 = { return obj423_ocean.prop807; }

    prop808 = { return obj423_ocean.prop808; }

    prop527 = {
        local local1 = Me.location;

        if (local1 == obj363___In_the_Diving_Bell) {
            "The sounds of the surf are muffled by the bell's thick metal shell.  ";
        } else if (local1 == obj199___Beach_Path__) {
            "You can hear the gentle fizz and hiss of the surf emanating from beyond  the dunes.  ";
        } else {
            "You can hear the gentle fizz and hiss of the surf.  ";
        }
    }

    prop167 = {
        local local1 = fun227(Me);

        if (local1 == obj199___Beach_Path__ || local1 == obj363___In_the_Diving_Bell) {
            "The water is out of sight beyond the dunes to the east, but you can  hear the gentle surf, and smell the tangy odor of brine.  ";
        } else if (local1 == obj432___End_of_Pier__) {
            "Here at the pier's end, the ocean completely surrounds you,  shallowing  in towards shore to the west, and sprawling east to the farthest horizon.  ";
        } else if (local1 == obj433___On_the_Canopy__) {
            "From up here on the canopy of the pavilion, it seems as though the ocean spreads  out below you forever.  Far off on the horizon is a tiny speck of a ship,  passing by on its way to the next continent.  ";
        } else if (local1 == obj381___Grotto__) {
            "All you can see from here is the tiny inlet that bends around the grotto to the  open sea.  ";
        } else {
            "Below you, the gentle surf breaks in tiny wavelets upon the shore, before  commencing its vast sprawl towards the eastern horizon.  ";
        }
    }

    doSynonym('Action141_jump_into') = 'Action116_swim_in'

    verDoAction141_jump_into(arg1) = {
        if (fun227(Me) != obj432___End_of_Pier__) {
            "It's too far away.  ";
        }
    }

    doAction141_jump_into(arg1) = { class434_railing.doAction140_jump_over(arg1); }

    verIoAction169_empty_on(arg1) = { }

    ioAction169_empty_on(arg1, arg2) = { self.ioAction168_empty_in(arg1, arg2); }

    verIoAction168_empty_in(arg1) = { }

    ioAction168_empty_in(arg1, arg2) = {
        local local1 = Me.location;

        if (local1.prop638(arg1)) {
            exit;
        } else if (local1 == obj432___End_of_Pier__) {
            arg2.doAction169_empty_on(arg1, self);
        } else {
            "Unfortunately, you can't reach the ocean from here.  ";
        }
    }

    verIoAction13_in(arg1) = { }

    ioAction13_in(arg1, arg2) = {
        local local1 = Me.location, local2, local3, local4, local5, local6;

        if (local1.prop638(arg1)) {
            exit;
        }
        if (isclass(local1, obj435) || local1 == obj432___End_of_Pier__) {
            if (arg2 == obj212_brick) {
                if (local1 == obj432___End_of_Pier__) {
                    obj212_brick.doAction13_in(arg1, self);
                } else {
                    "Unfortunately, you can't reach the ocean from here.  ";
                }
            } else if (arg2 == obj436_conch_shell || obj436_conch_shell.location == arg2) {
                obj436_conch_shell.prop811;
                exit;
            } else if (length(arg2.prop502) > 0 && !isclass(arg2, class215) && arg2 != obj225_goggles) {
                arg2 = arg2.prop502[1];
            }
            local3 = length(arg2.prop502);
            if (local3 > 0 && arg2 != obj225_goggles) {
                local2 = true;
            }
            if (local3 > 0) {
                local4 = arg2.prop502[1];
            }
            if (local3 > 1) {
                local5 = arg2.prop502[2];
            }
            local6 = fun410(arg2.prop515);
            "You heave <<arg2.thedesc>>";
            if (local3 > 1) {
                ", <<local5.thedesc>>";
            }
            if (local2) {
                " and <<local4.thedesc>>";
            }
            " into the ocean, where <<(local2 ? "they" : "it")>> ";
            if (local6 > 0) {
                "land<<(local2 ? "" : "s")>> with a light splash and float<<(local2 ? "" : "s")>> out of sight.  ";
            } else {
                "hit<<(local2 ? "" : "s")>> the water with a splash and sink<<(local2 ? "" : "s")>>  beneath the waves.  ";
            }
            arg2.moveInto(nil);
            if (arg2 == obj426_shrimp && length(arg2.prop502) == 0) {
                obj426_shrimp.prop812;
                exit;
            }
            if (isclass(arg2, class215) && local3 > 0) {
                arg2 = arg2.prop502[1];
            }
            setfuse(&fun415, 5, arg2);
            arg2.prop507 = true;
            if (arg2.prop710) {
                arg2.prop710.prop507 = true;
            }
        } else {
            "Unfortunately, you can't reach the ocean from here.  ";
        }
    }

    verIoAction121_drop_on(arg1) = { self.verIoAction13_in(arg1); }

    ioAction121_drop_on(arg1, arg2) = { self.ioAction13_in(arg1, arg2); }

    verIoAction53_on(arg1) = { self.verIoAction13_in(arg1); }

    ioAction53_on(arg1, arg2) = { self.ioAction13_in(arg1, arg2); }

    prop548(arg1) = { self.verIoAction13_in(arg1); }

    prop549(arg1, arg2) = { self.ioAction13_in(arg1, arg2); }

    prop673(arg1) = { }

    prop674(arg1, arg2) = { self.ioAction13_in(arg1, arg2); }

    verDoAction120_drown_in(arg1) = { }

    doAction120_drown_in(arg1) = { Me.doAction118_drown(arg1); }

    verIoAction119_drown_in(arg1) = { }

    ioAction119_drown_in(arg1, arg2) = { arg2.doAction118_drown(arg1); }

    verDoAction44_from(arg1, arg2) = {
        if (arg2 != obj428_drinking_fountain && arg2 != obj429_public_shower) {
            pass verDoAction44_from;
        }
    }

    doAction44_from(arg1, arg2) = { arg2.verDoAction36_turn_on(arg1); }
;

obj425_single_mite: class42
    noun = 'bug' 'creature' 'insect' 'crustacean' 'mite'

    adjective = 'single' 'sand' 'tiny'

    prop508 = 0

    prop141 = 0

    prop140 = 0

    location = nil

    sdesc = "single mite"

    prop167 = { "It's magnified slightly by the water in the bottle, but it's still too tiny to see  much detail.  Whatever it is, it's got six legs.  Or is it eight?  In fact, all six  (or eight) legs are spinning crazily as it propels itself swims towards the  bottom of the bottle.  "; }

    prop901 = { obj346.prop992; }

    verDoAction24(arg1) = { "You don't seem able to fish the mite out of the bottle.  "; }

    doSynonym('Action13_in') = 'Action121_drop_on'

    verDoAction13_in(arg1, arg2) = {
        if (obj457_bottle.location != Me) {
            "You don't have the bottle.  ";
        } else if (arg2 == obj457_bottle) {
            "It's already in the bottle!  ";
        } else if (arg2 != obj458_bottle_bottles) {
            "You can't fish it out of the bottle.  ";
        }
    }

    doAction13_in(arg1, arg2) = { obj458_bottle_bottles.ioAction13_in(arg1, self); }

    prop991 = {
        if (obj425_single_mite.location == obj457_bottle) {
            if (obj457_bottle.prop179(Me)) {
                "\bThe mite continues its furious paddling.  It's almost to the bottom of the  bottle.  ";
            }
            notify(obj425_single_mite, &prop993, 1);
            obj20.prop484 = ['hurried'];
        }
    }

    prop993 = {
        if (obj425_single_mite.location == obj457_bottle) {
            if (obj457_bottle.prop179(Me)) {
                "\bThe mite has reached the bottom.  In one swift second, it melts through  the glass and disappears from sight, leaving behind only a tiny drop of  molten glass that cools instantly, resealing the hole from which the mite  escaped.  ";
            }
            obj425_single_mite.moveInto(nil);
        }
    }

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = { return class245.prop808; }

    prop807 = { return class245.prop807; }
;

obj426_shrimp: class220, class49, class685, class253
    noun = 'crawdaddy' 'crawdad' 'shrimp'

    prop508 = 1

    prop1018 = nil

    location = nil

    sdesc = "shrimp"

    prop167 = { "Its tiny legs still wriggle with life.  <<self.prop717>>"; }

    verDoAction112_eat(arg1) = {
        if (obj426_shrimp.location != Me) {
            "You're not holding the shrimp.  ";
        } else if (length(self.prop502)) {
            "Not while it's tied to <<self.prop502[1].thedesc>>.  ";
        } else {
            pass verDoAction112_eat;
        }
    }

    doAction112_eat(arg1) = {
        if (self.prop1018) {
            "You pop the wriggling shrimp into your mouth and crunch down on it.  Tasty!  ";
        } else {
            "You look with trepidation at the live, wriggling shrimp.  Well, if it's good enough for sushi eaters... You pop the shrimp into your mouth and crunch down on it, shell, legs and all.  You're struck with a brief sense of nausea that passes as quickly as it came.  The  shrimp's juices roll over your tongue and trickle down your throat, at the same both time sharply salty and subtly sweet. In the end, you decide it's not that bad.  Not that bad at all.  ";
            self.prop1018 = true;
            obj20.prop484 = ['surprised', 'satisfied'];
        }
        self.moveInto(nil);
        obj426_shrimp.prop812;
    }

    prop812 = {
        obj426_shrimp.moveInto(nil);
        unnotify(obj426_shrimp, &prop901);
        notify(obj305_the_old_man, &prop1015, 4);
    }

    prop914 = { return obj302_length_of_rope.prop931(self); }

    prop1019 = "The shrimp shows renewed life as it makes contact with the salt water.  "

    prop557 = {
        local local1, local2, local3;

        self.prop938 = Me.location;
        local1 = self.location;
        if (length(self.prop502)) {
            local2 = true;
        }
        local3 = self.prop710;
        if (local2) {
            self.prop1019;
        } else if (local1 == Me) {
            self.prop1019;
        } else if (isclass(local1, class218) && (isclass(self.prop938, obj265) || isclass(self.prop938, obj217) || isclass(self.prop938, obj266) && (local1.location != Me || local1.prop710 == obj297_ankle)) || self.prop938 == obj55_ground && isclass(obj55_ground.location, obj266)) {
            "The shrimp darts out of the bottle and disappears into the ocean.  ";
            obj426_shrimp.prop812;
        } else if (isclass(local1, class218)) {
            self.prop1019;
        }
        return true;
    }

    prop901 = {
        if (self.prop179(Me) && rand(3) == 1) {
            self.prop934;
        }
    }

    prop934 = {
        local local1 = self.location;

        if (length(self.prop502)) {
            "\bThe shrimp wriggles at the end of <<self.prop502[1].thedesc>>.  ";
        } else if (local1 == Me) {
            "\bThe shrimp wriggles in your grasp.  ";
        } else if (isclass(local1, class218)) {
            if (local1.prop504 == 'salt water') {
                "\bThe shrimp darts around in the water filled bottle.  ";
            } else {
                "\bThe shrimp wriggles in the bottle.  ";
            }
        } else if (local1 == obj609_pocket_of_your_short) {
            "\bThe shrimp tickles your thigh as it wriggles in your pocket.  ";
        } else if (local1 == Me.location) {
            "\bThe shrimp wriggles on the ground.  ";
        }
    }

    ioAction121_drop_on(arg1, arg2) = {
        if (self.prop655(arg1, arg2)) {
            exit;
        } else {
            obj212_brick.prop500;
            "You push the brick over eagerly to see the results of your vandalism.   Wow!  The shrimp has been pulverized into a fine paste.  ";
            obj686_paste.moveInto(self.location);
            self.prop657;
            self.moveInto(nil);
            self.prop812;
        }
    }

    prop1012 = {
        if (self.location == obj432___End_of_Pier__) {
            "The old man shrugs with disgust.  \"Go ahead and take it if you want it.\"  ";
        } else {
            "The old man just shrugs with disgust.  ";
        }
    }

    prop505 = [obj305_the_old_man]

    prop807 = "He grunts in disgust.   \"Danged shrimp keep catching up my line.  They'll get tied up in anything given  half the chance.\"  "
;

obj427___By_the_Snack_Bar__: obj474
    noun = 'loc-snackbar'

    prop498 = {
        if (obj222_the_vendor.location != self) {
            return inherited.prop498;
        } else {
            return [];
        }
    }

    prop155(arg1) = {
        if (obj222_the_vendor.location == self) {
            fun206(Me.contents);
            if (self.prop293) {
                notify(obj222_the_vendor, &prop901, 0);
            } else {
                notify(obj222_the_vendor, &prop902, 1);
            }
        }
        pass prop155;
    }

    prop230(arg1) = {
        if (obj222_the_vendor.location == self) {
            unnotify(obj222_the_vendor, &prop901);
        }
        pass prop230;
    }

    prop693 = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            "Unfortunately, your free wheeling attitude about public nudity  does not go unnoticed.  The vendor glances up from his cleaning  and seems only mildly surprised to see you in your birthday suit.   He grins wryly and says \"Way to go, hot buns.  But this isn't a  nude beach, y'know.\"  You hastily redress, cheeks flushed with  embarrassment (the ones on your face, that is).  ";
        } else {
            inherited.prop693;
        }
    }

    sdesc = "\(By the Snack Bar\)"

    prop167 = {
        "A quaint little snack bar nestles beside the brick enclosure,  while the rest of the pavilion sprawls out to the north. A hand-painted sign above the counter advertises boiled peanuts.  ";
        if (obj222_the_vendor.location != self) {
            "The vendor <<(Me.prop903 ? "has" : "seems to have")>>  gone home for the night.  ";
        }
        "\n\tBehind the counter is an industrial boiler.  ";
    }

    prop666 = { "You can go north, to the main part of the pavilion.  "; }

    prop692 = { return obj476_Tybrisa_Pavilion_s_c.prop167; }

    prop302 = {
        fun204('north');
        return obj269___Pavilion__;
    }

    prop308 = { return self.prop302; }

    prop309 = { return self.prop302; }

    prop307 = {
        "If you want to jump out of the pavilion, just say so.  Otherwise, there is no  way down.  ";
        return nil;
    }

    prop305 = "The brick faced enclosure blocks your way.  "

    prop303 = "The railing prevents you from stepping off the pavilion.  "

    prop311 = { return self.prop303; }

    prop310 = { return self.prop303; }
;

obj428_drinking_fountain: obj442, class33
    noun = 'basin' 'cabinet' 'handle' 'fountain' 'spigot'

    adjective = 'metal' 'water' 'drinking' 'silver'

    sdesc = "drinking fountain"

    location = obj432___End_of_Pier__

    prop167 = { "It's a waist high silver cabinet with a metal basin on top, just like all the other  fountains you've ever seen.  "; }

    verDoAction36_turn_on(arg1) = { "You turn the handle, but nothing happens.   Perhaps the water main has been shut off for the night.  "; }

    verDoAction37_turn_off(arg1) = { "It's already turned off.  "; }

    verIoAction172_fill_from(arg1) = { }

    ioAction172_fill_from(arg1, arg2) = { self.verDoAction36_turn_on(arg1); }

    verIoAction173_fill_with(arg1) = { }

    ioAction173_fill_with(arg1, arg2) = { self.verDoAction36_turn_on(arg1); }

    verIoAction44_from(arg1) = { }

    ioAction44_from(arg1, arg2) = {
        if (arg2 != obj288_salt_water && arg2 != obj424_ocean_tide_surf && arg2 != obj291_ocean_water) {
            "The fountain doesn't seem to contain that.  ";
        } else {
            self.verDoAction36_turn_on(arg1);
        }
    }

    verDoAction114_drink_from(arg1) = { self.verDoAction36_turn_on(arg1); }

    verDoAction113_drink(arg1) = { self.verDoAction36_turn_on(arg1); }

    prop831(arg1) = { "The <<say(arg1)>> disappears down the fountain's drain.  "; }
;

obj429_public_shower: class33, class220
    noun = 'shower' 'pipe'

    adjective = 'public'

    prop708 = 9

    sdesc = "public shower"

    location = obj199___Beach_Path__

    prop167 = { "It's really just a tall water pipe with a shower head on top of it. Not much in the way of privacy, but it does help people rinse the sand from themselves.  <<self.prop717>>"; }

    verDoAction36_turn_on(arg1) = { "You pull the handle, but nothing happens.   Perhaps the water main has been shut off for the night.  "; }

    verDoAction37_turn_off(arg1) = { "The shower's not running.  "; }

    verDoAction95_tap(arg1) = { }

    doAction95_tap(arg1) = { "The pipe resounds with a deep \(thrumm\), which vibrates along its length.  "; }

    verDoAction24(arg1) = { self.verDoAction36_turn_on(arg1); }

    verIoAction172_fill_from(arg1) = { }

    ioAction172_fill_from(arg1, arg2) = { self.verDoAction36_turn_on(arg1); }

    verIoAction173_fill_with(arg1) = { }

    ioAction173_fill_with(arg1, arg2) = { self.verDoAction36_turn_on(arg1); }

    verIoAction44_from(arg1) = { }

    ioAction44_from(arg1, arg2) = {
        if (arg2 != obj288_salt_water && arg2 != obj424_ocean_tide_surf && arg2 != obj291_ocean_water) {
            "The shower doesn't seem to contain that.  ";
        } else {
            self.verDoAction36_turn_on(arg1);
        }
    }

    verDoAction114_drink_from(arg1) = { self.verDoAction36_turn_on(arg1); }
;

obj430: class218
    prop819(arg1) = { }
;

class class431: class218
    prop869 = true

    prop293 = true

    verIoAction172_fill_from(arg1) = { }

    prop501 = true

    prop820 = { }

    prop821 = true

    verDoAction167_empty(arg1) = { "You might just as well try to pour the stars from the sky.  "; }

    verDoAction169_empty_on(arg1, arg2) = { self.verDoAction167_empty(arg1); }

    verDoAction168_empty_in(arg1, arg2) = { "How about just trying to take some <<say(self.prop504)>> instead of the  entire <<self.sdesc>>?  "; }

    verDoAction100_bury(arg1) = { "Now that's just plain ridiculous.  "; }

    verDoAction171_fill(arg1) = { "With what?  Bean dip?  Mayonnaise?  Cucumbers?  "; }

    verDoAction172_fill_from(arg1, arg2) = { "Somehow, deep in your bones, you can sense the gods of the elements  laughing at your attempt to fill <<self.thedesc>> with <<arg2.thedesc>>.  "; }

    verDoAction173_fill_with(arg1, arg2) = { self.verDoAction172_fill_from(arg1, arg2); }
;

obj432___End_of_Pier__: obj474
    noun = 'loc-endpier'

    sdesc = "\(End of Pier\)"

    prop167 = {
        "The pier ends here in a small rectangular shelter with a low wooden roof.   You imagine that, seen from overhead, it would look like a pendulum  hung from the face of the pavilion.  The railing surrounds you on all sides but to the west, where you can follow the pier back towards the pavilion.  A water fountain is tucked in one corner.  ";
        if (obj305_the_old_man.location != self) {
            "Apparently the old fisherman has gone home for the night.  ";
        }
    }

    prop666 = { "You can go west, back along the pier.  "; }

    prop692 = { return obj482_shelter_s_roof.prop167; }

    prop498 = {
        if (obj305_the_old_man.location != self) {
            return inherited.prop498;
        } else {
            return [];
        }
    }

    prop155(arg1) = {
        if (obj305_the_old_man.location == self && obj305_the_old_man.prop891) {
            if (obj465_conch_shell.location == nil) {
                notify(obj305_the_old_man, &prop904, 0);
            } else {
                notify(obj305_the_old_man, &prop901, 0);
            }
        }
        pass prop155;
    }

    prop230(arg1) = {
        if (obj305_the_old_man.location == self) {
            unnotify(obj305_the_old_man, &prop901);
        }
        pass prop230;
    }

    prop693 = {
        if (obj305_the_old_man.location == obj432___End_of_Pier__) {
            "Unfortunately, your free wheeling attitude about public nudity  does not go unnoticed.  The old man glances up from his rod  to see you skipping merrily about the pier in your birthday suit.   You fairly burn beneath the withering heat of his fiery gaze.   Something in his look suggests that if you don't get dressed, but  soon, he'll come right over and do it for you.  You speedily comply  with his silent demant and nearly trip over yourself in your haste  to put your clothes back on.  ";
        } else {
            inherited.prop693;
        }
    }

    prop307 = {
        "If you want to jump off the pier, you should say so.  Otherwise, there is no way  down.  ";
        return nil;
    }

    prop305 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "The light of the setting sun stabs into your eyes as you stagger out of the shade  of the small shelter, <<(obj212_brick.location == Me ? "brick" : "bucket")>> in hands.  \b";
        } else {
            "The light of the setting sun stabs into your eyes as you exit the shade of the small shelter.  You wait a moment for your eyes to adjust and then begin the long stroll down the pier.  \b";
        }
        return obj449___Middle_of_Pier__;
    }

    prop156 = "The railing prevents you from walking off the pier.  "
;

obj433___On_the_Canopy__: class31
    noun = 'loc-pavroof'

    prop485 = 'dizzy'

    prop682 = 'shingled'

    prop891 = nil

    sdesc = "\(On the Canopy\)"

    prop306 = {
        "And would you fly away to the rising moon?  ";
        return nil;
    }

    prop307 = {
        local local1;

        if (!obj480_maintenance_hatch.prop124) {
            "You'll have to open the trap door first.  ";
            return nil;
        } else {
            local1 = fun219(Me);
            if (local1 > 0) {
                "You'd better do something with ";
                if (local1 > 1) {
                    "the stuff";
                } else {
                    fun221(Me);
                }
                " you're carrying first.  You'll need both hands free to climb.  ";
                return nil;
            } else if (!Me.prop899 && !self.prop900) {
                "You bend down to climb through the trap door, but as you do, something  about the sunset as seen from this spot catches your eye.  ";
                self.prop900 = true;
                return nil;
            } else {
                "You swing your legs down over the edge of the trap door and lower  yourself through.  ";
                if (!Me.prop899) {
                    "But a strange twinge in the back of your mind suggests that  something has eluded you.  ";
                }
                "\b";
                return obj480_maintenance_hatch;
            }
        }
    }

    prop900 = nil

    prop156 = "You'd fall off the canopy!  It must be four stories down.  "

    prop167 = {
        "The view from the shingled canopy is quite lovely.  A deeply orange sun  is setting beyond your hotel, while the beach stretches like a golden ribbon to north and south.   To the east, the long pier stretches out towards the sprawling blue sea.  ";
        if (!Me.prop899) {
            "Perhaps it's your imagination, but the sunset seems curiously  enhanced from up here - more so than can be accounted for by the  height of the canopy.  ";
        } else {
            "Sadly, you can find no trace of your earlier vision, though the  sunset is still glorious.  ";
        }
        "\n\tThe maintenance hatch through which you climbed  <<(obj480_maintenance_hatch.prop124 ? "lies open against" : "is just a dark seam in")>> the canopy.  ";
        if (obj481_chink.location == nil) {
            "The shingle that nearly sent you sprawling seems to be loose.  ";
        } else {
            "One shingle has been removed, leaving a hollow chink by the hatch.  ";
        }
    }

    prop666 = {
        if (obj480_maintenance_hatch.prop124) {
            "You can go down through the trap door.  ";
        } else {
            "You can't go anywhere while the trap door is closed.  ";
        }
    }

    prop155(arg1) = {
        if (obj481_chink.location == nil) {
            "As you climb to your feet, a loose shingle rocks beneath your knee and nearly  sends you falling back through the hatch.  \b";
        }
        pass prop155;
    }
;

class class434_railing: class33, class220
    noun = 'handrail' 'braces' 'railing' 'banister' 'rail' 'brace'

    adjective = 'wooden' 'hand' 'wood'

    prop525 = "Its made of smooth, finished wood.  "

    sdesc = "railing"

    prop505 = [obj222_the_vendor]

    prop808 = "He shrugs, as if to say \"What's there to say about it?\"  "

    prop167 = {
        local local1 = fun227(Me);

        "It looks like many railings you've seen.  A long wooden handrail lies at waist height.   Below it at knee height lies a second rail.  Both are supported by vertical braces  placed every body length or so.  ";
        if (local1 == obj432___End_of_Pier__ || local1 == obj449___Middle_of_Pier__) {
            "The railing runs along the entire length of the pier, protecting you and your  fellow strollers from falling off the high pier.  ";
        } else if (local1 == obj427___By_the_Snack_Bar__) {
            "The railing surrounds the pavilion on every side, broken only by exits to the  east and west.  You're currently standing near the southernmost section of rail.  ";
        } else if (local1 == obj448_loc_benchroom) {
            "The railing surrounds the pavilion on every side, broken only by exits to the east  and west.  You're currently standing near the northernmost section of rail.  ";
        }
    }

    verIoAction49_off(arg1) = { }

    ioAction49_off(arg1, arg2) = { self.ioAction50_over(arg1, arg2); }

    verIoAction50_over(arg1) = { }

    ioAction50_over(arg1, arg2) = {
        local local1 = fun227(Me);

        if (local1 == obj432___End_of_Pier__) {
            obj424_ocean_tide_surf.ioAction13_in(arg1, arg2);
        } else {
            obj446_sandy_beach.ioAction13_in(arg1, arg2);
        }
    }

    verDoAction143_climb(arg1) = { self.verDoAction140_jump_over(arg1); }

    doAction143_climb(arg1) = { self.doAction140_jump_over(arg1); }

    verDoAction140_jump_over(arg1) = { }

    doAction140_jump_over(arg1) = {
        local local1, local2;

        local1 = Me.location;
        if (local1.prop638(arg1)) {
            exit;
        }
        switch (local1) {
          case obj448_loc_benchroom:
            local2 = obj450___Dry_Sand__North_of;
            goto label253567;
          case obj427___By_the_Snack_Bar__:
            local2 = obj451___Dry_Sand__South_of;
            goto label253567;
          case obj449___Middle_of_Pier__:
            local2 = obj287___Damp_Sand__North_o;
            goto label253567;
          case obj432___End_of_Pier__:
            if (Me.prop125(obj436_conch_shell)) {
                obj436_conch_shell.prop811;
                exit;
            }
            local2 = obj490___Deep_Water__Beneat;
            goto label253567;
        }
      label253567:
        if (obj222_the_vendor.location == local1) {
            "The vendor watches bemusedly as y";
            unnotify(obj222_the_vendor, &prop901);
        } else if (obj305_the_old_man.location == local1) {
            "The old man watches with flinty eyes as y";
            unnotify(obj305_the_old_man, &prop901);
        } else {
            "Y";
        }
        if (obj212_brick.location == Me) {
            "ou set the brick on the railing and then climb over, coming to rest on the outside of the railing with your heels hanging over open air. Suddenly, you realize you won't be able to turn around while carrying the brick.  You swallow and resign yourself to going off backwards.  A trembling spasm flits through your calves as you raise the brick.  You count three, take a deep breath, and... \(jump!\)  ";
            if (local2 != obj490___Deep_Water__Beneat) {
                "The floor of the pier flashes by, terrifyingly close to your face, and the ground rushes up faster than you could have imagined.  It seems you've only just jumped when \(wham!\)  Your feet hit the ground with a stinging impact that jars the brick from your hands and sends you sprawling backwards into the sand.  You sit, stunned, for several moments.  Thank god you and the brick parted ways - you realize that it would have mashed your feet into jelly had it landed on them.  After a time the stinging fades from your feet, if not from your memory, and you climb back to a vertical position.  ";
                self.prop918(local2);
            } else if (Me.prop876 && obj471_scuba_mask.location == Me) {
                obj20.prop491 = true;
                setfuse(&fun413, 2, true);
                local2 = obj397___Underwater_____dri;
                "You fall fast and hit the water, hard, with your face, throwing spray everywhere.  The weight of the brick drags you down fast, faster.  You fall down and down alongside an enormous dropping slope, and the water turns cold around you while the pressure pierces your ears with shards of glass.  You throw back your head and howl in pain, losing most of your air in a glittering swarm of bubbles, and still you fall into darkness.  But below you is a speck of light, and even as you fall from the sunlight, this new light gives you hope.  It grows as the sun diminishes, and though it gives off no warmth, it cheers you slightly.  The barbed pain in your ears subsides.  You fall further and further, and finally, you hit bottom with a dull thud that raises a cloud of mud.  When the mud clears you find you've somehow lost track of the brick.  ";
            } else if (Me.prop876 && obj225_goggles.location == Me) {
                "You fall fast and hit the water, hard, with your face, throwing spray everywhere.  The impact rips the thin strapped goggles from your head, letting stinging water into your unprotected eyes.  You reach up to protect your eyes, and lose the brick, which continues to fall, scraping against your knees on the way.  Now blinded and panicky, you flail upwards and break the surface sputtering and gasping.  It takes a few moments, but eventually your breathing returns to normal.  ";
                Me.prop876 = nil;
                obj225_goggles.prop128 = nil;
                obj225_goggles.moveInto(local2.prop698[rand(3)]);
            } else {
                "You fall fast and hit the water, hard, with your face, throwing spray everywhere.  The impact burns your face and sends stinging water into your unprotected eyes.  You reach up to protect your eyes, and lose the brick, which continues to fall, scraping against your knees on the way.  Now blinded and panicky, you flail upwards and break the surface sputtering and gasping.  It takes a few moments, but eventually your breathing returns to normal.  ";
            }
            self.prop918(local2);
        } else {
            "ou climb over the railing and maneuver yourself so that you're standing on your heels facing out with your toes hanging out over empty space.  You steel yourself, take a deep breath, and... \(jump!\)  ";
            if (local2 == obj490___Deep_Water__Beneat) {
                "You ready yourself for a neat cannonball, but the water rushes up faster than you anticipated.  You're still trying to bend your legs into position when \(splash!\)  You hit the water with a stinging impact that burns your buttocks and the backs of your thighs.  The water you displaced now comes rushing back in to slap  painfully at your ears<<(obj225_goggles.prop128 ? " and tear the goggles from your head" : "")>>.  Your momentum carries you several feet underwater, but you quickly rise, sputtering, to the surface.  ";
                if (obj225_goggles.prop128) {
                    Me.prop876 = nil;
                    obj225_goggles.prop128 = nil;
                    obj225_goggles.moveInto(local2.prop698[rand(3)]);
                }
            } else {
                "The ground rushes up faster than you could have imagined.  It seems you've only just jumped when \(wham!\)  Your feet hit the ground with a stinging impact that sends you sprawling forwards into the sand.  You lie, stunned, for several moments.  After a time the stinging fades from your feet, if not from your memory, and you climb back to a vertical position.  ";
            }
            self.prop918(local2);
        }
    }

    prop918(arg1) = {
        local local1, local2;

        if (obj212_brick.location == Me) {
            local2 = true;
            obj20.prop499 = 0;
            remdaemon(&fun203, 0);
            if (arg1 == obj490___Deep_Water__Beneat || arg1 == obj397___Underwater_____dri) {
                obj212_brick.moveInto(obj473_path);
                obj212_brick.prop131 = nil;
            } else {
                obj212_brick.moveInto(arg1);
            }
        }
        local1 = fun219(Me);
        if (arg1 == obj490___Deep_Water__Beneat || arg1 == obj397___Underwater_____dri) {
            Me.prop919;
        }
        if (local1 > 0) {
            "You seem to have lost <<(local1 > 1 ? "several" : "one")>> of your posessions in the fall.  ";
        }
        if (arg1 == obj490___Deep_Water__Beneat || arg1 == obj397___Underwater_____dri) {
            obj20.prop484 = ['exhilarated', 'invigorated'];
            outhide(true);
            Me.moveInto(arg1);
            fun267(Me.contents);
            if (local1 > 0) {
                fun207(Me, arg1);
            }
            outhide(nil);
            if (!Me.prop876) {
                Me.prop519(&prop877);
            }
        } else {
            Me.moveInto(arg1);
            if (local2) {
                Me.prop519(&prop920);
            } else {
                Me.prop519(&prop921);
            }
            Me.prop519(&prop922);
            if (local1 > 0) {
                fun207(Me, arg1);
            }
            obj20.prop484 = ['stunned', 'stunned'];
        }
        "\b";
        arg1.lookAround(true);
        if (obj307_flock_of_gulls.location == arg1) {
            notify(obj307_flock_of_gulls, &prop901, 0);
        }
        if (arg1 == obj397___Underwater_____dri) {
            "\bYour lungs are almost empty of air after your long descent.  You can already  feel burning tendrils of pain spreading through your chest.  ";
        }
    }

    prop915 = {
        "You tie the strap to a likely spot on the railing.  Unfortunately, ";
        if (length(obj255_white_rubber_strap.prop502) > 0) {
            obj255_white_rubber_strap.prop502[1].thedesc;
        } else {
            "it";
        }
        " doesn't hang low enough to be of any use, so you detach it from the railing again.  ";
    }

    prop914 = {
        "You tie the rope to a likely spot on the railing.  Unfortunately, ";
        if (length(obj302_length_of_rope.prop502) > 0) {
            obj302_length_of_rope.prop502[1].thedesc;
        } else {
            "it";
        }
        " doesn't hang low enough to be of any use, so you detach it from the railing again.  ";
    }

    verDoAction38_sit_on(arg1) = {
        if (arg1.location.prop638(arg1)) {
        } else {
            "You hop up and take a seat on the railing.  The hand rail is rather thin,  though, and finding yourself rather precariously balanced, you decide  to hop back down.  ";
        }
    }

    verDoAction54_stand_on(arg1) = {
        if (arg1.location.prop638(arg1)) {
        } else {
            "You climb up and put your knees on the railing, and then try to raise yourself  to a standing position.  The hand rail is quite thin, however, and you're  unable to achieve a comfortable balance.  Rather than risk falling to the  <<(Me.location == obj432___End_of_Pier__ ? "water" : "sand")>> below, you hop back down.  ";
        }
    }

    verDoAction121_drop_on(arg1, arg2) = { "The hand rail isn't very broad, and it occurs to you that <<arg2.thedesc>> might slide  off and into the <<(Me.location == obj432___End_of_Pier__ ? "water" : "sand")>> below.  "; }
;

obj435: obj284, obj472
    prop678 = nil

    prop685 = nil

    prop676 = true

    prop682 = 'wetsand'

    prop683 = { "The sand beneath your feet seems to be forged of dark bronze.  It's cold  and damp, and squishes between your toes.  "; }

    prop498 = {
        if (rand(4) == 1) {
            say(self.prop885[rand(length(self.prop885))]);
        }
    }

    prop885 = ['\bA tiny crab rushes from an invisible hole by your feet and scuttles away,  quickly disappearing into another, equally invisible hole.  ', '\bA thin crest of white foam glides up the beach and covers your toes before  gently receding.  ']

    prop886 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "Hard packed wet sand gives way to loose dry sand as you struggle up the  beach under the weight of the  <<(obj212_brick.location == Me ? "brick" : "pail full of water")>>.  ";
        } else {
            "Cool wet sand gives way to warm dry sand as you climb up the beach.  ";
        }
        "\b";
    }

    prop887 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "With scarcely any hesitation, you frog march into the water, hunched over,  <<(obj212_brick.location == Me ? "brick" : "full pail")>>  in hands.  Your feet sink deeply into the ocean bottom at every step.  ";
        } else {
            "The surf glides up to meet you as you approach the water, a cool shock against  your warm skin.  ";
        }
        "\b";
    }
;

obj436_conch_shell: class594, class42, class253
    noun = 'shell' 'crab' 'claw'

    adjective = 'conch' 'bony'

    location = nil

    sdesc = "conch shell"

    prop167 = { "It's a beautiful conch shell, half the size of your head.  Nature has painted its whorls a luscious, glossy pink, and dotted them with subtly toned spots of brown and white.  A crab is packed tightly inside it,  entirely hidden but for one bony claw.  "; }

    prop902 = { notify(obj436_conch_shell, &prop901, 0); }

    prop941 = { "\bThe crab scuttles about in the boiler, revived by the cool  salt water.  "; }

    prop942 = { "\bThe crab darts back and forth in the boiler, agitated by the  water's warmth.  "; }

    prop943 = { "\bThe crab scuttles along the walls of the boiler, searching frenziedly  for any escape from the searing heat.  Finally, it gets one claw over the  lip of the boiler and pulls itself out and onto the counter.  "; }

    prop944 = {
        "\bA high, piercing shriek - a horrible sound that you wouldn't imagine a  crustacean capable of - emanates from the crab as it, quite literally,  dies a screaming death in the boiling salt water.  The crab shoots  from its overheated shell in a vain, frenzied attempt at escape.  A  bare moment later, the doomed creature floats to the top of the water,  while its former home drops like a stone to the bottom of the boiler.  ";
        obj20.prop484 = ['aghast', 'triumphant'];
    }

    prop945 = { "\bThe crab scuttles about in the boiler, testing the  boundaries of its cage.  "; }

    prop946 = { "\bThe crab darts back and forth in the boiler, agitated by the  hot metal searing its claws.  "; }

    prop947 = {
        "\bThe crab scuttles along the walls of the boiler, searching frenziedly  for any escape from the searing heat.  Finally, it gets one claw over the  lip of the boiler and pulls itself out and onto the counter.  ";
        obj20.prop484 = ['dismayed'];
    }

    prop948 = { return self.prop947; }

    prop901 = {
        local local1;

        if (self.location == obj240_sieve && obj240_sieve.location == obj239_boiler) {
            "The crab crawls out of the sieve and falls into the boiler.  ";
            self.moveInto(obj239_boiler);
        }
        if (self.location == obj239_boiler) {
            local1 = fun227(Me);
            if (obj239_boiler.prop501) {
                switch (obj239_boiler.prop804) {
                  case 0:
                    if (local1 == obj427___By_the_Snack_Bar__) {
                        self.prop941;
                    }
                    goto label262798;
                  case 1:
                    if (local1 == obj427___By_the_Snack_Bar__) {
                        self.prop942;
                    }
                    goto label262798;
                  case 2:
                    if (local1 == obj427___By_the_Snack_Bar__) {
                        self.prop943;
                    }
                    self.moveInto(obj546_snack_bar);
                    goto label262798;
                  case 3:
                    if (local1 == obj427___By_the_Snack_Bar__) {
                        self.prop944;
                    }
                    unnotify(obj436_conch_shell, &prop901);
                    self.moveInto(nil);
                    obj563_boiled_crab.moveInto(obj239_boiler);
                    obj560_conch_shell.moveInto(obj239_boiler);
                    goto label262798;
                }
              label262798:
            } else {
                switch (obj239_boiler.prop804) {
                  case 0:
                    if (local1 == obj427___By_the_Snack_Bar__) {
                        self.prop945;
                    }
                    goto label262907;
                  case 1:
                    if (local1 == obj427___By_the_Snack_Bar__) {
                        self.prop946;
                    }
                    goto label262907;
                  case 2:
                  case 3:
                    if (local1 == obj427___By_the_Snack_Bar__) {
                        self.prop947;
                    }
                    self.moveInto(obj546_snack_bar);
                    goto label262907;
                }
            }
          label262907:
        } else if (self.prop179(Me) && rand(3) == 1) {
            if (self.location == Me) {
                "\bThe conch shell rocks in your grasp.  ";
            } else {
                "\bThe shell rocks as the crab inside considers its surroundings.  ";
            }
        }
    }

    verDoAction95_tap(arg1) = { }

    doAction95_tap(arg1) = { "The crab retreats further into the shell.  "; }

    verDoAction112_eat(arg1) = { "The crab eludes your attempts to eat it by withdrawing deeper into its shell.  "; }

    prop811 = "It occurs to you that you might never see the shell again if you release  the crab back into the ocean alive, and decide against it.  "
;

obj437___Under_Pavilion__: class31
    noun = 'loc-underpav'

    prop678 = nil

    prop675 = true

    prop682 = 'drysand'

    sdesc = "\(Under Pavilion\)"

    prop167 = { "You're in a low space beneath the pavilion, which is supported by massive  cement pylons.  Two metal pipes extrude from the cement above you  and bend east to follow the pier.  The beach lies east through an opening in  the dunes, and a<<(obj483_gate.prop124 ? "n open" : " closed")>> wire mesh gate  leads to a small storage area to the west.  "; }

    prop666 = { "You can go east, towards the  water<<(obj483_gate.prop124 ? " or west, into the storage room" : "")>>.  "; }

    prop692 = "Cement.  Tons and tons of cement.  You can almost feel all that weight  bearing down on you.  "

    prop302 = { "Great dunes of sand, piled up against the pillars supporting the pavilion, block  your exit in that direction.  "; }

    prop303 = { return self.prop302; }

    prop308 = { return self.prop302; }

    prop309 = { return self.prop302; }

    prop310 = { return self.prop302; }

    prop311 = { return self.prop302; }

    prop304 = {
        self.prop887;
        return obj285___Damp_Sand__Beneath;
    }

    prop305 = obj483_gate

    prop295 = {
        obj447___Storage_Area__.prop295;
        inherited.prop295;
    }
;

obj438_parchment: class42, class48
    noun = 'parchment'

    adjective = 'rich'

    prop813 = nil

    location = obj561_antique_bottle

    prop141 = 2

    prop140 = 0

    prop508 = 1

    sdesc = {
        if (self.prop966) {
            "rolled up ";
        }
        if (self.prop891) {
            "treasure map";
        } else {
            "parchment";
        }
    }

    prop167 = {
        "It's a";
        if (self.prop882) {
            " soggy";
        }
        if (self.prop882 && self.prop966) {
            ",";
        }
        if (self.prop966) {
            " rolled up";
        }
        if (self.prop891) {
            " treasure map";
        } else {
            " sheet of parchment";
        }
        ".  ";
        if (!self.prop966) {
            self.prop967;
        }
    }

    prop967 = { "It must be at least a hundred years old.  Clearly, it was fashioned in another time.  Thick black strokes grace the rich parchment, drawn in a purposeful hand.  Fanciful trace works embellish the borders, and a spidery compass rose resides in one corner.  "; }

    doSynonym('Action47_read') = 'Action3_follow'

    verDoAction47_read(arg1) = {
        if (self.prop966) {
            "Not while it's rolled up in <<self.location.thedesc>>.  ";
        } else if (self.location != Me) {
            "You really need to be holding it to read it.  ";
        } else if (isclass(Me.location, obj265) || isclass(Me.location, obj217)) {
            "You try to read the map, but it's rather difficult while you're floating in the water.  ";
        } else if (Me.location == obj339___Inside_the__Octopu) {
            "The light in the bell is too dim to read the <<(self.prop882 ? "soggy " : "")>>map by.  ";
        }
    }

    prop168 = {
        local local1;

        if (self.prop966 || self.location == obj609_pocket_of_your_short) {
            "You'll have to take it out of <<self.location.thedesc>> if you want to read it.  ";
        } else if (self.prop882) {
            "Thank goodness, the map is still legible despite its recent wetting.  ";
        }
        "The black strokes describe the chain of islands dominating the Savannah coast.   One island in particular bears a bold red X.  You examine the marker closer.  ";
        if (!self.prop891) {
            "Why, that's right here on Tybee Island!  ";
        } else {
            local1 = fun227(Me);
            switch (local1) {
              case obj285___Damp_Sand__Beneath:
              case obj453___Shallow_Water__Ben:
              case obj449___Middle_of_Pier__:
              case obj432___End_of_Pier__:
                "It seems to be a bit west of here.  ";
                goto label266065;
              case obj437___Under_Pavilion__:
              case obj269___Pavilion__:
              case obj477___On_the_Enclosure__:
              case obj433___On_the_Canopy__:
                "It's right underfoot!  ";
                self.prop813 = true;
                goto label266065;
              case obj448_loc_benchroom:
              case obj450___Dry_Sand__North_of:
                "It seems to be a bit south of here.  ";
                goto label266065;
              case obj427___By_the_Snack_Bar__:
              case obj451___Dry_Sand__South_of:
                "It seems to be a bit north of here.  ";
                goto label266065;
              case obj286___Damp_Sand__South_o:
              case obj454___Shallow_Water__Sou:
                "It seems to be a bit northwest of here.  ";
                goto label266065;
              case obj287___Damp_Sand__North_o:
              case obj452___Shallow_Water__Nor:
                "It seems to be a bit southwest of here.  ";
                goto label266065;
              case obj199___Beach_Path__:
              case obj447___Storage_Area__:
                "It seems to be a bit east of here.  ";
                goto label266065;
            }
        }
      label266065:
    }

    prop882 = nil

    prop966 = {
        if (isclass(self.location, class218)) {
            return true;
        } else {
            return nil;
        }
    }

    prop965 = {
        self.moveInto(Me);
        "You insert a finger into the bottle and slide out a rolled up parchment.   Unrolling it reveals... a treasure map!  ";
        obj561_antique_bottle.prop963 = nil;
        obj561_antique_bottle.prop891 = true;
        self.prop967;
        self.prop168;
        addword(obj438_parchment, &adjective, 'treasure');
        addword(obj438_parchment, &noun, 'map');
        addword(obj438_parchment, &adjective, 'compass');
        addword(obj438_parchment, &noun, 'rose');
        addword(obj438_parchment, &adjective, 'thick');
        addword(obj438_parchment, &adjective, 'black');
        addword(obj438_parchment, &noun, 'stroke');
        addword(obj438_parchment, &noun, 'strokes');
        self.prop131 = true;
        self.prop891 = true;
    }

    prop557 = {
        if (self.prop882) {
            return nil;
        } else {
            self.prop882 = true;
            "\^<<self.thedesc>> is soaked through.  ";
            addword(self, &adjective, 'soggy');
            addword(self, &adjective, 'wet');
            return true;
        }
    }
;

obj439_hole: obj234_shallow_hole
    noun = 'hole'

    adjective = 'treasure'

    sdesc = {
        if (self.prop815 == 1 && !obj437___Under_Pavilion__.prop678) {
            "shallow";
        } else if (self.prop815 == 2) {
            "knee deep";
        } else if (self.prop815 == 3) {
            "waist deep";
        } else if (self.prop815 == 4) {
            "chest deep";
        }
        if (obj285___Damp_Sand__Beneath.prop678) {
            " treasure";
        }
        " hole";
    }

    prop299 = {
        "The <<self.sdesc>> you dug here earlier is still visible";
        if (obj285___Damp_Sand__Beneath.prop678) {
            ", as is the other shallow hole";
        }
        ".  ";
    }

    location = nil

    prop814 = nil

    prop815 = 0

    prop167 = {
        if (self.prop815 == 1) {
            "It's a hole in the sand about a yard across and a couple of hand spans deep,  dug right over the spot marked on the map.  ";
        } else if (self.prop815 == 2) {
            "It's a knee deep hole in the sand, dug right over the spot marked on the map.  ";
        } else if (self.prop815 == 3) {
            "It's a waist deep hole in the sand, dug right over the spot marked on the map.  ";
        } else if (self.prop815 == 4) {
            "It's a chest deep hole in the sand, dug right over the spot marked on the map.  ";
        }
        if (fun4(self.contents)) {
            self.doAction26_look_in(Me);
        }
    }

    ioAction101_bury_in(arg1, arg2) = { "You consider the sand spilling over the rim of the hole, and decide not to risk it.  "; }

    doAction171_fill(arg1) = { "You consider the effort you've already put into digging it, and decide not to.  "; }

    doAction9_dig_with(arg1, arg2) = {
        if (self.prop815 == 0) {
            "As best you can, you locate the spot indicated on the map.   <<(arg2 == obj231_hands ? "Scooping sand away in great handfuls" : "Using the shingle as a shovel")>>, you quickly excavate an area approximately a yard across and a couple of hand spans deep.  ";
            if (self.location.prop685 != nil) {
                "(In the process, you unintentionally fill the hole you dug earlier,  which was surprisingly close to the mark.)  ";
                self.location.prop685.prop836;
            }
            "You don't manage to uncover anything interesting, but you're quite  sure that this is the spot indicated on the map.  As you continue to dig,  gravity and the slight wind join forces to send the surrounding  sand sliding into the hole.  ";
            if (arg2 == obj231_hands) {
                "You can see that you're going to need a better digging implement than your hands if you're to make this hole any deeper.  ";
            } else {
                "Fortunately, the shingle doesn't make a half bad shovel.  ";
            }
            self.prop815 = 1;
            addword(obj439_hole, &adjective, 'shallow');
            obj20.prop484 = ['curious'];
        } else if (arg2 == obj231_hands) {
            "You try to dig deeper, but in for every handful you excavate, two more slide  in.  You're going to need a better shovel than your hands to make this hole  any deeper.  ";
        } else if (self.prop815 == 1) {
            "Sand continues to slide in from the hole's rim, but you're able to keep abreast  of it through vigorous use of the shingle.  You keep on digging, making the  hole deeper and wider.  You climb into the hole to facilitate the excavation,  and soon you're knee deep in it.  ";
            delword(obj439_hole, &adjective, 'shallow');
            addword(obj439_hole, &adjective, 'knee');
            addword(obj439_hole, &adjective, 'deep');
            self.prop815 = 2;
            Me.moveInto(self);
            obj20.prop484 = ['intent'];
        } else if (self.prop815 == 2) {
            if (Me.location != self) {
                "You clamber down into the hole and ";
                Me.moveInto(self);
            } else {
                "You ";
            }
            "continue digging industriously.  You're forced to stop for a moment  to wipe the sweat from your brow, but you shortly resume your labor.   When you next look up, you discover that you're waist deep in the hole.  ";
            delword(obj439_hole, &adjective, 'knee');
            addword(obj439_hole, &adjective, 'waist');
            self.prop815 = 3;
            obj20.prop484 = ['driven'];
        } else if (self.prop815 == 3) {
            if (Me.location != self) {
                "You clamber back into the hole.  ";
                Me.moveInto(self);
            }
            "Your back aches from stooping and lifting, and you're covered with sweat, but you keep on digging.  That treasure must be here somewhere, you're just sure of it!  Though if you don't find something soon, you may be out  of luck.  You're standing in the hole up to your chest, and the sand sliding  in from the rim is starting to make you nervous.  ";
            delword(obj439_hole, &adjective, 'waist');
            addword(obj439_hole, &adjective, 'chest');
            self.prop815 = 4;
            obj20.prop484 = ['obsessed'];
        } else if (self.prop815 == 4) {
            if (Me.location != self) {
                "You clamber back into the hole and resume digging, but soon ";
                Me.moveInto(self);
            } else {
                "You ";
            }
            "pause for a moment to contemplate the fruits of your labors.  The hole rises  nearly over your head.  You shudder with a quick chill as the early evening breeze strokes your sweat coated skin.  Or perhaps it's the sight of all the sand spilling down the rim of the hole.  Then, with a dedication born of pure greed, you set the shingle to the bottom of the hole and continue digging.  Hardly a moment has passed when, \(chunk\), you strike something!  You bend down  to see what you've found, and... \b ... fall into black. \b You come awake groggily, with pounding head.  You seem to be lying on  your side in the cold and damp.  You try to sit up, but your arms are  somehow pinned behind you.  In fact, it feels like they're tied down.  You can  even feel a coarse rope tied roughly around you.  Your eyes are gummed shut,  but you force them open and take in your surroundings with blurred vision. \b You can't even begin to imagine how, but you've come to be lying in some sort of underground grotto.  The walls and ceiling are of rough stone, and water drips from the ceiling and puddles around you on the stony floor.  A cool breeze on your back suggests that the cavern extends to some distance behind you.  Nearby, a thin, sandy shore descends towards a sheltered inlet.  The inlet follows the cove as it bends out of sight towards the sea, while pink tongues of sunset reach back around the bend to lick the dark walls of the cave.  ";
            delword(obj439_hole, &adjective, 'chest');
            delword(obj439_hole, &adjective, 'deep');
            self.prop815 = 5;
            self.prop814 = true;
            if (obj426_shrimp.prop179(Me)) {
                unnotify(obj426_shrimp, &prop901);
            }
            if (obj436_conch_shell.prop179(Me)) {
                unnotify(obj436_conch_shell, &prop901);
            }
            if (obj302_length_of_rope.prop128) {
                obj302_length_of_rope.prop657;
            }
            if (obj255_white_rubber_strap.prop128) {
                obj255_white_rubber_strap.prop657;
            }
            if (obj225_goggles.prop128) {
                obj225_goggles.prop128 = nil;
            }
            if (obj471_scuba_mask.prop128) {
                obj471_scuba_mask.prop128 = nil;
            }
            fun207(Me, obj437___Under_Pavilion__);
            Me.moveInto(obj381___Grotto__);
            obj700_coarse_rope.moveInto(Me);
            self.moveInto(nil);
            setfuse(&fun695, 3, Me);
        }
    }
;

obj440_organic_looking_cast: class245
    noun = 'spire' 'sandcastle' 'castle' 'organic' 'minnarets' 'minnaret' 'spires'

    adjective = 'small' 'organic' 'looking' 'little' 'crystalline' 'sand'

    prop510 = nil

    location = obj286___Damp_Sand__South_o

    sdesc = "organic looking castle"

    prop167 = { "It's very unusual.  You've never seen a sand castle like this one.  Instead of the usual overturned-pail-full-of-sand method, this castle seems to have been made of little beaded droplets of wet sand, stacked capriciously atop each other into miniature spires and minnarets.  Several thin spires climb skyward, rising to about knee height, and a narrow band spirals around the whole construction from base to top.   It almost looks like the whole thing was grown, rather than built, like the crystals that sprout from the \"Grow Your Own Crystals!\" kits that are so popular at boardwalk novelty shops.  Now that you've noticed it, the castle even seems to have  a certain glassy sheen.   \b The castle is inhabited by some sort of  insects, or tiny crustaceans, that crawl all over and through it.  "; }

    prop299 = "\n\tSomeone has built an odd little castle just above the tide line.  "

    verDoAction143_climb(arg1) = { "This castle is far too small for climbing.  "; }
;

obj441_your_sculpture: class33
    noun = 'sculpture' 'mine'

    adjective = 'sand' 'my'

    prop149 = "on"

    prop150 = "off of"

    sdesc = "your sculpture"

    thedesc = { return self.sdesc; }

    adesc = { return self.sdesc; }

    prop818 = 0

    prop167 = {
        if (self.prop818 == 1) {
            "You've sculpted a hammerhead shark, its mighty dorsal  ridge arched in an attack position.  ";
        }
        if (self.prop818 == 2) {
            "You've sculpted a great gull, wings spread, caught in flight.  ";
        }
        if (self.prop818 == 3) {
            "You've sculpted a fat jolly seal,  cavorting and flapping its fins in the sand.  ";
        }
        if (self.prop818 == 4) {
            "You've sculpted a lounging mermaid,  her tail curled sinuously behind her.  ";
        }
    }

    prop299 = "\n\tYour sand sculpture adds a spot of cheer to the landscape.  "

    construct = {
        self.prop293 = true;
        pass construct;
    }

    verDoAction41(arg1) = { self.verDoAction43_attack_with(arg1, obj230_feet); }

    doAction41(arg1) = { self.doAction43_attack_with(arg1, obj230_feet); }

    verDoAction43_attack_with(arg1, arg2) = {
        if (obj212_brick.location == Me && arg2 != obj212_brick || obj213_pail.location == Me && obj213_pail.prop501 && arg2 != obj213_pail) {
            Me.prop561;
        } else if (isclass(Me.location, obj234_shallow_hole) || Me.location == obj439_hole) {
            "How about getting out of that hole, first?  ";
        }
    }

    doAction43_attack_with(arg1, arg2) = {
        local local1;

        local1 = Me.location;
        if (arg2 == obj231_hands) {
            "You plunge your hands into the sculpture, and scatter its essence across the beach.   The destructive gesture leaves you feeling slightly hollow.  ";
        } else if (arg2 == obj230_feet) {
            "You kick the sculpture apart, scattering its essence across the beach.   The destructive gesture leaves you feeling slightly hollow.  ";
        } else if (arg2.prop140 < 3) {
            "\^<<arg2.thedesc>> isn't likely to do much damage to the sculpture.  ";
            exit;
        } else if (arg2 != obj212_brick) {
            "You wind up <<arg2.thedesc>> and swing, sending sand flying across the beach.  ";
        } else {
            "You heave the brick onto the defenseless sculpture.  It flattens the doomed  structure into a sandy pancake, leaving no trace behind.  ";
            obj212_brick.moveInto(Me.location);
            obj20.prop499 = 0;
            remdaemon(&fun203, 0);
        }
        self.location.prop816 = nil;
        self.location.prop817 = nil;
        delete self;
    }

    verDoAction145_build(arg1) = { obj55_ground.verIoAction146_build_in(arg1); }

    doAction145_build(arg1) = { obj55_ground.ioAction146_build_in(arg1, self); }

    verDoAction146_build_in(arg1, arg2) = { }

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = { return obj646_dragon_sculpture.prop808; }
;

obj442: class218
    prop136 = true

    prop501 = nil

    prop819(arg1) = { }

    prop820 = { }

    prop504 = nil

    prop821 = true

    verDoAction171_fill(arg1) = {
        local local1 = Me.location;

        if (obj233_sandy_beach.location == local1) {
            self.prop823(obj233_sandy_beach.prop504);
        } else if (obj423_ocean.location == local1) {
            if (isclass(local1, obj217)) {
                "Seeing as how you're \(under\)water, it seems that anything you  could fill is already full.  ";
            } else {
                self.prop823(obj423_ocean.prop504);
            }
        } else {
            "You need to specify a source from which to fill it.  ";
        }
    }

    verIoAction172_fill_from(arg1) = { self.prop825; }

    verIoAction173_fill_with(arg1) = { self.prop825; }

    verDoAction167_empty(arg1) = { self.prop828; }

    verDoAction169_empty_on(arg1, arg2) = { self.verDoAction167_empty(arg1); }

    verDoAction168_empty_in(arg1, arg2) = { self.verDoAction167_empty(arg1); }

    prop823(arg1) = { "You scoop a few handfuls of <<say(arg1)>> into <<self.thedesc>>,  but it feels like a futile effort.  "; }

    prop831(arg1) = { "The tiny volume of <<say(arg1)>> doesn't go very far towards filling in the hole.  "; }

    prop828 = { "You can't empty <<self.thedesc>>.  "; }

    prop825 = { "You can't fill anything from <<self.thedesc>>.  "; }
;

obj443: obj284, obj472
    prop685 = nil

    prop678 = nil

    prop675 = true

    prop682 = 'drysand'

    prop683 = { "The sand beneath your feet seems to be spun of light, powdery gold. It's warm against your bare feet.  "; }

    prop498 = {
        if (rand(5) == 1) {
            say(self.prop885[rand(length(self.prop885))]);
        }
    }

    prop885 = ['\bA slight gust raises a thin skein of sand and whips it across your ankles.  ']

    prop886 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "You stagger west over the boardwalk under the weight of the  <<(obj212_brick.location == Me ? "brick" : "pail full of water")>>, thankful to have solid ground under your feet.  ";
        } else {
            "You skip across the wooden boardwalk, passing over the scrub covered dunes.  ";
        }
        "\b";
    }

    prop887 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "As you move closer to the shoreline, the weight of the  <<(obj212_brick.location == Me ? "brick" : "full pail")>> drives your every step deeper into the hard packed wet sand.  ";
        } else {
            "The warm dry sand gives way to cool wet sand as you move closer to the shoreline.  ";
        }
        "\b";
    }

    prop688 = { "Just another of the many things you can't do while buried under a huge mound of sand.  "; }

    roomAction(arg1, arg2, arg3, arg4, arg5) = {
        local local1 = [obj71, obj36_inspect, obj336_listen, obj37, obj38_tell, obj169, obj129_stand, obj249_smell, obj274_uncover, obj116, obj109_look, obj337_listen_to, obj133, obj134_yell_at, obj115, againVerb, obj401_sit_up];

        if (isclass(arg2, class170) || !Me.prop562) {
            pass roomAction;
        } else if (Me.prop562) {
            if (arg2 == obj95_close) {
                if (arg3 == obj470_eyes) {
                    "You blink to clear a few grains of sand out of your eyes.  ";
                } else {
                    self.prop688;
                }
                exit;
            } else if (arg2 == obj36_inspect && Me.prop125(arg3)) {
                "You can't see <<(arg3.prop509 ? "them" : "it")>> while you're under all that sand,  but you know <<(arg3.prop509 ? "they're" : "it's")>> still there.  ";
                exit;
            } else if (arg2 == obj283_bury && arg3 == Me) {
                "You're already buried!  ";
                exit;
            } else if (find(local1, arg2) != nil || arg2 == obj92 && arg3 == obj261_dry_sand || arg2 == obj121 && (arg3 == obj261_dry_sand || arg3 == obj233_sandy_beach) || arg2 == takeVerb && arg3 == obj261_dry_sand && arg4 == obj98_off && arg5 == Me) {
                pass roomAction;
            } else {
                self.prop688;
                exit;
            }
        }
    }

    prop654 = [obj71, obj36_inspect, obj336_listen, obj37, obj38_tell, obj169, obj129_stand, obj274_uncover, obj116, obj109_look, obj337_listen_to, obj133, obj134_yell_at, obj115, againVerb, obj401_sit_up]
;

class class445_far_substance: class63, class28
    noun = 'substance'

    adjective = 'far'

    locationOK = true

    location = {
        if (self.prop803.location == Me.location) {
            return Me.location;
        } else {
            return nil;
        }
    }

    sdesc = "far substance"

    prop803 = obj424_ocean_tide_surf

    adesc = { return self.thedesc; }
;

obj446_sandy_beach: class290
    noun = 'coastline' 'shoreline' 'beach'

    adjective = 'coast' 'sandy' 'shore'

    sdesc = "sandy beach"

    prop808 = { return obj233_sandy_beach.prop808; }

    location = {
        local local1 = Me.location;

        if (obj233_sandy_beach.location == local1 || isclass(local1, obj217) || local1 == obj339___Inside_the__Octopu) {
            return nil;
        } else {
            return local1;
        }
    }

    locationOK = true

    prop167 = {
        local local1 = fun227(Me);

        if (local1 == obj199___Beach_Path__ || local1 == obj363___In_the_Diving_Bell) {
            "The only thing you can see from here is a wall of sea-oat covered  dunes to the east.  ";
        } else if (local1 == obj437___Under_Pavilion__ || local1 == obj447___Storage_Area__) {
            "You can't really see much of it from here, except what's visible  through the passage to the east.  ";
        } else if (local1 == obj433___On_the_Canopy__) {
            "From up here, the beach looks like some heavenly ribbon, bound around  Tybee island like a golden ring of promise.  ";
        } else if (local1 == obj381___Grotto__) {
            "All you can see from here is the thin strip of sandy shore between you and  the tiny inlet.  ";
        } else {
            "The beach stretches quite a ways north and south of you, before curving  out of sight around the contours of Tybee Island.  ";
        }
    }

    verDoAction141_jump_into(arg1) = {
        local local1 = Me.location;

        if (local1.prop638(arg1)) {
        } else if (local1 != obj448_loc_benchroom && local1 != obj427___By_the_Snack_Bar__ && local1 != obj449___Middle_of_Pier__) {
            "It's too far away.  ";
        }
    }

    doAction141_jump_into(arg1) = { class434_railing.doAction140_jump_over(arg1); }

    verIoAction169_empty_on(arg1) = { }

    ioAction169_empty_on(arg1, arg2) = { self.ioAction168_empty_in(arg1, arg2); }

    verIoAction168_empty_in(arg1) = { }

    ioAction168_empty_in(arg1, arg2) = {
        local local1 = Me.location;

        if (local1.prop638(arg1)) {
            exit;
        }
        if (local1 == obj448_loc_benchroom || local1 == obj427___By_the_Snack_Bar__ || local1 == obj449___Middle_of_Pier__) {
            arg2.doAction169_empty_on(arg1, self);
        } else {
            "Unfortunately, you can't reach the beach from here.  ";
        }
    }

    verIoAction13_in(arg1) = { }

    ioAction13_in(arg1, arg2) = {
        local local1, local2, local3, local4;

        local4 = Me.location;
        if (local4.prop638(arg1)) {
            exit;
        }
        if (length(arg2.prop502) && arg2 != obj225_goggles) {
            local1 = true;
        }
        local2 = arg2.prop710;
        if (local4 == obj448_loc_benchroom || local4 == obj427___By_the_Snack_Bar__ || local4 == obj449___Middle_of_Pier__) {
            "You heave <<arg2.thedesc>>";
            if (local1) {
                ", along with <<arg2.prop502[1].thedesc>>";
                if (local2 != nil) {
                    " and <<local2.thedesc>>";
                }
                ",";
            }
            " over the railing onto the sand beneath the pavilion.  ";
            if (arg2 == obj212_brick) {
                obj212_brick.prop838(arg1, self);
            }
            switch (local4) {
              case obj448_loc_benchroom:
                local3 = obj450___Dry_Sand__North_of;
                goto label278292;
              case obj427___By_the_Snack_Bar__:
                local3 = obj451___Dry_Sand__South_of;
                goto label278292;
              case obj449___Middle_of_Pier__:
                local3 = obj287___Damp_Sand__North_o;
                goto label278292;
            }
          label278292:
            arg2.moveInto(local3);
            if (arg2 == obj212_brick && local3 == obj451___Dry_Sand__South_of && obj307_flock_of_gulls.location == obj451___Dry_Sand__South_of) {
                "A suprised cacophony of shrieking and flapping erupts from below.  ";
            }
        } else if (isclass(local4, obj266) && arg2 != obj212_brick) {
            switch (local4) {
              case obj452___Shallow_Water__Nor:
                local3 = obj287___Damp_Sand__North_o;
                goto label278490;
              case obj453___Shallow_Water__Ben:
                local3 = obj285___Damp_Sand__Beneath;
                goto label278490;
              case obj454___Shallow_Water__Sou:
                local3 = obj454___Shallow_Water__Sou;
                goto label278490;
            }
          label278490:
            arg2.moveInto(local3);
            "You launch <<arg2.thedesc>> west";
            if (local1) {
                ", along with <<arg2.prop502[1].thedesc>>";
                if (local2 != nil) {
                    " and <<local2.thedesc>>";
                }
            }
            ", onto the sandy beach.  ";
            arg2.moveInto(Me.location.prop839);
        } else {
            "Unfortunately, you can't reach the beach from here.  ";
        }
    }

    verIoAction121_drop_on(arg1) = { self.verIoAction13_in(arg1); }

    ioAction121_drop_on(arg1, arg2) = { self.ioAction13_in(arg1, arg2); }

    verIoAction53_on(arg1) = {
        if (fun227(arg1) != obj433___On_the_Canopy__) {
            self.verIoAction13_in(arg1);
        }
    }

    ioAction53_on(arg1, arg2) = {
        if (fun227(arg1) == obj433___On_the_Canopy__) {
            obj455_pavilion_s_canopy.ioAction50_over(arg1, arg2);
        } else {
            self.ioAction13_in(arg1, arg2);
        }
    }

    prop548(arg1) = { self.verIoAction13_in(arg1); }

    prop549(arg1, arg2) = { self.ioAction13_in(arg1, arg2); }

    prop673(arg1) = { self.verIoAction13_in(arg1); }

    prop674(arg1, arg2) = { self.ioAction13_in(arg1, arg2); }
;

obj447___Storage_Area__: class31
    noun = 'loc-storage'

    prop682 = 'cement'

    prop304 = obj484_gate

    sdesc = "\(Storage Area\)"

    prop167 = {
        local local1 = 0;

        "You're in a small, cement walled room.  But for the  <<(obj484_gate.prop124 ? "open" : "closed")>> gate in the east face,  it would be one big cement cube.  ";
        if (obj485_glass_recycling_cani.location == self && obj486_aluminum_recycling_c.location == self) {
            local1 = 3;
        } else if (obj485_glass_recycling_cani.location == self) {
            local1 = 1;
        } else if (obj486_aluminum_recycling_c.location == self) {
            local1 = 2;
        }
        if (local1 > 0) {
            "Apparently it's used as a storage area for recyclable trash, as there";
            if (local1 == 3) {
                " are two big blue recycling canisters here, one containing glass bottles,  the other aluminum cans.  ";
            } else {
                "'s a big blue recycling canister here, containing  <<(local1 == 1 ? "glass bottles" : " aluminum cans")>>.  ";
            }
        }
        "Against the rear wall is a large bin full of used paper products.   Next to that is a plain looking utility table over which is hung a peg board.  ";
    }

    prop666 = {
        if (obj484_gate.prop124) {
            "You can go east, out of the storage area.  ";
        } else {
            "You can't go anywhere while the gate is shut.  ";
        }
    }

    prop156 = "The solid cement wall prevents you from exiting in that direction.  "

    prop692 = "Just an ordinary cement ceiling.  "
;

obj448_loc_benchroom: obj474
    noun = 'loc-benchroom'

    sdesc = {
        if (obj475_benches.location == self) {
            "\(Among the Benches\)";
        } else {
            "\(North Face of Pavilion\)";
        }
    }

    prop167 = {
        "This patch of the broad pavilion floor seems to be set aside for spectators";
        if (obj475_benches.location == self) {
            ", as there are numerous wooden benches here.  ";
            obj475_benches.prop896;
            "What with all these benches, you half expect to see picnic tables, but there  are none.  The main part of the pavilion floor sprawls largely to the south.  ";
        } else {
            ", while the main part of the pavilion floor sprawls largely to the south.   You can see a bunch of wooden benches there.  ";
        }
        "Beyond that, against the southern railing, you can see the brick faced enclosure  and the tiny snack bar.  ";
    }

    prop666 = { "You can go south, to the main part of the pavilion.  "; }

    prop692 = { return obj476_Tybrisa_Pavilion_s_c.prop167; }

    prop303 = {
        fun204('south');
        return obj269___Pavilion__;
    }

    prop311 = { return self.prop303; }

    prop310 = { return self.prop303; }

    prop156 = "The railing prevents you from going that way."

    prop307 = {
        "If you want to jump over the railing, just say so.  Otherwise, there is no  way down.  ";
        return nil;
    }
;

obj449___Middle_of_Pier__: obj474
    noun = 'loc-midpier'

    sdesc = "\(Middle of Pier\)"

    prop167 = { "The pier is even longer than it looked.  It stretches back west to the great pavilion and continues still further east towards the sea.  A small shelter rests at the far end.  From below, you can hear the fizzle and hiss of the shallow surf.  "; }

    prop666 = { "You can go west, back to the pavilion, or east, to the end of the pier.  "; }

    prop304 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "You stagger into the shade of the small shelter,  <<(obj212_brick.location == Me ? "brick" : "bucket")>> still in hands.  \b";
        } else {
            "It takes a moment for your eyes to adjust to the shade beneath the small  shelter.  \b";
        }
        return obj432___End_of_Pier__;
    }

    prop305 = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "You stagger into the shade of the greater pavilion,  <<(obj212_brick.location == Me ? "brick" : "bucket")>> still in hands.  \b";
        } else {
            "It takes a moment for your eyes to adjust to the shade beneath the greater  pavilion.  \b";
        }
        return obj269___Pavilion__;
    }

    prop307 = {
        "If you want to jump off the pier, just say so.  Otherwise, there is no way down.  ";
        return nil;
    }

    prop156 = "The railing prevents you from walking off the pier.  "
;

obj450___Dry_Sand__North_of: obj443
    noun = 'loc-north1'

    sdesc = "\(Dry Sand, North of Pier\)"

    prop167 = { "The season is early and the day late, leaving the beach  deserted but for a few strollers.  The golden sand turns dark as it  leads east toward the tide line <<(obj487_dragon_sculpture.location == self ? ", where someone has built a large sand sculpture." : ".")>>  The  boardwalk lies back to the west.  To the south, tall dunes flank the base of the Tybrisa Pavilion, blocking your way.  \n\tChained to the end of the boardwalk is a trash barrel.  "; }

    prop155(arg1) = {
        inherited.prop155(arg1);
        if (!obj451___Dry_Sand__South_of.prop293 && !obj269___Pavilion__.prop293 && !self.prop891) {
            obj199___Beach_Path__.prop895;
            self.prop891 = true;
        }
    }

    prop666 = { "You can go west, along the boardwalk, or east below the tide line.  "; }

    prop309 = "Tall, sea-oat-covered dunes block your way.  "

    prop302 = { "You strike off up the beach, but you don't want to wander too far from your  hotel, so after a while you head back.  "; }

    prop308 = { return self.prop302; }

    prop310 = { return self.prop303; }

    prop311 = { return self.prop305; }

    prop303 = "The dunes piled up against the base of the pavilion block your way.  "

    prop305 = {
        self.prop886;
        return obj199___Beach_Path__;
    }

    prop304 = {
        self.prop887;
        return obj287___Damp_Sand__North_o;
    }
;

obj451___Dry_Sand__South_of: obj443
    noun = 'loc-south1'

    sdesc = "\(Dry Sand, South of Pier\)"

    prop167 = { "The cool early evening has left the beach nearly deserted but for a few joggers and unsupervised children.  To the east, the dry, powdery sand goes hard as it rolls down toward the swelling tide.  The boardwalk lies back to the west.  To the north, tall dunes  flank the base of the pavilion, blocking your way.  "; }

    prop666 = { "You can go west, along the boardwalk, or east, below the tide line.  "; }

    prop498 = {
        if (obj307_flock_of_gulls.location != self) {
            return inherited.prop498;
        } else {
            return [];
        }
    }

    prop155(arg1) = {
        if (obj307_flock_of_gulls.location == self) {
            notify(obj307_flock_of_gulls, &prop901, 0);
        }
        inherited.prop155(arg1);
        if (!obj450___Dry_Sand__North_of.prop293 && !obj269___Pavilion__.prop293 && !self.prop891) {
            obj199___Beach_Path__.prop895;
            self.prop891 = true;
        }
    }

    prop230(arg1) = {
        if (obj307_flock_of_gulls.location == self) {
            unnotify(obj307_flock_of_gulls, &prop901);
            obj307_flock_of_gulls.prop907 = 0;
        }
        pass prop230;
    }

    prop527 = {
        if (obj307_flock_of_gulls.location == self) {
            "All you can hear is the greedy, jealous shrieking of the gulls.  ";
        } else {
            "The gentle early evening breeze carries a panoply of sounds: the laughter of  young children; the screech of gulls; the hiss and fizzle of the foaming surf.  ";
        }
    }

    prop305 = {
        self.prop886;
        return obj199___Beach_Path__;
    }

    prop304 = {
        self.prop887;
        return obj286___Damp_Sand__South_o;
    }

    prop309 = { return self.prop305; }

    prop311 = "The dunes bordering the beach block your way.  "

    prop303 = { "You strike off up the beach, but you don't want to wander too far from your  hotel, so after a while you head back.  "; }

    prop310 = { return self.prop302; }

    prop308 = { return self.prop303; }

    prop302 = "The dunes piled up against the base of the pavilion block your way.  "
;

obj452___Shallow_Water__Nor: obj266
    noun = 'loc-north3'

    prop839 = obj287___Damp_Sand__North_o

    sdesc = "\(Shallow Water, North of Pier\)"

    prop167 = { "The surf swells around your knees, occasionally surging up to your waist.  You can crawl up onto the beach to the west<<(obj488_dragon_sculpture.location == self ? ", where someone has built a large sand sculpture above the ebbing surf," : ",")>> or swim into deeper water to the east.  To the south, you can pass through the cement pylons supporting the pier.  "; }

    prop666 = { "You can crawl up onto shore to the west, wade south along the shoreline,  or swim into deeper water to the east.  "; }

    prop305 = {
        self.prop886;
        return obj287___Damp_Sand__North_o;
    }

    prop304 = {
        self.prop887;
        return obj489___Deep_Water__North_;
    }

    prop310 = {
        self.prop887;
        return obj490___Deep_Water__Beneat;
    }

    prop303 = {
        fun204('south');
        return obj453___Shallow_Water__Ben;
    }

    prop311 = {
        self.prop886;
        return obj285___Damp_Sand__Beneath;
    }

    prop302 = { "You strike off along the shoreline, but don't want to wander too far from your  hotel, so after a while you head back.  "; }

    prop308 = { "You strike off into deeper water, but don't want to drift too far away  from the hotel, so eventually you turn back.  "; }

    prop309 = { return self.prop302; }
;

obj453___Shallow_Water__Ben: obj266
    noun = 'loc-under3'

    prop839 = obj285___Damp_Sand__Beneath

    sdesc = "\(Shallow Water, Beneath Pier\)"

    prop167 = { "The knee-deep water here is cooled by the shadow of the pier, which  here rises to almost three times your height.  A pair of metal pipes run the length of it, presumably a part of the pavilion's plumbing.  The avenue of supporting pylons leads west, on to the sand,  and also continued into deeper water to the east.  You can escape the pier's chilly shadow to the north or south.  "; }

    prop666 = { "You can crawl west onto shore, follow the shoreline north or south,  or swim east into deeper water.  "; }

    prop692 = { return obj494_pipes.prop167; }

    prop305 = {
        self.prop886;
        return obj285___Damp_Sand__Beneath;
    }

    prop304 = {
        self.prop887;
        return obj490___Deep_Water__Beneat;
    }

    prop308 = {
        self.prop887;
        return obj489___Deep_Water__North_;
    }

    prop309 = {
        self.prop886;
        return obj287___Damp_Sand__North_o;
    }

    prop311 = {
        self.prop886;
        return obj286___Damp_Sand__South_o;
    }

    prop310 = {
        self.prop887;
        return obj464___Deep_Water__South_;
    }

    prop302 = {
        fun204('north');
        return obj452___Shallow_Water__Nor;
    }

    prop303 = {
        fun204('south');
        return obj454___Shallow_Water__Sou;
    }
;

obj454___Shallow_Water__Sou: obj266
    noun = 'loc-south3'

    prop839 = obj286___Damp_Sand__South_o

    sdesc = "\(Shallow Water, South of Pier\)"

    prop167 = { "You're up to your knees in the gently surging tide.  It flows up onto the beach to the west and grows deeper to the east.   To the north, you can pass among the pylons supporting  the pier.  "; }

    prop666 = { "You can go west, onto shore, wade north along the shoreline, or swim east  into deeper water.  "; }

    prop305 = {
        self.prop886;
        return obj286___Damp_Sand__South_o;
    }

    prop304 = {
        self.prop887;
        return obj464___Deep_Water__South_;
    }

    prop308 = {
        self.prop887;
        return obj490___Deep_Water__Beneat;
    }

    prop302 = {
        fun204('north');
        return obj453___Shallow_Water__Ben;
    }

    prop309 = {
        self.prop886;
        return obj285___Damp_Sand__Beneath;
    }

    prop310 = { "You strike off into deeper water, but you don't want to drift too far away  from the hotel, so eventually you turn back.  "; }

    prop303 = { "You strike off along the shoreline, but you don't want to wander too far from your  hotel, so after a while you head back.  "; }

    prop311 = { return self.prop303; }
;

obj455_pavilion_s_canopy: class263
    noun = 'canopy' 'roof'

    adjective = 'shingled' 'pavilion' 'pavilion\'s'

    sdesc = "pavilion's canopy"

    prop167 = { "The canopy is just about the only thing you can see of the pavilion, standing on it as  you are.  It's tiled with tightly mounted wooden shingles, layered over each other  like scales.  "; }

    location = obj433___On_the_Canopy__

    verDoAction140_jump_over(arg1) = {
        if (Me.prop926) {
            "\(Oh\), no.  Not again.  Not no way, not no how.  You're lucky to have even  \(survived\) your last jump, let alone walk away from it like you did.  ";
        }
    }

    doAction140_jump_over(arg1) = {
        local local1, local2;

        "You creep carefully towards the edge of the long, sloping canopy.  Christ, it must be a four story drop.  You'd never survive the fall.  Just as you're turning back towards the maintenance hatch and relative safety, your foot slides over a loose shingle.  You throw yourself forward to prevent going over, and land hard on your chest. The angle of the canopy has got you, though, and you continue to slide over the edge, feet first.  You scrabble for purchase, but find none.  You're going over!  You make one last, desperate grab for the canopy, and end up holding on by just the tips of your fingers.  Trembling and terrified, you examine the drop again.  Directly below you is the cement floor of the pavilion.  Outwards of that are the dunes that brush up against its base.  If you can just hit the sand the right way... you kick out... and fall!  \(Aaaaaah!\)  A terrified scream rips through your throat, but you're scarcely  aware of it.  The ground rushes up at you with horrendous speed... \b\t\t ... dear god!   \b\t\t \(( whump )\) \b You wake an interminable amount of time later, lying on your back  in the sand.  You must have blacked out on impact.  The sun is low, but still visible, so you can't have been out for too long.  Amazingly, no one seems to have noticed your fall.  You lie still, cataloging yourself for injuries.  There's an ungodly throbbing in your back and neck.  You feel as though you'd been in a car wreck.  For one terrible moment, you convince yourself that you've broken your back.  But no, it seems you can move.  Slowly, oh so slowly, you sit up.  Everything still seems to be in one piece.  You count your lucky stars and thank whatever divine intervention it was that saved you from your own stupidity.  Needless to say, you'll  never make a mistake like that one again.   ";
        if (rand(2) == 1) {
            Me.moveInto(obj450___Dry_Sand__North_of);
        } else {
            Me.moveInto(obj451___Dry_Sand__South_of);
        }
        if (!obj480_maintenance_hatch.prop124) {
            if (obj303_broken_stave.location == obj433___On_the_Canopy__) {
                local1 = true;
            }
            if (obj302_length_of_rope.location == obj433___On_the_Canopy__) {
                local2 = true;
            }
            if (local1 || local2) {
                "Apparently <<(local1 ? "the stave" : "")>><<(local1 && local2 ? " and " : "")>>  <<(local2 ? "the rope" : "")>> slid down along with you, because there  they are lying in the sand beside you.  ";
            }
            if (local1) {
                obj303_broken_stave.moveInto(Me.location);
            }
            if (local2) {
                obj302_length_of_rope.moveInto(Me.location);
            }
        }
        "\b";
        obj20.prop484 = ['terrified', 'numb', 'numb', 'achy'];
        Me.location.lookAround(true);
        Me.prop519(&prop926);
    }

    verIoAction49_off(arg1) = { }

    ioAction49_off(arg1, arg2) = { self.ioAction50_over(arg1, arg2); }

    verIoAction50_over(arg1) = { }

    ioAction50_over(arg1, arg2) = {
        local local1;

        if (arg2 == obj471_scuba_mask || arg2 == obj561_antique_bottle || arg2 == obj465_conch_shell || arg2 == obj560_conch_shell) {
            "You consider the innate value of <<arg2.thedesc>>, and decide not to risk damaging it.  ";
            exit;
        }
        "You heedlessly toss <<arg2.thedesc>> over the edge of the canopy.  ";
        switch (rand(4)) {
          case 1:
            local1 = obj199___Beach_Path__;
            goto label290045;
          case 2:
            local1 = obj450___Dry_Sand__North_of;
            goto label290045;
          case 3:
            local1 = obj449___Middle_of_Pier__;
            goto label290045;
          case 4:
            local1 = obj451___Dry_Sand__South_of;
            goto label290045;
        }
      label290045:
        arg2.moveInto(local1);
        "After what seems like a long wait, you hear <<arg2.thedesc>> ";
        if (local1 == obj199___Beach_Path__) {
            "clatter to the brick path below.  ";
        } else if (local1 == obj449___Middle_of_Pier__) {
            "clatter to the cement pier below.  ";
        } else {
            "fall into the sand with a muffled whump.  ";
        }
        "Judging by the tiny scream that follows, you just barely missed killing someone.  ";
    }

    prop505 = [obj222_the_vendor]

    prop808 = "He looks up at the canopy and considers.  \"All I know is what you  can see from down here.\"  "
;

obj456: class42
    prop852(arg1, arg2) = {
        if (arg2 == arg1) {
            "You can't fill <<arg2.thedesc>> from itself!  ";
            exit;
        }
    }

    prop853(arg1, arg2) = {
        if (arg1.prop563 && !Me.prop125(arg1)) {
            "You're not holding <<arg1.thedesc>>.  ";
            exit;
        }
        if (arg2.prop563 && !Me.prop125(arg2)) {
            "You're not holding <<arg2.thedesc>>.  ";
            exit;
        }
    }

    prop854(arg1) = {
        local local1 = arg1.prop504;

        if (isclass(Me.location, obj217)) {
            if (local1 == 'salt water') {
                "You try to empty <<arg1.thedesc>> of <<say(local1)>>,  but seeing as how you're currently \(under\) the water, you don't  have much success.  ";
                exit;
            }
        }
    }

    prop855(arg1, arg2) = {
        if (!arg1.prop124) {
            "You'll have to open <<arg1.thedesc>> first. ";
            exit;
        }
        if (!arg2.prop124) {
            "You'll have to open <<arg2.thedesc>> first. ";
            exit;
        }
    }

    prop856(arg1) = {
        if (!arg1.prop501) {
            "There's nothing in <<arg1.thedesc>> that you can pour.   ";
            exit;
        }
    }

    prop857(arg1, arg2) = {
        local local1, local2;

        local1 = arg1.prop504;
        local2 = arg2.prop504;
        if (!isclass(arg2, class431) && !isclass(arg2, obj442)) {
            if (length(arg2.contents) && local1 != 'salt water') {
                if (obj425_single_mite.location == arg2) {
                    "That might kill the mite.  ";
                } else if (obj426_shrimp.location == arg2) {
                    "That might kill the shrimp.  ";
                } else if (arg2 == obj239_boiler) {
                    if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
                        obj239_boiler.prop858;
                    } else {
                        "You decide that you'd rather not damage the boiler any further  than you already have.  ";
                    }
                } else {
                    "Better not, you might ruin its contents.  ";
                }
                exit;
            }
            if (local1 == 'salt water' && local2 == 'dry sand') {
                if (arg1 == obj239_boiler) {
                    if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
                        obj239_boiler.prop805;
                    } else {
                        "After all the effort it took you to haul that water up here,  you decide just to leave it in the boiler.  ";
                    }
                    exit;
                }
                if (obj425_single_mite.location == arg1) {
                    "The mite hops out the instant you tip <<arg1.thedesc>>.  ";
                    obj425_single_mite.moveInto(nil);
                }
                "You pour the water from <<arg1.thedesc>> into  <<arg2.thedesc>>, where it seeps into the once dry sand,  wetting it through.  ";
                arg2.prop820;
                arg2.prop819('wet sand');
                arg1.prop820;
                exit;
            } else if (local2 == 'salt water' && local1 == 'dry sand') {
                if (arg2 == obj239_boiler && obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
                    obj239_boiler.prop858;
                } else if (arg2 == obj213_pail || arg2 == obj239_boiler) {
                    "You consider all the effort it took to haul the water out of the ocean  and decide against it.  ";
                    exit;
                }
                "You pour the sand from <<arg1.thedesc>> into <<arg2.thedesc>>,  displacing much of the water and wetting the sand through.  ";
                arg2.prop820;
                arg2.prop819('wet sand');
                arg1.prop820;
                exit;
            }
        }
        if (arg2.prop501 && !isclass(arg2, class431)) {
            "\^<<arg2.thedesc>> is already full of <<say(local2)>>.  ";
            exit;
        }
    }

    prop859(arg1) = {
        if (arg1.prop504 == 'wet sand' && !isclass(arg1, class431)) {
            "The clotted wet sand clings to the inside of <<arg1.thedesc>>,  making it nearly impossible to pour out.  ";
            exit;
        }
    }

    prop860(arg1, arg2) = {
        local local1 = arg1.prop504, local2;

        if (arg1 == obj457_bottle && obj425_single_mite.location == obj457_bottle && arg2 == obj458_bottle_bottles) {
            obj458_bottle_bottles.ioAction13_in(Me, obj457_bottle);
            exit;
        }
        if (arg1 == obj239_boiler) {
            if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
                obj239_boiler.prop805;
            } else {
                "After all the effort it took to haul the water up here, you decide just to  leave it in the boiler.  ";
            }
            exit;
        }
        if (arg2 == obj213_pail || arg2 == obj239_boiler) {
            arg2.prop861(arg1);
            exit;
        }
        if (!isclass(arg1, class431) && !isclass(arg1, obj442)) {
            if (length(arg1.contents)) {
                if (obj425_single_mite.location == arg1) {
                    "As you tip out <<arg1.thedesc>>, the mite leaps out and disappears.  \n";
                    obj425_single_mite.moveInto(nil);
                    local2 = 1;
                }
                if (length(arg1.contents)) {
                    "(You fish out the <<(local2 ? "other " : "")>>contents of <<arg1.thedesc>>).  \n";
                    fun207(arg1, Me);
                }
            }
        }
        if (isclass(arg2, class431) || isclass(arg2, obj442)) {
            if (isclass(arg1, class431) && arg2 != obj459_cavity) {
                "You scoop a few handfuls of <<say(local1)>>  <<arg2.prop149>>to <<arg2.thedesc>>.  ";
            } else {
                "You tip out <<arg1.thedesc>>, spilling <<say(local1)>>  <<arg2.prop149>>to <<arg2.thedesc>>.  ";
            }
            if (isclass(arg2, obj442)) {
                arg2.prop831(local1);
            }
        } else {
            "You fill <<arg2.thedesc>> with <<say(local1)>> from <<arg1.thedesc>>.  ";
            if (local1 == 'salt water' && length(arg2.contents)) {
                fun267(arg2.contents);
            }
        }
        arg2.prop819(arg1.prop504);
        arg1.prop820;
    }

    prop862(arg1) = {
        local local1, local2;

        local1 = arg1.prop504;
        local2 = length(arg1.contents);
        if (local1 == nil && local2 == 0) {
            "It appears to be empty.  ";
        } else if (local1 != nil) {
            "It seems to contain some <<say(local1)>>.  ";
        }
        if (local2 > 0) {
            "You can <<(local1 ? "also" : "")>> see <<fun7(arg1)>> in it.  ";
        }
    }

    prop863(arg1) = {
        if (isclass(arg1, class431)) {
            "You scoop up a handful of <<say(arg1.prop504)>> from <<arg1.thedesc>>  and pour it out again.  ";
        } else {
            "The <<say(arg1.prop504)>> spills out of <<arg1.thedesc>> and rejoins  the elements.  ";
        }
        arg1.prop820;
    }
;

obj457_bottle: class220, class218, class75, class253
    noun = 'bottle'

    adjective = 'clear' 'glass' 'pop' 'single' 'individual' 'cola' 'coke' 'soda'

    prop525 = "It's smooth to the touch.  "

    prop149 = "in"

    prop511 = "cram"

    prop504 = nil

    prop656 = true

    prop563 = true

    prop512 = "bottle"

    prop513 = "the bottle"

    prop514 = "a bottle"

    sdesc = {
        if (obj458_bottle_bottles.prop179(Me) || obj577_glass_recycling_bin.prop179(Me)) {
            "single ";
        }
        if (obj561_antique_bottle.prop179(Me)) {
            "clear ";
        }
        "glass bottle";
    }

    prop167 = {
        "It's a clear glass soda bottle.  ";
        self.doAction26_look_in(Me);
        self.prop717;
        if (!self.prop891) {
            self.prop891 = true;
        }
    }

    location = nil

    prop881 = nil

    prop124 = true

    doAction24(arg1) = {
        if (!self.prop891) {
            self.prop891 = true;
        }
        pass doAction24;
    }

    ioAction13_in(arg1, arg2) = {
        if (arg2 == obj562_cork) {
            "The cork doesn't fit in this bottle.  ";
        } else if (arg2.prop508 > 1) {
            "\^<<arg2.thedesc>> is too wide to fit through the narrow mouth of the bottle.  ";
        } else {
            pass ioAction13_in;
        }
    }

    verDoAction156_open(arg1) = { "It's not sealed. "; }

    verDoAction17_close(arg1) = {
        if (arg1.prop125(obj562_cork)) {
            "If you mean with the cork, it doesn't fit in this bottle.  ";
        } else {
            "You haven't got anything to seal it with.  ";
        }
    }

    prop140 = {
        local local1 = self.prop504;

        if (local1 == nil) {
            return 2;
        } else if (local1 == 'salt water' || self.prop504 == 'dry sand') {
            return 3;
        } else if (local1 == 'wet sand') {
            return 4;
        }
    }

    prop141 = 3

    prop181 = 1

    prop182 = 2

    prop505 = [obj222_the_vendor]

    prop914 = { return obj302_length_of_rope.prop931(self); }
;

obj458_bottle_bottles: obj442, class33
    noun = 'bottle' 'bottles'

    adjective = 'glass' 'collection' 'pile' 'of'

    prop509 = true

    prop525 = "They're smooth, as you'd expect.  "

    location = obj485_glass_recycling_cani

    sdesc = {
        "pile of ";
        if (self.location == obj285___Damp_Sand__Beneath) {
            "broken ";
        }
        " bottles";
    }

    prop167 = {
        if (self.location == obj485_glass_recycling_cani) {
            "The bottles fill the plastic canister nearly to the top.  ";
        } else {
            "The bottles litter the beach, many of them shattered into sharp, dangerous fragments.  Spread among the broken glass are numerous thin, blue, plastic shards, the only remainders of the recycling canister.  ";
        }
    }

    adesc = "the pile of glass bottles"

    verDoAction157_search(arg1) = { "All you find is bottles, bottles, and more bottles.  "; }

    verDoAction24(arg1) = { }

    doAction24(arg1) = { self.ioAction19_out(arg1, obj457_bottle); }

    ioSynonym('Action13_in') = 'Action121_drop_on'

    verIoAction13_in(arg1) = { }

    ioAction13_in(arg1, arg2) = {
        local local1 = self.location == obj485_glass_recycling_cani;

        if (arg2 == obj458_bottle_bottles) {
            if (local1) {
                "The bottles are already in the canister.  ";
            } else {
                "The pile is already full of bottles.  ";
            }
        } else if (arg2 == obj425_single_mite || arg2 == obj457_bottle && obj425_single_mite.location == obj457_bottle) {
            obj425_single_mite.moveInto(nil);
            if (length(arg2.contents)) {
                fun207(arg2, obj285___Damp_Sand__Beneath);
            }
            if (length(obj457_bottle.prop502)) {
                "(First removing <<obj457_bottle.prop502[1].thedesc>> from the bottle.)  \b";
                obj457_bottle.prop657;
            }
            obj457_bottle.moveInto(nil);
            obj425_single_mite.prop901;
        } else if (arg2 == obj457_bottle) {
            if (length(arg2.contents)) {
                "(First fishing out the contents of <<arg2.thedesc>>.)  \b";
                fun207(arg2, Me);
            }
            if (length(obj457_bottle.prop502)) {
                "(First removing <<obj457_bottle.prop502[1].thedesc>> from the bottle.)  \b";
                if (obj457_bottle.prop128) {
                    obj457_bottle.prop128 = nil;
                }
                obj457_bottle.prop502 = obj457_bottle.prop502[1] -= obj457_bottle;
                obj457_bottle.prop502 -= obj457_bottle.prop502[1];
            }
            if (local1) {
                "You toss the bottle back into the blue recycling canister.  ";
            } else {
                "You toss the bottle onto the pile.  ";
            }
            obj457_bottle.moveInto(nil);
        } else {
            if (local1) {
                "But the canister is for bottles only!  ";
            } else {
                "You consider the broken shards of glass littering the beach, and then  examine your bare feet.  You change your mind when it occurs to you  that you might not be able to retrieve it without slicing up your feet.  ";
            }
        }
    }

    verIoAction19_out(arg1) = { }

    ioAction19_out(arg1, arg2) = {
        local local1 = self.location == obj485_glass_recycling_cani;

        if (arg2 != obj457_bottle && arg2 != obj458_bottle_bottles) {
            if (local1) {
                "You can't see <<arg2.thedesc>> in the glass recycling bin.  ";
            } else {
                "You can't see <<arg2.thedesc>> in the pile of bottles.  ";
            }
        } else if (Me.prop125(obj457_bottle)) {
            "You've already got one.  If you want to take another, perhaps you should dispose  of that one first.  ";
        } else if (obj457_bottle.prop293 && obj457_bottle.location != nil && obj457_bottle.prop507 == nil) {
            "You've already left one lying around on the beach.  You decide you'd rather   not be a litterbug.  ";
        } else {
            "You pluck a bottle <<(local1 ? "at random" : "gingerly")>> from the  <<(local1 ? "glass recycling canister" : "edge of the pile")>>.  ";
            obj457_bottle.prop820;
            obj457_bottle.moveInto(Me);
            setit(obj457_bottle);
            if (!obj457_bottle.prop293) {
                obj457_bottle.prop295;
            }
        }
    }

    prop505 = [obj222_the_vendor]

    prop823(arg1) = { "You scoop a few handfuls of <<say(arg1)>> into <<self.thedesc>>, but it feels  like a futile effort.  "; }

    prop831(arg1) = { "The <<say(arg1)>> spills down among the bottles and disappears.  "; }

    prop828 = {
        if (obj458_bottle_bottles.location == obj485_glass_recycling_cani) {
            "You'd just be making a mess of the beach.  Better leave the bottles in their  canister.  ";
        } else {
            "You can't empty the pile of broken bottles.  ";
        }
    }

    doSynonym('Action102_move_north') = 'Action103_move_south'

    doSynonym('Action102_move_north') = 'Action106_move_northeast'

    doSynonym('Action102_move_north') = 'Action107_move_northwest'

    doSynonym('Action102_move_north') = 'Action108_move_southeast'

    doSynonym('Action102_move_north') = 'Action109_move_southwest'

    verDoAction102_move_north(arg1) = {
        if (obj485_glass_recycling_cani.location == obj447___Storage_Area__) {
            "The cement walls of the storage area block your way.  ";
        } else if (obj485_glass_recycling_cani.location == obj437___Under_Pavilion__) {
            "The dunes piled up against the base of the pavilion block your way.  ";
        } else if (obj485_glass_recycling_cani.location == nil) {
            "You can't push the pile of broken bottles anywhere.  ";
        }
    }

    verDoAction105_move_west(arg1) = {
        if (obj485_glass_recycling_cani.location == obj447___Storage_Area__ || obj485_glass_recycling_cani.location == nil) {
            self.verDoAction102_move_north(arg1);
        } else if (obj485_glass_recycling_cani.location == obj437___Under_Pavilion__) {
            "You try to push the glass canister back towards the storage area,  but it's just too heavy to push uphill in this loose sand.  ";
        }
    }

    doAction105_move_west(arg1) = { "You can't.  "; }

    doSynonym('Action59_move') = 'Action155_push'

    verDoAction59_move(arg1) = { "It's heavy, but you manage to move it a couple of inches.  "; }

    verDoAction104_move_east(arg1) = { }

    doAction104_move_east(arg1) = {
        if (obj485_glass_recycling_cani.location == obj447___Storage_Area__ && !obj484_gate.prop124) {
            "You'll have to open the gate first.  ";
        } else if (obj485_glass_recycling_cani.location == nil) {
            "You can't push the pile of bottles anywhere.  ";
        } else if (obj485_glass_recycling_cani.location == obj447___Storage_Area__) {
            "You give the glass recycling canister a tentative shove.  It proves to be surprisingly heavy.  You bend at the knees and put your shoulder to it.  Pushing against the hard cement floor, you manage to slide the canister out into the sand beneath the pavilion.  \b";
            obj485_glass_recycling_cani.moveInto(obj437___Under_Pavilion__);
            obj577_glass_recycling_bin.moveInto(obj447___Storage_Area__);
            obj485_glass_recycling_cani.prop131 = true;
            Me.prop161(obj437___Under_Pavilion__);
        } else if (obj485_glass_recycling_cani.location == obj437___Under_Pavilion__) {
            "You put your shoulder to the canister again and try to move it further east, fighting the friction of the sandy floor.  Sand piles up against the leading edge of the canister, but still you struggle onward, making slow progress.  You make it almost to the far end of the pavilion, where the canister freezes in the sand.  You brace yourself and try to force it with a good, strong shove... until \(crash!\) the canister goes over on its side, and you with it.  You look up to find that the canister has begun rolling down the slope towards the ocean.  You chase after it, but it's picking up speed.  It continues its descent, heading towards one of the pier's cement pylons.  You redouble your efforts to catch it, and it looks like you just... might... make it... \(Crash!\)  The canister rebounds off the pylon and shatters with a hideous cacophony,  spewing bottles and chunks of thin blue plastic in a rain of broken glass.  \b";
            obj485_glass_recycling_cani.moveInto(nil);
            obj577_glass_recycling_bin.moveInto(nil);
            obj458_bottle_bottles.moveInto(obj285___Damp_Sand__Beneath);
            obj584_plastic_shards.moveInto(obj285___Damp_Sand__Beneath);
            addword(self, &adjective, 'broken');
            Me.prop161(obj285___Damp_Sand__Beneath);
            obj20.prop484 = ['penitent', 'contrite'];
        }
    }
;

obj459_cavity: obj442, obj648
    noun = 'cavity'

    adjective = 'shallow' 'curious'

    location = obj646_dragon_sculpture

    prop983 = nil

    sdesc = "cavity"

    prop167 = {
        "It's a shallow cavity about the size of your two cupped palms, in both depth  and circumference.  ";
        self.doAction26_look_in(Me);
    }

    verDoAction26_look_in(arg1) = { }

    doAction26_look_in(arg1) = {
        if (fun4(self.contents) > 0) {
            "In ";
            self.thedesc;
            " you see ";
            fun7(self);
            ".  ";
        } else {
            "There's nothing in it.  ";
        }
    }

    prop984(arg1) = { }

    ioAction121_drop_on(arg1, arg2) = { self.verIoAction13_in(arg1); }

    prop927(arg1) = { }

    ioAction13_in(arg1, arg2) = {
        if (isclass(arg2, class422_generic_substance)) {
            pass ioAction13_in;
            exit;
        }
        if (arg2 == obj436_conch_shell) {
            if (self.prop983) {
                "You set the conch shell in the cavity.  Free of your grasp, the crab crawls  from the dragon's face and falls to the wet sandy floor, where it retreats  to its shell once more.  ";
            } else {
                "You set the conch shell in the cavity.  It's a perfect fit, and somehow you can feel the... rightness... of it.  A shiver seems to ripple over the dragon's spine, as if presaging some magical awakening.   Uh oh.  Sensing the lack of any restraint, the crab has also begun to stir.  It probes the sculpted sand beneath it and, finding no resistance, extends its claws and scuttles out of the cavity.  It falls from the dragon's face, then retreats hastily back into its shell on impact with the wet sandy floor.  ";
                self.prop983 = true;
            }
            obj436_conch_shell.moveInto(obj646_dragon_sculpture.location);
        } else if (arg2 == obj560_conch_shell) {
            obj346.prop985;
        } else if (arg2.prop140 > 2) {
            "\^<<arg2.thedesc>> is too heavy.  The weight would probably collapse the  dragon's entire face.  ";
        } else if (arg2.prop141 > 3) {
            "\^<<arg2.thedesc>> is too large to fit in the cavity.  ";
        } else {
            "You try setting <<arg2.thedesc>> into the cavity.  Nothing happens, and  somehow, it just doesn't feel right.  Disappointed, you reclaim <<arg2.thedesc>>.  ";
        }
    }

    prop181 = 1

    prop182 = 2

    prop808 = { "I usually give them some kind of horn, but today I just couldn't find anything that  felt right for it.  "; }

    prop823(arg1) = { "You pick up a handful of wet sand and pour it into the cavity, but nothing happens.  "; }

    prop831(arg1) = { "The <<say(arg1)>> merely makes a minute addition to the dragon's already great bullk.  "; }
;

fun460: function(arg1, arg2) {
    local local1 = 1, local2;

    local2 = length(arg1);
  label301308:
    if (local1 <= local2) {
        if (local1 > 1) {
            if (local1 == local2) {
                " <<say(arg2)>> ";
            } else {
                ", ";
            }
            {{{DISC}}}
        }
        arg1[local1].thedesc;
        local1++;
        goto label301308;
    }
}

obj461_colony_of_mites: class33
    noun = 'mites' 'bug' 'creatures' 'creature' 'insects' 'insect' 'crustaceans' 'crustacean' 'colony' 'mite' 'bugs'

    adjective = 'colony' 'sand' 'tiny' 'of'

    prop508 = 0

    prop141 = 0

    prop140 = 0

    prop509 = true

    prop293 = nil

    location = obj440_organic_looking_cast

    sdesc = "colony of mites"

    prop167 = {
        if (!self.prop891) {
            "You lean in to take a close look.  They're too tiny to see much detail, but there are hundreds of them zipping around the tall spires.  They seem to be crustaceans.  Or maybe some kind of insect.   In any case, they have six legs.  Or maybe eight.  Call yourself crazy, but it looks like some of them are carrying grains of sand.  You lean in further, and on closer inspection are able to confirm your theory.  Then, right before your eyes, a small cluster of mites  carries a bit of shiny something, perhaps a speck of broken glass,  into the castle.  They bring it to the very top of the tallest spire.   Somehow, they melt down the shiny fragment and assimilate into the  castle.  Perhaps it's just your imagination, but you'd swear there  was a miniscule plume of smoke curling about the spire.  ";
            self.prop891 = true;
            obj664_smoke.moveInto(Me.location);
        } else {
            "The castle swarms with hundreds of tiny crustaceans (at least that's  what you think they are), scurrying busily about on their six legs (or eight),  carrying grains of sand to and fro.  They seem to actually be \(building\) the  glassy castle, but you can't imagine how.  ";
        }
    }

    prop988 = { "It's difficult, because they're so small... but you lean in close, follow one likely  specimen, and... got it!  "; }

    verDoAction73_touch(arg1) = {
        if (Me.prop974) {
            self.prop989;
        }
    }

    doAction73_touch(arg1) = {
        self.prop988;
        "You set your hand down on the slick castle, trying to catch one of the mites.  ";
        self.prop990;
        obj664_smoke.moveInto(Me.location);
        obj626_red_welt.moveInto(obj231_hands);
        Me.prop519(&prop974);
    }

    prop989 = "Nope.  Not after the last burn you received.  "

    prop990 = "\(Ouch!\)  You instinctively beat at the air with your wounded hand, but the creature has already been dislodged.  You look at the tiny red welt already swelling on the heel of your palm.  Is it... smoking?  No, it must be just an illusion caused by your sudden state of distress.  But you'd swear you saw a tiny plume of smoke rising from your palm.  "

    doSynonym('Action24') = 'Action94_catch'

    verDoAction24(arg1) = {
        if (Me.prop125(obj425_single_mite)) {
            "It occurs to you that you might figure out what to do with the one you've  got, first.  ";
        } else if (Me.prop974) {
            self.prop989;
        }
    }

    doAction24(arg1) = {
        self.prop988;
        "You stand up to examine your catch in better light.  ";
        self.prop990;
        obj664_smoke.moveInto(Me.location);
        obj626_red_welt.moveInto(obj231_hands);
        Me.prop519(&prop974);
    }

    verDoAction13_in(arg1, arg2) = {
        if (arg2.location != Me) {
            "You don't have <<arg2.thedesc>>.  ";
        } else if (obj425_single_mite.location != nil) {
            "You'd better figure out what to do with the one you've got first.  ";
        } else if (!isclass(arg2, class218)) {
            "You could probably capture one if you had an appropriate container to put  it in, but <<arg2.thedesc>> isn't it.  ";
        }
    }

    doAction13_in(arg1, arg2) = {
        local local1 = arg2.prop504;

        self.prop988;
        if (arg2 == obj240_sieve) {
            "You toss the mite hastily into the sieve, where it slips through the mesh  and disappears into the sand.  ";
        } else if (arg2 == obj588_can) {
            "You try to cram the mite through the narrow mouth of the can, but it  catches on the pop top and leaps off the can into the sand.  ";
        } else if (arg2 == obj213_pail) {
            "You toss the mite into the broad mouth of the pail.  ";
            if (obj213_pail.prop501) {
                "It dives into the water along a shallow arc and concludes its dive  with a mighty leap that carries it up and out of the pail.  ";
            } else {
                "It rebounds off the bottom with a single mighty leap that carries it  up and over the edge of the pail.  ";
            }
        } else if (local1 == nil) {
            "You cram the mite through the mouth of the bottle.  Just as you're beginning to enjoy your mighty triumph, you detect a sudden  whiff of burning glass.  You peer into the bottle to discover that the  mite is burning a tiny hole straight through the bottom!  The mite leaps  out and disappears into the beach sand, leaving behind only a tiny drop  of molten glass which cools instantly, resealing the hole.  ";
            obj664_smoke.moveInto(Me.location);
        } else if (local1 != 'salt water') {
            "You cram the mite through the mouth of the sand filled the bottle,  and naturally, it hops back out immediately.  ";
        } else if (local1 == 'salt water') {
            "You cram the mite through the mouth of the water filled the bottle.  It worked!  You've got it!  The tiny mite is floating around on the surface of the water.  Uh oh.  You watch as the mite begins to paddle its six (or eight) legs furiously, headed for the bottom of the bottle.  Whatever you're going to do with the mite, you'd better do it soon.  ";
            obj425_single_mite.moveInto(obj457_bottle);
            notify(obj425_single_mite, &prop991, 2);
            obj20.prop484 = ['hurried'];
        }
    }

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = { return class245.prop808; }

    prop807 = { return class245.prop807; }
;

obj462_empty: class82
    verb = 'empty' 'tip' 'dump' 'pour'

    sdesc = "empty"

    prepDefault = obj96_in

    doAction = 'Action167_empty'
    ioAction(obj96_in) = 'Action168_empty_in'
    ioAction(obj91_on) = 'Action169_empty_on'
    ioAction(obj93_from) = 'Action170_empty_from'
;

obj463_fill: class82
    verb = 'fill'

    sdesc = "fill"

    prepDefault = obj93_from

    doAction = 'Action171_fill'
    ioAction(obj93_from) = 'Action172_fill_from'
    ioAction(obj68_with) = 'Action173_fill_with'
;

obj464___Deep_Water__South_: obj265
    noun = 'loc-south4'

    prop839 = obj454___Shallow_Water__Sou

    prop650 = { return self.prop687; }

    prop687 = obj468___Underwater_____dri

    sdesc = "\(Deep Water, South of Pier\), (treading water)"

    prop167 = { "There's nothing but endless ocean to the east.  Shallower waters beckon  to the west.  The long cement pier finally comes to an end to the north of you, its supporting pylons disappearing into the murky depths.  "; }

    prop666 = { "You can swim west, into shallow water, north, beneath the pier, or  dive beneath the surface.  "; }

    prop304 = { "You gaze longingly to the horizon.  Though it beckons you, you decide you're safer staying close to shore.  "; }

    prop308 = { return self.prop304; }

    prop310 = { return self.prop304; }

    prop305 = {
        self.prop886;
        return obj454___Shallow_Water__Sou;
    }

    prop309 = {
        self.prop886;
        return obj453___Shallow_Water__Ben;
    }

    prop302 = {
        "You launch yourself north with a heart pumping butterfly stroke.  \b";
        return obj490___Deep_Water__Beneat;
    }

    prop303 = { "You launch yourself south with a strong dolphin kick, but you don't want to drift too far downshore from the hotel, so eventually you head back.  "; }

    prop311 = { return self.prop303; }

    prop307 = {
        if (obj303_broken_stave.location == Me || obj303_broken_stave.prop128) {
            "You try to dive below the surface, but the buoyancy of the stave prevents you from going under.  ";
        } else {
            return obj468___Underwater_____dri;
        }
    }
;

obj465_conch_shell: class220, class594, class42, class253
    noun = 'shell'

    adjective = 'conch'

    prop505 = [obj222_the_vendor]

    prop293 = true

    prop708 = 2

    prop915 = "There's no good spot on the conch to which to tie a knot.  "

    prop914 = { return obj302_length_of_rope.prop931(self); }

    location = obj504_rock

    prop891 = nil

    prop131 = nil

    prop512 = "shell"

    prop513 = "the shell"

    prop514 = "a shell"

    sdesc = "conch shell"

    prop167 = {
        if (self.location == obj299_deep_fissure) {
            "You can't see much of it while it's hidden in the fissure.  If only you had some  way to lure it out!  ";
        } else {
            "It's a beautiful conch shell, half the size of your head.  Nature has painted its whorls a luscious, glossy pink, and dotted them with subtly toned spots of brown and white.  ";
            if (self.prop891) {
                "A crab is packed tightly inside it, entirely hidden but for one bony claw.  ";
            }
        }
    }

    prop932 = nil

    prop902 = { notify(obj465_conch_shell, &prop901, 0); }

    prop901 = {
        if (self.location == obj299_deep_fissure && Me.location == obj468___Underwater_____dri && Me.prop876) {
            if (obj426_shrimp.location == obj504_rock || obj426_shrimp.location == Me || obj426_shrimp.location == obj464___Deep_Water__South_) {
                self.prop933;
            } else if (rand(3) == 1) {
                say(self.prop934[rand(length(self.prop934))]);
            }
        } else if (self.location == obj299_deep_fissure && obj426_shrimp.location == obj464___Deep_Water__South_ && Me.location != obj468___Underwater_____dri) {
            self.prop935;
        } else if (rand(3) == 1 && self.prop179(Me) && self.prop932) {
            "\bThe conch shell rocks at the end of the strap.  ";
        }
    }

    prop934 = ['\bThe crab pops out of the fissure, spots you, and scuttles back in.  ', '\bThe crab rustles about in the dark fissure.  ', '\bThe crab sends forth one probing eye stalk, then hastily withdraws it.  ', '\bThe crab extends its claws and clacks them together menacingly.  ']

    prop910 = {
        "\bTo your amazement, the conch shell suddenly sprouts claws and eyes.   It seems to be home to a large crab, which has sensed the shrimp in  its vicinity.  Unfortunately, the crab soon spots you and scuttles  into the dark fissure bisecting the rock.  ";
        self.prop930;
    }

    prop933 = { "\bThe crab extends its eye stalks and peers tentatively from the fissure,  as if sensing the shrimp's presence.  Unfortunately, it soon spots you  and retreats back into its hole.  "; }

    prop930 = {
        self.moveInto(obj299_deep_fissure);
        addword(obj465_conch_shell, &noun, 'crab');
        self.prop891 = true;
        notify(obj465_conch_shell, &prop902, 1);
    }

    prop870 = nil

    prop936 = nil

    prop871 = { notify(obj468___Underwater_____dri, &prop937, 0); }

    prop937 = {
        if (obj561_antique_bottle.prop938 == obj464___Deep_Water__South_ && obj561_antique_bottle.prop710 == obj426_shrimp) {
            self.prop870 = true;
        } else {
            self.prop870 = nil;
            unnotify(obj465_conch_shell, &prop937);
            if (obj465_conch_shell.location == obj299_deep_fissure && Me.location != obj468___Underwater_____dri) {
                unnotify(obj465_conch_shell, &prop901);
            }
        }
    }

    prop935 = {
        unnotify(obj465_conch_shell, &prop937);
        unnotify(obj426_shrimp, &prop901);
        obj255_white_rubber_strap.prop502 -= obj426_shrimp;
        obj426_shrimp.prop502 -= obj255_white_rubber_strap;
        self.moveInto(obj255_white_rubber_strap.location);
        obj255_white_rubber_strap.prop502 += self;
        self.prop502 += obj255_white_rubber_strap;
        self.prop870 = nil;
        self.prop936 = true;
        self.prop939 = true;
        obj426_shrimp.moveInto(nil);
        if (Me.location == obj464___Deep_Water__South_) {
            "\b\^<<self.prop710.thedesc>> disappears beneath the waves with a sudden jerk,  but pops back to the surface only a moment later.  ";
        }
    }

    verIoAction121_drop_on(arg1) = { }

    ioAction121_drop_on(arg1, arg2) = {
        if (arg2 != obj212_brick) {
            "You can't put it on <<self.thedesc>>.  ";
        } else {
            "You look ruefully at the shell.  You just can't bear to destroy its delicate beauty,  and decide to spare it.  ";
        }
    }

    prop525 = "It feels slick and smooth to the touch.  "

    prop527 = {
        if (self.location != Me) {
            "You need to be holding <<self.thedesc>> to listen to it.  ";
        } else {
            "It's not going to make any sounds while the crab is in it.  ";
        }
    }

    doAction73_touch(arg1) = {
        if (self.location == obj504_rock || self.location == obj299_deep_fissure) {
            self.doAction24(arg1);
        } else {
            pass doAction73_touch;
        }
    }

    verDoAction24(arg1) = {
        if (self.location == obj299_deep_fissure && Me.prop940) {
            "No way, not after the bite (or pinch) you got last time.  ";
        } else {
            pass verDoAction24;
        }
    }

    doAction24(arg1) = {
        if (self.location == obj504_rock) {
            "As you reach for the attractive looking shell, it suddenly sprouts legs  and scuttles into a deep fissure that bisects the rock!  Apparently, the  shell is home to some sort of crab.  ";
            self.prop930;
        } else if (self.location == obj299_deep_fissure && Me.prop940) {
            "No way, not after the bite (or pinch) you got last time.  ";
        } else if (self.location == obj299_deep_fissure) {
            "You thrust your hand boldly into the fissure and probe the darkness,  trying to grab <<self.thedesc>>.  \(Ouch!\)  Something bit you!  Or maybe  pinched you.  Either way, you jerk your hand free and examine it.   Fortunately, whatever it was didn't break the skin.  It occurs to you to  find some way to lure the crab out.  ";
            obj20.prop484 = ['stung'];
            Me.prop519(&prop940);
        } else if (self.prop939) {
            self.moveInto(Me);
            obj255_white_rubber_strap.prop502 -= self;
            self.prop502 -= obj255_white_rubber_strap;
            self.moveInto(nil);
            self.prop932 = nil;
            obj436_conch_shell.moveInto(Me);
            obj436_conch_shell.prop295;
            notify(obj436_conch_shell, &prop902, 1);
            "You harvest the shell from your simple trap.  It proves to be quite  hefty.  The crab has withdrawn deep into the shell's spirals. You tug on the rubber strap, and it pulls free with a small  \(snap\), leaving the strap tied to <<obj255_white_rubber_strap.prop502[1].thedesc>>. \b You're still admiring your shiny new prize when your eye is caught by a tiny  motion from above.  Your eyes are drawn to the very tip of the pier, where  the old man is just visible as a small blob of shadow against the pale sky.  It's  hard to tell from here, but he seems to be putting his pole away. ";
        } else {
            pass doAction24;
        }
    }

    verIoAction124_show_to(arg1) = {
        if (self.location == obj504_rock) {
            "It's unlikely that a conch shell would want anything you might have to offer.  ";
        }
    }

    ioAction124_show_to(arg1, arg2) = {
        if (arg2 == obj426_shrimp) {
            obj465_conch_shell.prop933;
        } else {
            "The crab doesn't appear to be interested in <<arg2.thedesc>>.  You momentarily  wonder how one tells the difference between a disinterested crab and an excited one.  ";
        }
    }

    verIoAction123_give_to(arg1) = { }

    ioAction123_give_to(arg1, arg2) = {
        if (arg2 == obj556_husks_peanuts_peanut || arg2 == obj426_shrimp && length(arg2.prop502) == 0) {
            obj299_deep_fissure.prop909(arg2);
        } else if (self.location == obj504_rock) {
            "It's unlikely that a conch shell would want anything you have to offer.  ";
        } else if (self.location == obj299_deep_fissure) {
            "\"Hmm...\" you think to yourself, \"...maybe I can lure the crab out with  a tasty treat.\"  You give yourself a little pat on the back for your cleverness.  \b";
        }
        obj299_deep_fissure.ioAction13_in(arg1, arg2);
    }

    verDoAction112_eat(arg1) = { "It occurs to you that you'd have more luck if you caught the thing, first.  "; }
;

obj466___Underwater_____dri: obj217
    noun = 'loc-north5'

    prop697 = obj489___Deep_Water__North_

    prop127 = { return inherited.prop127 + obj489___Deep_Water__North_.contents; }

    prop518 = obj489___Deep_Water__North_

    sdesc = "\(Underwater\), (drifting)"

    prop167 = { "The gradually sloping ocean floor is only about ten feet below the  surface here.  It's layered with a suspension of mud and  fine silt that sways to and fro with the pulsing tide.  Small, leafy plants  climb from the mud like grasping fingers.  "; }

    prop666 = { "You can swim to the surface.  "; }

    prop306 = obj489___Deep_Water__North_
;

obj467___Underwater_____dri: obj217
    noun = 'loc-under5'

    prop697 = obj490___Deep_Water__Beneat

    prop127 = { return inherited.prop127 + obj490___Deep_Water__Beneat.contents; }

    prop518 = obj490___Deep_Water__Beneat

    prop687 = obj397___Underwater_____dri

    sdesc = "\(Underwater\), (drifting)"

    prop167 = { "The sandy ocean floor lies about ten feet below the surface, layered with silt  and dotted with climbing green fingers of sea grass.  The angled cement pillars  that support the pier end here.  Just beyond the final pair of pillars is a sudden  drop off, a steep slope that leads down and down, far beyond your limited visibility.  "; }

    prop666 = { "You can dive into deeper water, or swim to the surface.  "; }

    prop306 = obj490___Deep_Water__Beneat

    prop307 = obj496___Underwater_____dri
;

obj468___Underwater_____dri: obj217
    noun = 'loc-south5'

    prop697 = obj464___Deep_Water__South_

    prop127 = { return inherited.prop127 + obj464___Deep_Water__South_.contents; }

    prop518 = obj464___Deep_Water__South_

    sdesc = "\(Underwater\), (drifting)"

    prop167 = {
        "The gradually sloping ocean floor is only about ten feet below the surface  here.  The sandy bottom is layered with a suspension of mud and fine silt.   Here and there, thin leaved plants claw through the mud like grasping fingers.   Dominating the entire area is an enormous slab of barnacle encrusted rock.";
        if (obj465_conch_shell.location == obj504_rock) {
            "\n\tResting on the rock is a great conch shell.  ";
        }
    }

    prop666 = { "You can swim up to the surface.  "; }

    prop306 = obj464___Deep_Water__South_

    prop908 = nil

    prop155(arg1) = {
        inherited.prop155(arg1);
        if (obj465_conch_shell.location == obj299_deep_fissure) {
            if (self.prop130) {
                if (self.prop908) {
                    "Hmm.  It seems that the crab harvested the bait from your simple  trap.  It occurs to you that some buoyancy might help.  ";
                    self.prop908 = nil;
                }
            }
            "\bThe crab, which had resumed its perch on top of the rock, scuttles  back into the fissure on your approach.  ";
            if (getfuse(obj465_conch_shell, &prop901) == nil) {
                notify(obj465_conch_shell, &prop901, 0);
            }
        }
    }

    prop230(arg1) = {
        if (obj465_conch_shell.location == obj299_deep_fissure && obj426_shrimp.location != obj464___Deep_Water__South_) {
            unnotify(obj465_conch_shell, &prop901);
        }
        if (obj426_shrimp.location == obj504_rock && length(obj426_shrimp.prop502) > 0) {
            obj255_white_rubber_strap.prop502 -= obj426_shrimp;
            obj426_shrimp.prop502 -= obj255_white_rubber_strap;
            obj426_shrimp.prop812;
            self.prop908 = true;
        }
        pass prop230;
    }

    prop152(arg1) = {
        if (arg1 == obj426_shrimp && length(arg1.prop502) == 0) {
            obj299_deep_fissure.prop909(obj426_shrimp);
            return;
        }
        if (arg1.prop710 == obj426_shrimp && arg1.prop649 > 0 || arg1 == obj426_shrimp && arg1.prop710 && arg1.prop710.prop649 > 0) {
            if (obj465_conch_shell.location == obj504_rock) {
                obj465_conch_shell.prop910;
            }
            obj465_conch_shell.prop870 = true;
            notify(obj465_conch_shell, &prop871, 1);
        }
        pass prop152;
    }
;

obj469: class31
    prop872 = true

    prop873 = true

    prop518 = nil

    prop687 = nil

    prop698 = [obj287___Damp_Sand__North_o, obj286___Damp_Sand__South_o, obj285___Damp_Sand__Beneath]

    prop152(arg1) = {
        local local1, local2, local3, local4, local5;

        if (arg1 == obj436_conch_shell || obj436_conch_shell.location == arg1) {
            obj436_conch_shell.prop811;
            exit;
        }
        if (length(arg1.prop502) > 0 && !isclass(arg1, class215) && arg1 != obj225_goggles) {
            arg1 = arg1.prop502[1];
        }
        local2 = length(arg1.prop502);
        if (local2 > 0 && arg1 != obj225_goggles) {
            local1 = true;
        }
        if (local2 > 0) {
            local3 = arg1.prop502[1];
        }
        if (local2 > 1) {
            local4 = arg1.prop502[2];
        }
        local5 = fun410(arg1.prop515);
        if (arg1 == obj426_shrimp && length(arg1.prop502) == 0) {
            "The instant you release your grip, the shrimp darts  from your hand and disappears into the depths.  ";
            obj426_shrimp.prop812;
            return;
        }
        if (obj468___Underwater_____dri.prop874) {
            "You shove <<arg1.thedesc>>";
        } else {
            "You let go of <<arg1.thedesc>>";
        }
        if (local2 > 1) {
            ", <<local4.thedesc>>";
        }
        if (local1) {
            " and <<local3.thedesc>>";
        }
        if (obj468___Underwater_____dri.prop874) {
            " into the fissure";
        }
        ".  ";
        if (local5 > 0) {
            if (obj468___Underwater_____dri.prop874) {
                "Naturally, as soon as you let go of <<(local1 ? "them, they" : "it, it")>> float<<(local1 ? "" : "s")>>  up to the surface of the water where <<(local1 ? "they" : "it")>> bob<<(local1 ? "" : "s")>> lightly on  the waves.  \n";
                obj468___Underwater_____dri.prop874 = nil;
            } else {
                "<<(local1 ? "Together, they" : "It")>> float<<(local1 ? "" : "s")>> up to the surface of the water and bob<<(local1 ? "" : "s")>> lightly on the waves.  \n";
            }
            if (arg1.prop649 == 0) {
                if (local3.prop649 > 0) {
                    arg1 = local3;
                } else {
                    arg1 = local4;
                }
            }
            arg1.moveInto(self.prop518);
            setfuse(&fun416, 2, arg1);
        } else {
            "<<(local1 ? "They" : "It")>> disappear<<(local1 ? "" : "s")>>  towards the murky bottom.  \n";
            arg1.moveInto(nil);
            if (arg1 == obj426_shrimp && !length(obj426_shrimp.prop502)) {
                obj426_shrimp.prop812;
                exit;
            }
            if (isclass(arg1, class215) && local2 > 0) {
                arg1 = arg1.prop502[1];
            }
            setfuse(&fun415, 5, arg1);
            arg1.prop507 = true;
            if (arg1.prop710) {
                arg1.prop710.prop507 = true;
            }
        }
    }

    prop155(arg1) = {
        if (arg1 != Me) {
            return nil;
        }
        if (!obj20.prop491 && !Me.prop875) {
            "You fill your lungs to capacity and dive into the water.  ";
            if (!Me.prop876) {
                "The cold salt water stings your eyes as you descend.  ";
                Me.prop519(&prop877);
            }
            setfuse(&fun411, 2, arg1);
            obj20.prop491 = true;
        }
        "\b";
        pass prop155;
    }

    prop878 = { "Your blurred vision and salt stung eyes make it difficult to think about  anything but clawing your way to the surface.  "; }

    prop879 = "You propel yourself blindly toward the depths.  "

    roomAction(arg1, arg2, arg3, arg4, arg5) = {
        if (isclass(arg2, class170)) {
            pass roomAction;
        } else if (!Me.prop876 && arg2.prop316) {
            if (arg2 == obj95_close) {
                if (arg3 == obj470_eyes) {
                    "You shut your eyes.  They still sting, but now you \(really\) can't see  anything.  ";
                } else {
                    self.prop878;
                }
                exit;
            } else if (arg2 == obj89_wear) {
                if (arg3 == obj225_goggles || arg3 == obj471_scuba_mask) {
                    "You struggle to put on <<arg3.thedesc>>, but your stinging eyes make it  too difficult, and <<(arg3 == obj471_scuba_mask ? "it's" : "they're")>> full of water anyway.  ";
                } else {
                    self.prop878;
                }
                exit;
            }
        } else if (!Me.prop876 && !arg2.prop316) {
            self.prop878;
            exit;
        } else if (find(self.prop880, arg2) != nil) {
            "Not while you're underwater.  ";
            exit;
        } else {
            pass roomAction;
        }
    }

    prop880 = [obj126, obj121, obj122, obj86_jump, obj364_jump_over, obj365_jump_into]

    prop130 = {
        if (Me.prop876) {
            return true;
        } else {
            return nil;
        }
    }

    lookAround(arg1) = {
        if (self.prop130) {
            pass lookAround;
        } else {
            "Your stinging eyes and blurred vision prevent you from seeing anything interesting.  ";
        }
    }

    roomCheck(arg1) = {
        if (Me.prop876 || arg1.prop316) {
            return true;
        } else {
            self.prop878;
            return nil;
        }
    }
;

obj470_eyes: class301_your_body
    noun = 'eye' 'mine' 'eyes'

    adjective = 'right' 'left' 'my'

    prop509 = true

    sdesc = "eyes"

    prop167 = { "<<(Me.prop877 ? "They still sting a bit from being dipped unprotected into salt  water.  " : "They feel ok, though if you were staying any longer, a new pair  of sunglasses would be in order.  ")>>"; }

    prop524 = "What are you, a leopard gecko?  "

    thedesc = "your eyes"

    verDoAction17_close(arg1) = {
        if (isclass(Me.location, obj217) && !Me.prop876) {
            "You shut your eyes.  They still sting, but now you \(really\) can't see anything.  ";
        } else {
            "You shut your eyes and listen to your heartbeat for a few seconds.   But you can't see anything, so you open them again.  ";
        }
    }

    prop808 = {
        if (Me.prop877) {
            "\"They do look a bit red.  Been swimming with your eyes open?\"  ";
        } else {
            "\"What exactly do you call that shade?\"  ";
        }
    }
;

obj471_scuba_mask: class65, class79
    noun = 'lenses' 'mask' 'lens'

    adjective = 'scuba' 'thick' 'glass' 'rubber' 'dive' 'black'

    prop141 = 3

    prop140 = 3

    sdesc = "scuba mask"

    prop167 = {
        if (self.prop128) {
            "You can't see much of it while you're wearing it.  ";
        } else {
            "It's an expensive looking scuba mask.  The lens is a single large piece of glass, sides angled back to offer a wider field of vision.  The lens is sealed on all sides with thick, black rubber, and held together by an equally tough neoprene strap.  ";
        }
    }

    prop206 = "The world looks pretty much the same through the glass lens of the mask.  "

    location = nil

    verIoAction121_drop_on(arg1) = { }

    ioAction121_drop_on(arg1, arg2) = {
        if (arg2 != obj212_brick) {
            "You can't put it on ";
            self.thedesc;
            ".  ";
        } else {
            "You look ruefully at the mask.  Even in your sudden blood lust, you recognize  an item of quality.  You decide to spare it.  ";
        }
    }

    verDoAction12_wear(arg1) = {
        if (self.prop128) {
            "You're already wearing the mask.  ";
        } else if (obj225_goggles.prop128) {
            "You try to put the mask on over the goggles, but it doesn't fit.  ";
        } else if (isclass(Me.location, obj217)) {
            "You try to slide the mask over your eyes while floating beneath the  surface.  Unfortunately, it's full of water, and you have no way  to clear it, so you give up in disappointment.  ";
        } else {
            pass verDoAction12_wear;
        }
    }

    doAction12_wear(arg1) = {
        Me.prop876 = true;
        self.prop128 = true;
        "You pull back the tough strap and slide the mask over your head.  It fits  snugly, creating a tight seal.  ";
    }

    doAction153_take_off(arg1) = {
        self.prop128 = nil;
        Me.prop876 = nil;
        if (isclass(Me.location, obj217)) {
            "Chilly salt water rushes in the instant you break the seal between mask  and skin, stinging your eyes and blurring your vision.  ";
            Me.prop519(&prop877);
            obj20.prop484 = ['irritated'];
        } else {
            "You strip the mask off of your head.  ";
        }
    }

    verDoAction122_drop(arg1) = {
        if (self.prop128) {
            "You'll have to remove them first.  ";
        }
    }

    prop295 = {
        obj615_black_neoprene_strap.prop295;
        pass prop295;
    }

    prop808 = {
        if (obj471_scuba_mask.isVisible(obj222_the_vendor)) {
            "He appraises the mask and whistles sharply.  ";
        }
        "\"Nice!  Bet that cost you a bundle.  I've got one almost as good,  but all my dive gear is in storage.\"  ";
    }
;

obj472: class31
    prop883 = true

    prop693 = {
        "Unfortunately, your free wheeling attitude about public nudity has not gone unnoticed.  ";
        say(self.prop884[rand(3)]);
    }

    prop884 = ['An elderly woman in khaki slacks and a white, tanktop blouse has seen you.   She screams in surprise.  Her husband, a tall man with a rigid white shock of  hair, takes her by the arm and gently steers her away.  You decide to put your  suit back on, but the damage is already done.  The elderly couple stroll quickly  out of sight.  ', 'A pack of young children in bathing suits stops chasing gulls along the beach in  order to gawk at you.  After a moment of staring in slack jawed surprise, they  begin to point and giggle hysterically.  You\'re not sure which embarrasses you  more: the suprised stares, or the amused giggles.  Regardless, you decide to put  your suit back on.  The children go back to chasing gulls and quickly disappear.  ', 'An oversexed young couple jogs by wearing only sneakers and itty bitty bikinis.   They\'re only slightly more dressed than you, and appear not at all surprised to  see you naked.  She winks and blows you a kiss.  He just leers knowingly.  You  decide to put your suit back on before they proposition you.  They look slightly  disappointed, but resume their evening jog, and are soon gone.  ']
;

obj473_path: class259
    noun = 'brick' 'bricks' 'path'

    adjective = 'brick' 'rough' 'beach'

    sdesc = "path"

    prop293 = nil

    location = obj199___Beach_Path__

    prop505 = [obj222_the_vendor]

    prop808 = { return obj212_brick.prop808; }

    prop167 = {
        if (!self.prop891) {
            "Though the pavilion to the east and the row of hotels to the west are all recent structures, the rough brick path between them shows great age.  These may be some of the very bricks you learned about on your riverboat tour of the Savannah River.  According to the tour guide, English sailing ships in the 18th and 19th centuries loaded their holds with stones to serve as ballast on the long trip across the Atlantic.  The stones were unloaded on the shores of Savannah, where the ships picked up cotton and other commodities.  Since the stones were freely available, many Savannahians began using them as building material.  These particular stones, as regular as they are, probably came over in a military ship, which would have required precisely weighted ballast in its hold.  \bYou notice that one brick in particular is quite loose.  ";
            self.prop891 = true;
            obj212_brick.moveInto(self);
            obj212_brick.prop293 = true;
        } else {
            "The beach path was constructed of rough bricks brought over from England.  ";
            if (obj212_brick.prop892 == 0) {
                "One brick in particular looks as though it might be loose.  ";
            }
            if (obj212_brick.prop892 > 0) {
                "There's an ugly gap in the path.  ";
                if (obj212_brick.location == self) {
                    "Now that the path has been breached, you could probably excavate another brick.  ";
                }
                if (obj268_mud.prop924 > 1) {
                    "The remaining bricks seem to be pretty firmly lodged in place.   You doubt you could get another out.  ";
                }
            }
        }
    }

    ioAction13_in(arg1, arg2) = {
        if (arg2 != obj212_brick) {
            "The only thing that's going to fill that ugly gap is more bricks.  ";
        } else {
            arg2.doAction13_in(arg1, self);
        }
    }

    verDoAction153_take_off(arg1) = { self.verDoAction24(arg1); }

    verDoAction24(arg1) = {
        if (!self.prop891) {
            "You decide that you really should take a closer look before dismantling the path.  ";
        } else {
            "You can't take the brick path.  ";
        }
    }
;

obj474: obj472
    prop890 = true

    prop682 = 'cement'

    prop683 = { "The floor of the pier and pavilion seems to be one enormous, unbroken sheet of  cement.  It's ridiculous, of course, but you can see no seams anywhere.  "; }

    prop498 = {
        if (rand(3) < 3) {
            say(self.prop885[rand(length(self.prop885))]);
        }
    }

    prop885 = ['\bA young boy wearing a bright blue bathing suit and matching flip-flops runs by.  ', '\bAn elderly couple strolls past you, hand in hand, clearly enjoying the sunset.  ', '\bA fat, grey gull swoops past you, lands momentarily on the nearby railing, and  then launches itself back into the air.  ', '\bSeveral gulls land nearby, briefly tussle over some invisible morsel, and fly off  shrieking.  ', '\bA young, auburn haired woman wearing nothing more than sneakers and an  incredibly revealing thong bikini jogs past.  Jogging alongside her is a  darkly-tanned, slim-hipped young man, similarly dressed.  ', '\bA bunch of young children run past, slowing only long enough to point at you and  giggle.  ', '\bAn early evening breeze fills your nose with the tangy scent of brine.  ', '\bThe breeze carries the sound of a calypso drum from somewhere far down the  beach.  ', '\bGrains of sand on the concrete floor twinkle as the light of the setting sun streaks  through them at just the right angle.  ', '\bA speck of sunlight glints off a ship lying far off on the eastern horizon.  ']
;

obj475_benches: class259, class220
    noun = 'bench' 'benches'

    adjective = 'wooden' 'wood'

    prop509 = true

    prop708 = 9

    prop915 = { return obj255_white_rubber_strap.prop952(self); }

    prop914 = "The rope's not quite long enough to tie around the wide bench.  "

    location = obj448_loc_benchroom

    prop897 = 1

    prop665 = 0

    prop953 = {
        if (Me.location == self) {
            "I don't see how you're going to do that while you're  <<self.prop661>> on one of them.  ";
            return true;
        } else {
            return nil;
        }
    }

    prop505 = [obj222_the_vendor]

    prop808 = "He glances in the general direction of the benches.   \"They usually drag 'em into the middle of the pavilion for dances and stuff.\"  "

    prop896 = {
        if (self.prop897 == 1) {
            "They're neatly arranged in two orderly rows. ";
        } else if (self.prop897 == 2) {
            "It looks as though they've been pushed about haphazardly. ";
        } else if (self.prop897 == 3) {
            "Right now, they're stacked, one on top of another, into a towering wooden  column twice your height.  ";
        } else if (self.prop897 == 4) {
            "They're scattered everywhere, as if they'd been tossed about by a hurricane. ";
        }
    }

    sdesc = "benches"

    prop167 = {
        if (Me.location == self) {
            "The particular bench you're <<self.prop661>> on is made of  weathered gray wood.  It's knee high and about as long as you are tall.  All the other benches in the area look pretty much the same.  ";
        } else {
            "The benches are made of weathered gray wood.  Each one is about knee  high and as long as you are tall.  ";
        }
        self.prop896;
    }

    doSynonym('Action24') = 'Action99_lift'

    {{{ unexpected synonym verDoAction24 -> prop954 }}}

    {{{ unexpected synonym doAction24 -> prop955 }}}

    doSynonym('Action24') = 'Action159_pull'

    doSynonym('Action59_move') = 'Action155_push'

    doSynonym('Action54_stand_on') = 'Action143_climb'

    verDoAction6_against(arg1, arg2) = {
        if (arg2 == obj550_brick_enclosure) {
            self.verDoAction97_stack(arg1);
        } else if (arg2 == class434_railing) {
            "It occurs to you that the railing is not high enough to support a stack of benches.  ";
        } else if (arg2 == obj531_support_beams) {
            "It occurs to you that the beams aren't broad enough to support a stack of benches.  ";
        } else {
            pass verDoAction6_against;
        }
    }

    doAction6_against(arg1, arg2) = {
        if (arg2 == obj550_brick_enclosure) {
            self.doAction97_stack(arg1);
        } else {
            pass doAction6_against;
        }
    }

    verDoAction97_stack(arg1) = {
        if (self.prop953) {
        } else if (Me.prop561) {
        } else if (self.prop897 == 3) {
            "But the benches are already stacked up! ";
        }
    }

    doAction97_stack(arg1) = {
        local local1 = fun4(obj475_benches.contents);

        if (local1 > 0) {
            "You clear the benches off first, then";
        }
        "<<(local1 > 0 ? "" : "You")>> pile the benches up";
        if (self.location == obj269___Pavilion__) {
            " against the brick wall of the restroom enclosure";
        }
        ", one on top of another, into a tower twice your height.  They don't look very sturdy";
        if (self.location == obj269___Pavilion__) {
            ", but the wall does seem to add some support";
        }
        ".  ";
        self.prop897 = 3;
        if (local1 > 0) {
            fun207(self, self.location);
        }
        obj20.prop484 = ['successful'];
    }

    verDoAction59_move(arg1) = {
        if (self.prop953) {
        }
    }

    doAction59_move(arg1) = {
        if (self.prop897 == 1) {
            "You push the benches around into an untidy mess. ";
            self.prop897 = 2;
        } else if (self.prop897 == 2 || self.prop897 == 4) {
            "You push the benches back into their original places. ";
            self.prop897 = 1;
        } else if (self.location == obj448_loc_benchroom && self.prop897 == 3) {
            "You push the bottom bench of the pile, which scrapes horrendously over the  concrete floor.  For a moment, it seems as though you might be able to slide  the entire stack around... until, with a terrible clatter, the entire stack of  benches comes crashing down around you!  You cover your head with your  arms, but miraculously escape being harmed.  ";
            fun207(self, self.location);
            self.prop897 = 4;
            obj20.prop484 = ['startled'];
        } else if (self.location == obj269___Pavilion__ && self.prop897 == 3) {
            "You nudge one of the benches in the tower to test for stability.  The tower  shivers, but remains firm.  It seems to be shored up by the wall of the enclosure.  ";
        }
    }

    verDoAction24(arg1) = {
        if (self.prop953) {
        } else if (self.prop897 == 3) {
            "You tug tentatively at one of the benches in the stack, setting the entire stack in  motion.  You stop for fear they might fall on you. ";
        }
    }

    doAction24(arg1) = { "Choosing a bench at random, you grab hold of one end and raise it about a foot in the  air.  The other end scrapes loudly against the concrete floor.  The bench is light  enough to move around, but too bulky to carry, so you set it back down. "; }

    prop149 = "among"

    prop150 = "off of"

    verDoAction38_sit_on(arg1) = {
        if (inherited.verDoAction38_sit_on(arg1)) {
        } else if (self.prop956) {
        }
    }

    doAction38_sit_on(arg1) = {
        if (self.prop665 == 0) {
            "You choose a comfortable looking bench and take a seat. ";
            arg1.moveInto(self);
        } else {
            "You sit on the bench.";
        }
        self.prop665 = 1;
    }

    prop956 = {
        if (self.prop897 == 3) {
            "Not while they're stacked up on top of each other. ";
            return true;
        } else {
            return nil;
        }
    }

    verDoAction39_lie_on(arg1) = {
        if (inherited.verDoAction39_lie_on(arg1)) {
        } else if (self.prop956) {
        }
    }

    doAction39_lie_on(arg1) = {
        if (self.prop665 == 0) {
            "You choose a comfortable looking bench and lie down on it.  Looking up,  you see the rafters of the pavilion's canopy.  ";
            arg1.moveInto(self);
        } else {
            "You lie down on the bench.  Looking up, you see the rafters of the pavilion's canopy.  ";
        }
        self.prop665 = 3;
    }

    verDoAction140_jump_over(arg1) = {
        if (Me.location != self) {
            "You need to be standing on one of the benches before you can do that.  ";
        }
    }

    doAction140_jump_over(arg1) = {
        "You hop down from the bench. ";
        self.doAction151_get_out_of(arg1);
    }

    verDoAction54_stand_on(arg1) = {
        if (inherited.verDoAction54_stand_on(arg1)) {
        } else if (self.prop956) {
        }
    }

    doAction54_stand_on(arg1) = {
        local local1 = fun219(Me);

        if (self.prop665 != 0) {
            "You stand up on the bench.  ";
            self.prop665 = 2;
        } else if (self.prop897 == 3) {
            if (local1 > 0) {
                "You'd better do something with ";
                if (local1 > 1) {
                    "the stuff";
                } else {
                    fun221(Me);
                }
                " you're carrying first.  You'll need both hands free to climb.  ";
                exit;
            } else if (self.location == obj269___Pavilion__) {
                self.prop665 = 0;
                self.prop898;
                "\b";
                arg1.prop161(obj477___On_the_Enclosure__);
            } else if (Me.prop957) {
                "Nope, you can still feel your funny bone tingling from last time.  ";
            } else {
                "Nervously, you begin to ascend the teetering tower of benches.  You  manage to get half of the way up when, with a terrible clatter, the  entire stack of benches comes crashing to the ground, with you  among them.  You land on your rear end, which doesn't hurt much,  until a bench rebounds sharply off your head.  Instinctively, you  throw your arms over your head to protect it, just in time to  receive another blow to the elbow.  Thankfully, the rain of benches  is over.  \(Ow!\)  Unfortunately, that second blow went right to your  funny bone, and the painful tingle has only just caught up with you. ";
                self.prop665 = 0;
                self.prop897 = 4;
                fun207(self, self.location);
                arg1.moveInto(self.location);
                obj20.prop484 = ['tingly'];
                Me.prop519(&prop957);
            }
        } else {
            "You choose a stable looking bench and clamber on to it.  ";
            arg1.moveInto(self);
            self.prop665 = 2;
        }
    }

    prop898 = { "You nudge one of the benches in the tower to test for stability.  The tower shivers,  but remains firm.  It seems to be shored up by the wall of the enclosure.  Carefully,  slowly, you climb to the top.  "; }

    prop307 = {
        "The bench scrapes against the concrete floor as you leave it.  ";
        self.prop665 = 0;
        Me.moveInto(self.location);
    }

    prop262(arg1) = {
        if (self.prop953) {
        } else if (self.prop897 == 3) {
            self.doAction59_move(arg1);
        } else {
            if (self.location == obj269___Pavilion__) {
                "After all the effort you put into bringing them here, you're not eager  to do it again.  ";
            } else {
                "The railing prevents you from pushing them off the edge of the pavilion.  ";
            }
        }
    }

    doSynonym('Action102_move_north') = 'Action104_move_east'

    doSynonym('Action102_move_north') = 'Action105_move_west'

    doSynonym('Action102_move_north') = 'Action106_move_northeast'

    doSynonym('Action102_move_north') = 'Action107_move_northwest'

    verDoAction102_move_north(arg1) = {
        if (self.location != obj269___Pavilion__ && self.location != obj448_loc_benchroom) {
            "How did you even get the benches here to begin with??  ";
        }
    }

    doAction102_move_north(arg1) = { self.prop262(arg1); }

    doSynonym('Action103_move_south') = 'Action108_move_southeast'

    doSynonym('Action103_move_south') = 'Action109_move_southwest'

    verDoAction103_move_south(arg1) = {
        if (self.prop953) {
        } else if (Me.prop561) {
        } else if (self.location == obj269___Pavilion__) {
            self.prop262(arg1);
        }
    }

    doAction103_move_south(arg1) = {
        local local1;

        if (self.prop897 == 3) {
            self.doAction59_move(arg1);
        } else {
            local1 = fun4(obj475_benches.contents);
            if (local1 > 0) {
                "First, you clear off the benches, ";
            }
            "<<(local1 ? "then y" : "Y")>>ou choose a bench at random, lift one end, and  drag it noisily across the concrete floor.  You set it down by the brick  restroom enclosure and go back for another.  Slowly, laboriously, you drag  each bench in turn to the enclosure.  A bead of sweat trickles down your brow.   Finally, your task is complete.  Out of a twisted sense of order, you set them  up as you originally found them, in two neat rows.  Whew!  You would hate to  have to do all that again.  ";
            obj20.prop484 = ['fatigued', 'tired'];
            fun207(obj475_benches, obj448_loc_benchroom);
            self.prop897 = 1;
            self.moveInto(obj269___Pavilion__);
            obj543_benches.moveInto(obj448_loc_benchroom);
            "\b";
            arg1.prop161(obj269___Pavilion__);
        }
    }

    verIoAction121_drop_on(arg1) = { }

    verDoAction121_drop_on(arg1, arg2) = {
        if (arg2 != self) {
            pass verDoAction121_drop_on;
        } else {
            self.verDoAction97_stack(arg1);
        }
    }

    ioAction121_drop_on(arg1, arg2) = {
        if (arg2 == self) {
            self.doAction121_drop_on(arg1, self);
        } else {
            outhide(true);
            inherited.ioAction121_drop_on(arg1, arg2);
            outhide(nil);
            "You choose a bench at random and set <<arg2.thedesc>> on it.  ";
            if (self.prop897 == 3) {
                "(If you meant to set <<arg2.thedesc>> on \(top\) of the stack,  you can't do it without actually climbing it.)  ";
            }
        }
    }

    doAction121_drop_on(arg1, arg2) = {
        if (arg2 != self) {
            pass doAction121_drop_on;
        } else {
            self.doAction97_stack(arg1);
        }
    }
;

obj476_Tybrisa_Pavilion_s_c: class28, class63
    noun = 'beams' 'canopy' 'beam'

    adjective = 'greater' 'pavilion' 'pavilion\'s' 'wooden' 'tybrisa' 'wood'

    sdesc = "Tybrisa Pavilion's canopy"

    thedesc = "the Tybrisa Pavilion's canopy"

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (isclass(local1, obj217) || local1 == obj339___Inside_the__Octopu || local1 == obj447___Storage_Area__ || local1 == obj437___Under_Pavilion__ || local1 == obj285___Damp_Sand__Beneath || local1 == obj453___Shallow_Water__Ben || local1 == obj490___Deep_Water__Beneat || local1 == obj269___Pavilion__ || local1 == obj448_loc_benchroom || local1 == obj427___By_the_Snack_Bar__ || local1 == obj477___On_the_Enclosure__ || local1 == obj433___On_the_Canopy__ || local1 == obj381___Grotto__ || local1 == obj363___In_the_Diving_Bell) {
            return nil;
        } else {
            return Me.location;
        }
    }

    prop167 = {
        switch (Me.location) {
          case obj199___Beach_Path__:
          case obj449___Middle_of_Pier__:
          case obj432___End_of_Pier__:
          case obj450___Dry_Sand__North_of:
          case obj451___Dry_Sand__South_of:
          case obj287___Damp_Sand__North_o:
          case obj286___Damp_Sand__South_o:
          case obj452___Shallow_Water__Nor:
          case obj454___Shallow_Water__Sou:
          case obj489___Deep_Water__North_:
          case obj490___Deep_Water__Beneat:
          case obj464___Deep_Water__South_:
            "The pavilion's canopy rises up like an enormous wooden umbrella,  protecting the entire surface of the pavilion.  ";
            goto label330411;
        }
      label330411:
    }

    prop505 = [obj222_the_vendor]
;

obj477___On_the_Enclosure__: class31
    noun = 'loc-enclosure'

    prop682 = 'cement'

    sdesc = "\(On the Enclosure\)"

    prop167 = { "You're standing on the enclosure that houses the restrooms.   The cement floor spreads all around you to the north,  and the snack bar lies just below you to the east.  If it weren't for  the pavilion's canopy, you might have a nice view of the sunset.   Unfortunately, all you can see is the canopy's shadowy underside."; }

    prop666 = { "You can climb back down the benches<<(obj478_maintenance_hatch.prop124 ? " or up through  the maintenance hatch" : "")>>.  "; }

    prop692 = { return obj479_pavilion_s_canopy.prop167; }

    prop156 = "You'd fall off the roof of the enclosure.  "

    prop307 = {
        local local1 = fun219(Me);

        if (local1 > 0) {
            "You'd better do something with ";
            if (local1 > 1) {
                "the stuff";
            } else {
                fun221(Me);
            }
            " you're carrying first.  You'll need both hands free to climb down the  stack of benches.  ";
            return nil;
        } else {
            "You test the top bench yet again.  It's still not as sturdy as you'd like it to be,  but it'll have to do.  You set to climbing down the stack of benches.  \b";
            return obj269___Pavilion__;
        }
    }

    prop306 = {
        local local1 = fun219(Me);

        if (!obj478_maintenance_hatch.prop891) {
            "You don't see any obvious way up.  It occurs to you that you might take a better  look at the pavilion's canopy.  ";
            return nil;
        } else if (!obj478_maintenance_hatch.prop124) {
            "You'll have to open the trap door first.  ";
            return nil;
        } else if (local1 > 0) {
            "You'd better do something with ";
            if (local1 > 1) {
                "the stuff";
            } else {
                fun221(Me);
            }
            " you're carrying first.  You'll need both hands free to climb.  ";
            return nil;
        } else {
            "You scramble up into the rafters, grab hold of a nearby beam, and lean out over empty space.  You can just reach the opening in the pavilion.  Your grip is tenuous, but you manage to pull yourself up and heave yourself through the trap door.  \b";
            return obj478_maintenance_hatch;
        }
    }
;

obj478_maintenance_hatch: class67
    noun = 'hatch' 'shape' 'light' 'seam'

    adjective = 'rectangular' 'maintenance' 'seam' 'thin' 'of'

    location = obj477___On_the_Enclosure__

    sdesc = "maintenance hatch"

    prop167 = {
        if (self.prop124) {
            "It's an open maintenance hatch, through which you can see the vibrant colors  of the setting sun.  ";
        } else {
            "The thin seam of light appears to outline a maintenance hatch  hidden in the canopy above you.  ";
        }
        if (!self.prop891) {
            self.prop916;
        }
    }

    prop916 = {
        if (!self.prop891) {
            self.prop891 = true;
        }
        if (!obj532_maintenance_hatch.prop891) {
            obj532_maintenance_hatch.prop891 = true;
        }
        if (!obj478_maintenance_hatch.prop891) {
            obj478_maintenance_hatch.prop891 = true;
        }
    }

    prop340 = obj480_maintenance_hatch

    prop337 = obj433___On_the_Canopy__

    verDoAction156_open(arg1) = {
        if (!self.prop891) {
            "You haven't seen any such thing.  ";
        } else if (self.prop124) {
            "It's already open.  ";
        } else {
            "You scramble up into the rafters, grab hold of a nearby beam, and lean out over empty space.  You can just about reach the maintenance hatch.  Unfortunately it's quite heavy, and at this angle you have no leverage  with which to open it.  Disappointed, you jump back down to the  enclosure roof.  If only you had a long pole to push it back with.  ";
        }
    }

    doAction156_open(arg1) = { }

    doSynonym('Action16_with') = 'Action11_with'

    doSynonym('Action16_with') = 'Action43_attack_with'

    verDoAction16_with(arg1, arg2) = {
        if (!self.prop891) {
            "You haven't seen any such thing.  ";
        } else if (arg2 != obj303_broken_stave) {
            "\^<<arg2.thedesc>> isn't long enough to reach the hatch with.  ";
        } else if (self.prop124) {
            "It's already open.  ";
        }
    }

    doAction16_with(arg1, arg2) = {
        "You extend the wooden stave and give the maintenance hatch a good, stiff jab.  It rises up, swings on its hinges, and slams down on the roof.  A shower of sand and a broad angular shaft of orange light fall into your eyes.  ";
        self.prop124 = true;
        self.prop340.prop124 = true;
    }

    verDoAction17_close(arg1) = {
        if (!self.prop891) {
            "You haven't seen any such thing.  ";
        } else if (!self.prop124) {
            "It's already closed. ";
        } else {
            "The maintenance hatch hinges upward, and is currently folded back onto the canopy.   There's no apparent way to close it from down here.  ";
        }
    }

    prop505 = [obj222_the_vendor]

    prop808 = "He looks up at the canopy.  \"Huh.  I never noticed it before.\"  "

    verDoAction40_look_through(arg1) = {
        if (!obj478_maintenance_hatch.prop124) {
            "You can't see much through it while it's closed.  ";
        } else {
            "A small slice of the sunset sky is visible through the open hatch.  ";
        }
    }
;

obj479_pavilion_s_canopy: class28, class63
    noun = 'rafters' 'canopy'

    adjective = 'pavilion\'s' 'wooden' 'wood'

    sdesc = "pavilion's canopy"

    adesc = { return self.thedesc; }

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (local1 == obj269___Pavilion__ || local1 == obj448_loc_benchroom || local1 == obj427___By_the_Snack_Bar__ || local1 == obj477___On_the_Enclosure__) {
            return Me.location;
        } else {
            return nil;
        }
    }

    prop167 = {
        "The enormous canopy hangs directly overhead.  From down here, you can see  into the darkened rafters, and detect the pattern of wooden slats that make  up the underside of the canopy.  ";
        if (obj478_maintenance_hatch.prop124) {
            "A maintenance hatch in the canopy is open, admitting a broad beam of reddish sunlight  into the pavilion.  ";
        } else {
            "In fact, now that your eyes have adjusted to the relatively dim light, you can  see a thin seam of light outlining a rectangular shape in the canopy.  ";
        }
        if (!obj478_maintenance_hatch.prop891) {
            obj478_maintenance_hatch.prop916;
        }
        obj478_maintenance_hatch.prop295;
        obj480_maintenance_hatch.prop295;
        obj532_maintenance_hatch.prop295;
    }

    prop505 = [obj222_the_vendor]

    prop808 = "He glances up at the shadowed canopy.   \"All I know is what you can see from down here.\"  "

    verDoAction143_climb(arg1) = {
        if (Me.location != obj477___On_the_Enclosure__) {
            pass verDoAction143_climb;
        } else {
            "You search the rafters for anything of interest.  While you could probably  raise yourself onto them from here, you don't see anything worth  endangering yourself for.  ";
        }
    }
;

obj480_maintenance_hatch: class67
    noun = 'hatch' 'seam'

    adjective = 'maintenance' 'dark'

    location = obj433___On_the_Canopy__

    sdesc = "maintenance hatch"

    prop167 = {
        if (!self.prop124) {
            "It's just a dark seam in the pavilion's wood shingled canopy.  ";
        } else {
            "It's an open maintenance hatch, through which you can see the shaded floor  of the pavilion.  ";
        }
    }

    prop340 = obj478_maintenance_hatch

    prop337 = obj477___On_the_Enclosure__

    verDoAction16_with(arg1, arg2) = {
        if (self.prop124) {
            "It's already open.  ";
        } else {
            "How about just opening it?  You can reach it fine from up here.  ";
        }
    }

    doAction156_open(arg1) = {
        "You lift up the heavy wooden hatch and fold it back on its hinges, revealing  the pavilion below.  ";
        self.prop124 = true;
        self.prop340.prop124 = true;
    }

    doAction17_close(arg1) = {
        "You raise up the heavy wooden hatch and fold it forward on its hinges.   It falls into place with a resounding \(thud\).  ";
        self.prop124 = nil;
        self.prop340.prop124 = nil;
    }

    prop505 = [obj222_the_vendor]

    prop808 = "He looks up at the canopy.  \"Huh.  I never noticed it before.\"  "

    verDoAction142_jump_through(arg1) = {
        if (obj480_maintenance_hatch.prop124 == nil) {
            "Not while the maintenance hatch is shut.  ";
        } else {
            "You consider the obstacles in your path.  Wooden rafters, the roof of the  enclosure, and finally, the hard cement floor of the pavilion, far below. You wisely decide not to risk it.  ";
        }
    }

    ioSynonym('Action7_through') = 'Action13_in'

    {{{ unexpected synonym verIoAction7_through -> prop673 }}}

    {{{ unexpected synonym ioAction7_through -> prop674 }}}

    {{{ unexpected synonym verIoAction7_through -> prop548 }}}

    {{{ unexpected synonym ioAction7_through -> prop549 }}}

    verIoAction7_through(arg1) = {
        if (obj480_maintenance_hatch.prop124 == nil) {
            "You can't drop anything through the hatch while it's closed.  ";
        }
    }

    ioAction7_through(arg1, arg2) = {
        local local1, local2, local3, local4, local5;

        local1 = 'clatters';
        local2 = 'crashes to';
        if (isclass(arg2, class215) && length(arg2.prop502)) {
            arg2 = arg2.prop502[1];
        }
        local5 = arg2.prop710;
        local4 = [obj561_antique_bottle, obj465_conch_shell, obj560_conch_shell, obj471_scuba_mask];
        if (find(local4, arg2) != nil) {
            local3 = arg2;
        } else if (local5 && find(local4, local5) != nil) {
            local3 = local5;
        }
        if (local3 != nil) {
            "It occurs to you that dropping <<local3.thedesc>> to the floor of the pavilion from this height would surely destroy it.  You decide to spare <<local3.thedesc>>.  ";
            exit;
        }
        if (arg2 == obj255_white_rubber_strap || arg2 == obj302_length_of_rope || arg2 == obj438_parchment) {
            local1 = 'flutters';
            local2 = 'flaps to';
        } else if (arg2 == obj562_cork) {
            local2 = 'bounces off';
        } else if (arg2 == obj426_shrimp || arg2 == obj563_boiled_crab) {
            local2 = 'splatters on';
        } else if (arg2 == obj238_crowbar) {
            local2 = 'clangs to';
        }
        "You toss <<arg2.thedesc>> through the maintenance hatch, where it <<say(local1)>> through the  wooden rafters, glances off the enclosure roof, and <<say(local2)>> the cement floor of the pavilion.  ";
        arg2.moveInto(obj269___Pavilion__);
        if (arg2 == obj457_bottle || local5 == obj457_bottle) {
            obj457_bottle.prop657;
            obj457_bottle.moveInto(nil);
        }
    }

    verDoAction40_look_through(arg1) = {
        if (!self.prop124) {
            "You can't see much through it while it's closed.  ";
        } else {
            "You can see the shadowed floor of the pavilion, far below.  ";
        }
    }
;

obj481_chink: class74, class33
    noun = 'chink'

    adjective = 'dark'

    prop525 = "You probe the chink with a finger, but don't learn anything new.  "

    sdesc = "chink"

    prop131 = nil

    prop167 = "It's a chink in the tightly laid rows where a shingle has been removed.  "

    ioAction13_in(arg1, arg2) = {
        if (arg2 != obj565_shingle) {
            "The only thing that's going to fill that chink is a new shingle.  ";
        } else {
            "You try to force the shingle back into place, but it's no use.  Looks like  someone's going to have to call a good roofer.  ";
        }
    }

    location = nil
;

obj482_shelter_s_roof: class28, class63
    noun = 'shingles' 'roof'

    adjective = 'shelter\'s' 'shelter' 'wooden' 'lesser' 'wood'

    sdesc = "shelter's roof"

    adesc = { return self.thedesc; }

    prop167 = { "The roof of the small shelter is much like the pavilion's canopy.   It's supported by wooden beams slightly less than twice your height, and surfaced on top with wooden shingles.  "; }

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (local1 == obj449___Middle_of_Pier__ || local1 == obj432___End_of_Pier__) {
            return Me.location;
        } else {
            return nil;
        }
    }

    prop505 = [obj222_the_vendor]
;

obj483_gate: obj566, class220, class79
    noun = 'fence' 'plate' 'gate' 'lock'

    adjective = 'chain' 'metal' 'steel' 'storage' 'link' 'wire'

    prop525 = "You poke a finger through the chain link fence, but learn nothing new.  "

    prop708 = 9

    location = obj437___Under_Pavilion__

    sdesc = "gate"

    prop167 = {
        "It's an ordinary wire mesh gate that seals off the storage area.  A smooth  steel plate set in the gate houses a simple lock.  Currently, the gate is ";
        if (self.prop124) {
            "open.  ";
        } else if (self.prop338) {
            "closed and locked.  ";
        } else {
            "closed.  ";
        }
    }

    prop340 = obj484_gate

    prop206 = {
        local local1;

        local1 = 0;
        "You see the inside of the cement walled storage area.  ";
        if (obj485_glass_recycling_cani.location == obj447___Storage_Area__ && obj486_aluminum_recycling_c.location == obj447___Storage_Area__) {
            local1 = 3;
        } else if (obj485_glass_recycling_cani.location == obj447___Storage_Area__) {
            local1 = 1;
        } else if (obj486_aluminum_recycling_c.location == obj447___Storage_Area__) {
            local1 = 2;
        }
        if (local1 > 0) {
            "Inside";
            if (local1 == 3) {
                " are two big blue recycling canisters, one full of bottles, the other full of cans.  ";
            } else {
                "is a big blue recycling canister full of <<(local1 == 1 ? "bottles" : "cans")>>.  ";
            }
        }
        "Against the rear wall is a square wooden bin.  Next to that is a plain looking  utility table, over which is hung a peg board.  ";
    }

    prop337 = {
        fun204('west');
        return obj447___Storage_Area__;
    }

    prop348 = obj567_steel_key

    doAction156_open(arg1) = {
        "The gate swings open silently, on well oiled hinges.  ";
        self.prop124 = true;
        self.prop340.prop124 = true;
    }

    doAction17_close(arg1) = {
        "The gate swings shut silently, on well oiled hinges.  ";
        self.prop124 = nil;
        self.prop340.prop124 = nil;
    }

    prop505 = [obj222_the_vendor]
;

obj484_gate: obj566, class220, class79
    noun = 'fence' 'gate' 'door'

    adjective = 'chain' 'metal' 'link' 'wire'

    prop525 = "You poke a finger through the chain link fence, but learn nothing new.  "

    prop708 = 9

    location = obj447___Storage_Area__

    sdesc = "gate"

    prop167 = {
        "It's an ordinary wire mesh gate, sealing off the entire enclosure.  A smooth steel  plate houses a simple lock.  Currently, the gate is ";
        if (self.prop124) {
            "open.  ";
        } else if (self.prop338) {
            "closed and locked.  ";
        } else {
            "closed.  ";
        }
    }

    prop206 = {
        "You see the wide space beneath the pavilion, and beyond that, the shore leading  down to the ocean.  ";
        if (obj577_glass_recycling_bin.location == obj447___Storage_Area__) {
            "Beyond the gate is the glass recycling canister you dragged out of the storage  area.  ";
        }
        if (obj578_aluminum_recycling_b.location == obj447___Storage_Area__) {
            "You can also see the aluminum recycling canister you dragged out of the storage  area.  ";
        }
    }

    prop340 = obj483_gate

    prop337 = {
        fun204('east');
        return obj437___Under_Pavilion__;
    }

    prop348 = obj567_steel_key

    doAction156_open(arg1) = {
        "The gate swings open silently, on well oiled hinges.  ";
        self.prop124 = true;
        self.prop340.prop124 = true;
    }

    doAction17_close(arg1) = {
        "The gate swings shut silently, on well oiled hinges.  ";
        self.prop124 = nil;
        self.prop340.prop124 = nil;
    }

    prop505 = [obj222_the_vendor]
;

obj485_glass_recycling_cani: obj442, class33
    noun = 'canister' 'receptacle'

    adjective = 'glass' 'recycling' 'plastic' 'blue'

    plural = 'canisters'

    prop135 = true

    prop525 = "The blue plastic is predominantly smooth, but worn a bit  rough by the elements.  "

    prop149 = "in"

    prop150 = "out of"

    location = obj447___Storage_Area__

    sdesc = "glass recycling canister"

    prop167 = { "It's a waist high blue canister sporting the universal 'recycling' logo.  Above the logo is a piece of masking tape, on which someone has hand lettered the word 'Glass.'  And the bin is indeed full of bottles, suggesting  that it is quite heavy.  "; }

    verDoAction26_look_in(arg1) = { "It's full of bottles, bottles, and more bottles.  "; }

    doAction157_search -> doAction106_move_northeast

    verDoAction157_search -> doAction106_move_northeast

    ioAction13_in -> doAction106_move_northeast

    verIoAction13_in -> doAction106_move_northeast

    ioAction19_out -> doAction106_move_northeast

    verIoAction19_out -> doAction106_move_northeast

    prop505 = [obj222_the_vendor]

    prop823(arg1) = { obj458_bottle_bottles.prop823(arg1); }

    prop831(arg1) = { obj458_bottle_bottles.prop831(arg1); }

    prop828 = { obj458_bottle_bottles.prop828; }

    doSynonym('Action102_move_north') = 'Action103_move_south'

    doSynonym('Action102_move_north') = 'Action106_move_northeast'

    doSynonym('Action102_move_north') = 'Action107_move_northwest'

    doSynonym('Action102_move_north') = 'Action108_move_southeast'

    doSynonym('Action102_move_north') = 'Action109_move_southwest'

    doAction102_move_north -> doAction106_move_northeast

    verDoAction102_move_north -> doAction106_move_northeast

    doAction105_move_west -> doAction106_move_northeast

    verDoAction105_move_west -> doAction106_move_northeast

    doSynonym('Action155_push') = 'Action59_move'

    doAction155_push -> doAction106_move_northeast

    verDoAction155_push -> doAction106_move_northeast

    doAction104_move_east -> doAction106_move_northeast

    verDoAction104_move_east -> doAction106_move_northeast

    verDoAction152_get_on(arg1) = { "Even if you could think of any good reason to climb into the canister, you  wouldn't be able to because it's full of bottles.  "; }

    verDoAction24(arg1) = { "It's too heavy for you to carry, but you could probably move it in one direction or another.  "; }
;

obj486_aluminum_recycling_c: obj442, class33
    noun = 'canister' 'receptacle'

    adjective = 'big' 'recycling' 'aluminium' 'aluminum' 'blue'

    plural = 'canisters'

    prop135 = true

    prop525 = "The blue plastic is predominantly smooth, but worn a bit  rough by the elements.  "

    prop149 = "in"

    prop150 = "out of"

    location = obj447___Storage_Area__

    sdesc = "aluminum recycling canister"

    adesc = {
        "an ";
        self.sdesc;
    }

    prop167 = { "It's a waist high blue canister sporting the universal 'recycling' logo.  Above the logo is a piece of masking tape, on which someone has hand lettered the word 'Aluminum.'  And the bin is indeed full of cans, though  their accumulated weight probably doesn't amount to much.  "; }

    verDoAction26_look_in(arg1) = { "It's full of cans, cans, and more cans.  "; }

    doAction157_search -> verDoAction125_buy

    ioAction13_in -> verDoAction125_buy

    ioAction19_out -> verDoAction125_buy

    prop505 = [obj222_the_vendor]

    prop823(arg1) = { obj587_pile_of_aluminum_can.prop823(arg1); }

    prop831(arg1) = { obj587_pile_of_aluminum_can.prop831(arg1); }

    prop828 = { obj587_pile_of_aluminum_can.prop828; }

    doSynonym('Action102_move_north') = 'Action103_move_south'

    doSynonym('Action102_move_north') = 'Action106_move_northeast'

    doSynonym('Action102_move_north') = 'Action107_move_northwest'

    doSynonym('Action102_move_north') = 'Action108_move_southeast'

    doSynonym('Action102_move_north') = 'Action109_move_southwest'

    doAction102_move_north -> verDoAction125_buy

    doAction105_move_west -> verDoAction125_buy

    doSynonym('Action59_move') = 'Action155_push'

    doAction59_move -> verDoAction125_buy

    doAction104_move_east -> verDoAction125_buy

    verDoAction152_get_on(arg1) = { "Even if you could think of any good reason to climb into the canister, you  wouldn't be able to because it's full of cans.  "; }

    verDoAction24(arg1) = { "It's too bulky too pick up and carry around, but you could easily push it in any  direction you wanted to go.  "; }
;

obj487_dragon_sculpture: class63
    noun = 'sculpture'

    adjective = 'dragon' 'reptile' 'sand'

    location = obj450___Dry_Sand__North_of

    sdesc = "dragon sculpture"

    prop167 = { "It's some sort of big reptile, longer than you are tall.  You can't tell much more  from here, as it lies in the wet sand to the east.  "; }

    prop295 = { obj646_dragon_sculpture.prop295; }

    prop505 = [obj222_the_vendor]

    prop808 = { return obj646_dragon_sculpture.prop808; }

    verDoAction145_build(arg1) = { obj55_ground.verIoAction146_build_in(arg1); }

    doAction145_build(arg1) = { obj55_ground.ioAction146_build_in(arg1, self); }

    verDoAction146_build_in(arg1, arg2) = { }
;

obj488_dragon_sculpture: class63
    noun = 'sculpture'

    adjective = 'dragon' 'reptile' 'sand'

    location = obj452___Shallow_Water__Nor

    sdesc = "dragon sculpture"

    prop167 = { "It's some sort of big reptile, longer than you are tall.  You can't tell much more  from here, as it lies in the wet sand to the west.  "; }

    prop295 = { obj646_dragon_sculpture.prop295; }

    prop505 = [obj222_the_vendor]

    prop808 = { return obj646_dragon_sculpture.prop808; }

    verDoAction145_build(arg1) = { obj55_ground.verIoAction146_build_in(arg1); }

    doAction145_build(arg1) = { obj55_ground.ioAction146_build_in(arg1, self); }

    verDoAction146_build_in(arg1, arg2) = { }
;

obj489___Deep_Water__North_: obj265
    noun = 'loc-north4'

    prop839 = obj452___Shallow_Water__Nor

    prop687 = obj466___Underwater_____dri

    prop650 = { return self.prop687; }

    sdesc = "\(Deep Water, North of Pier\), (treading water)"

    prop167 = { "There's nothing but endless ocean to the east, but you can swim back into shallower water to the west.  The long  cement pier finally ends to the south, its supporting pylons disappearing into the murky depths.  "; }

    prop666 = { "You can swim west, into shallow water, south along the shoreline, or dive  beneath the surface.  "; }

    prop304 = { "You gaze longingly to the horizon.  Though it beckons you, you decide you're  safer staying close to shore.  "; }

    prop308 = { return self.prop304; }

    prop302 = { "You launch yourself north with a strong dolphin kick, but you don't want to  drift too far upshore from the hotel, so eventually you head back.  "; }

    prop309 = { return self.prop302; }

    prop305 = {
        self.prop886;
        return obj452___Shallow_Water__Nor;
    }

    prop311 = {
        self.prop886;
        return obj453___Shallow_Water__Ben;
    }

    prop303 = {
        "You launch yourself south with a vigorous crawl stroke.  \b";
        return obj490___Deep_Water__Beneat;
    }

    prop310 = { return self.prop304; }

    prop307 = {
        if (obj303_broken_stave.location == Me || obj303_broken_stave.prop128) {
            "You try to dive below the surface, but the buoyancy of the stave prevents  you from going under.  ";
        } else {
            return obj466___Underwater_____dri;
        }
    }
;

obj490___Deep_Water__Beneat: obj265
    noun = 'loc-under4'

    prop485 = {
        if (isclass(obj20.prop489, obj217)) {
            return 'exerted';
        } else {
            return 'refreshed';
        }
    }

    prop650 = obj467___Underwater_____dri

    prop839 = obj453___Shallow_Water__Ben

    prop687 = obj397___Underwater_____dri

    sdesc = "\(Deep Water, Beneath Pier\), (treading water)"

    prop167 = { "The long pier finally comes to an end, the last of its supporting pylons  disappearing into the murky depths below.  To the east lies nothing  but endless ocean.  The welcoming sands of the beach lie back to the west.   Or you can strike off north or south, parallel to the shoreline.  "; }

    prop666 = { "You can swim west into shallow water, north or south along the  shoreline, or dive below the surface.  "; }

    prop692 = { return obj495_pipes.prop167; }

    prop304 = { "You gaze longingly to the horizon.  Though it beckons you, you decide you're  safer staying close to shore.  "; }

    prop308 = { return self.prop304; }

    prop310 = { return self.prop304; }

    prop305 = {
        self.prop886;
        return obj453___Shallow_Water__Ben;
    }

    prop309 = {
        self.prop886;
        return obj452___Shallow_Water__Nor;
    }

    prop311 = {
        self.prop886;
        return obj454___Shallow_Water__Sou;
    }

    prop302 = {
        "You glide to the north with a smooth breast stroke.  \b";
        return obj489___Deep_Water__North_;
    }

    prop303 = {
        "You glide to the south with a smooth breast stroke.  \b";
        return obj464___Deep_Water__South_;
    }

    prop307 = {
        if (obj303_broken_stave.location == Me || obj303_broken_stave.prop128) {
            "You try to dive below the surface, but the buoyancy of the stave prevents  you from going under.  ";
        } else {
            return obj467___Underwater_____dri;
        }
    }
;

obj491_looming__crystalline: class245
    noun = 'spire' 'tower' 'sandcastle' 'castle' 'minnarets' 'minnaret' 'spiral' 'spires' 'ramp'

    adjective = 'big' 'organic' 'looking' 'looming' 'crystalline' 'sand'

    location = nil

    sdesc = "looming, crystalline castle"

    prop167 = { "You feel as though you're looking at the original castle through a microscope.  Everything looks quite similar, from the beaded droplets to the climbing towers, but oh, so much larger.  The rounded building blocks of this castle are nearly the size of your head, and the tallest spires stand well over twice your height, climbing nearly to the underside of the pier.  The ramp that spirals up and around the tower's circumference is paved with sheets of blue plastic and seems wide enough to stand on.  Swarming over and through the castle's glossy crystalline surface are hoards of the tiny crustacean castle builders.  "; }

    verDoAction143_climb(arg1) = {
        if (Me.prop561) {
            "";
        } else if (obj493_shiny_object.location == nil) {
            "You climb the plastic lined blue ramp again.  You don't find anything else hidden  in the pipes, though, and you're still not sure how well the castle can support  your weight, so you climb back down carefully.  ";
        }
    }

    doAction143_climb(arg1) = {
        "With great trepidation, you set one foot on the lowest part of the spiral ramp.  It supports your weight.  You try the other foot.  When the ramp fails to collapse, you start climbing,  slowly, carefully, leaning on the nearby towers for support.  Thank goodness for the blue plastic sheets inlaid in the ramp.  Without them, the glassy surface would be far too slick to climb.  You circle the castle once, twice, three times, four, all the while looking nervously up at the needle sharp spires.  Eventually, the ramp becomes too narrow for you to continue any further.  But, by bracing one foot against the topmost spire and standing on the toes of the other, you can just reach the pipes above.  You reach for the shining object and... \(Ahh!\)  Your foot glides off the glossy spire and you fall to your behind on the ramp.  Gravity takes over and sends you sliding down the ramp, rear end scraping blue plastic through turn after turn.  Finally, you slide into the sand at the base of the castle, unharmed.  Wow!  What a trip!  Only then do you discover that you succeeded in pulling down the reflective object, because you've still got it clenched tightly in your white knuckled fist.   \b You examine the object to discover that you've retrieved a black banded scuba mask.   ";
        obj20.prop484 = ['exhilarated'];
        unnotify(obj493_shiny_object, &prop901);
        obj493_shiny_object.moveInto(nil);
        obj471_scuba_mask.moveInto(Me);
        obj471_scuba_mask.prop295;
    }
;

obj492_pipes: class63
    noun = 'pipes' 'pipe'

    adjective = 'metal' 'drainage' 'sewage'

    prop509 = true

    adesc = "some pipes"

    sdesc = "pipes"

    prop167 = {
        "Far overhead, a pair of thick metal pipes run the length of the pier, suspended a few fingers beneath the pier's concrete underbelly. Presumably, they carry water to and from the pavilion's rest rooms and fountains.  ";
        if (obj493_shiny_object.location != nil) {
            "Squinting, you can just make out some shiny or reflective object, perhaps  a glass lens, caught in the space between the pipe and the cement ceiling.  ";
        }
    }

    location = obj285___Damp_Sand__Beneath

    verDoAction143_climb(arg1) = { "They're far out of reach above you.  "; }
;

obj493_shiny_object: class63
    noun = 'light' 'object' 'lens'

    adjective = 'flash' 'shiny' 'reflective' 'of'

    sdesc = "shiny object"

    location = obj492_pipes

    prop167 = { "It's difficult to see just what it is from down here, hidden as it is in the dim shadow beneath the pier.  All you can tell is that it's some sort of shiny object or reflective surface, perhaps a lens, nestled among the pipes overhead.  "; }

    prop901 = {
        local local1 = fun227(Me);

        if (local1 == obj285___Damp_Sand__Beneath) {
            "\bA flash of light catches your eyes.  It seems to have originated from the  pipes running overhead.  ";
            notify(obj493_shiny_object, &prop901, rand(3) + 2);
        }
    }

    verDoAction53_on(arg1, arg2) = { }
;

obj494_pipes: class63
    noun = 'pipes' 'pipe'

    adjective = 'metal' 'drainage' 'sewage'

    prop509 = true

    adesc = "some pipes"

    sdesc = "pipes"

    prop167 = { "Far overhead, a pair of thick metal pipes run the length of the pier, suspended a few fingers beneath the pier's concrete underbelly. Presumably, they carry water to and from the pavilion's rest rooms and fountains.  "; }

    verDoAction143_climb(arg1) = { "They're far out of reach above you.  "; }

    location = obj453___Shallow_Water__Ben
;

obj495_pipes: class63
    noun = 'pipes' 'pipe'

    adjective = 'metal' 'drainage' 'sewage'

    prop509 = true

    sdesc = "pipes"

    adesc = "some pipes"

    prop167 = { "Far overhead, a pair of thick metal pipes extrude from the underside of the pier and bend ninety degrees to run along its length.  The pipes are suspended a few fingers beneath the pier's concrete underbelly.  Presumably, they carry water to and from the pavilion's rest rooms and fountains.  "; }

    verDoAction143_climb(arg1) = { "They're far out of reach above you.  "; }

    location = obj490___Deep_Water__Beneat
;

obj496___Underwater_____dri: obj217
    noun = 'loc-under6'

    prop485 = 'chilly'

    prop518 = obj490___Deep_Water__Beneat

    prop687 = obj397___Underwater_____dri

    sdesc = "\(Underwater\), (drifting)"

    prop306 = obj490___Deep_Water__Beneat

    prop307 = obj497___Underwater_____dri

    prop167 = { "The slope continues its sharp descent, inclining almost vertically.  Though the  level of ambient light has diminished, the sun still shines down strongly, fluttering  on the surface above you.  "; }

    prop666 = { "You can dive into deeper water, or swim to the surface.  "; }

    prop692 = "Though the level of ambient light has diminished, the sun still shines down  strongly, fluttering on the surface above you.  "

    prop155(arg1) = {
        if (!self.prop130) {
            "With a strong kick, you propel yourself towards the depths.  The temperature  drops slightly as you move away from the warming light of the sun.  ";
        } else {
            "With a strong kick, you propel yourself towards the depths beyond the slope.   Visibility dims slightly as you move away from the warming light of the sun,  and the pillars fall away behind you.  ";
        }
        pass prop155;
    }
;

obj497___Underwater_____dri: obj217
    noun = 'loc-under7'

    prop485 = 'cold'

    prop518 = obj490___Deep_Water__Beneat

    prop687 = obj397___Underwater_____dri

    prop306 = obj490___Deep_Water__Beneat

    prop307 = obj498___Underwater_____dri

    sdesc = "\(Underwater\), (drifting)"

    prop167 = {
        "The slope just keeps on descending.  The amount of sunlight that reaches   you has diminished quite a bit and the water has become quite cold.   Below you all is dark, but for a tantalizing glint of light hinting in the darkness.  ";
        if (obj300_busted_trap.prop891) {
            "\n\tA busted lobster trap lies half buried in the mud of the steep slope.  ";
        } else {
            "\n\tHalf buried in the mud of the steep slope is some sort of wire frame  construction.  ";
        }
    }

    prop666 = { "You can dive into deeper water, or swim to the surface.  "; }

    prop692 = " The amount of sunlight that reaches you has diminished quite a bit.  "

    prop155(arg1) = {
        if (!self.prop130) {
            "You continue your descent.  The temperature drops severely as you pass through a thermocline, and the mounting pressure makes your ears ache.  You pinch your nose shut with thumb and forefinger, and exhale gently to clear the pressure.  ";
        } else {
            "You continue your drop down the face of the slope.  The temperature drops severely as you pass through a thermocline, and the mounting pressure makes your ears ache.  You pinch your nose shut with thumb and forefinger, and exhale gently to clear the pressure.  ";
        }
        pass prop155;
    }
;

obj498___Underwater_____dri: obj217
    noun = 'loc-under8'

    prop485 = 'shivering'

    prop518 = obj490___Deep_Water__Beneat

    prop687 = obj397___Underwater_____dri

    prop306 = obj490___Deep_Water__Beneat

    prop307 = obj499___Underwater_____dri

    sdesc = "\(Underwater\), (drifting)"

    prop167 = {
        "There's still no end in sight to the slope.  The pressure has become quite intense,  and the water cold enough to chill you.  The gleam of light below you has grown  quite strong, almost as strong as the rapidly diminishing sunlight.  You try to  make out some detail, but the source of the light still eludes you.";
        if (obj500_spiny_shell.location == self) {
            "\n\tResting in the mud of the slope is a spiny shell.  ";
        }
    }

    prop666 = { "You can dive into deeper water, or swim to the surface.  "; }

    prop692 = "The sunlight is diminishing rapidly.  "

    prop155(arg1) = {
        "You struggle to continue your descent, fighting against the cold, pressure,  and darkness.  Visions of deep sea pearl divers swim through your head.   They're interrupted by a sudden bout of intense shivering.  You're not sure  how much more of this you can take.  ";
        pass prop155;
    }
;

obj499___Underwater_____dri: obj217
    noun = 'loc-under9'

    prop485 = 'freezing'

    prop518 = obj490___Deep_Water__Beneat

    prop687 = obj397___Underwater_____dri

    prop306 = obj490___Deep_Water__Beneat

    prop307 = obj397___Underwater_____dri

    sdesc = "\(Underwater\), (drifting)"

    prop167 = { "You're deep.  Deeper than you've ever been in your life.  And yet, the slope still continues downward.  Hardly a glimmer of sunlight reaches this deep, but the light below has grown into a beacon,  like a lighthouse that draws you down to the depths.  "; }

    prop666 = { "You can dive into deeper water, or swim to the surface.  "; }

    prop692 = "Barely a single ray of sunlight reaches you from above.  "

    prop155(arg1) = {
        "The cold, dark, and pressure all reach down deep into your bones as you battle your way down.  You shouldn't even be at this depth without diving gear.  If you don't turn back soon, you may not make it back to the surface.  ";
        pass prop155;
    }
;

obj500_spiny_shell: class619_shell, class253
    noun = 'shell'

    adjective = 'spiny'

    plural = 'shells'

    sdesc = "spiny shell"

    prop167 = "Needle sharp spikes sprout from the shell's thick, ridged crown.   You wonder what sort of creature lives in a shell like this.  "

    location = obj498___Underwater_____dri

    prop131 = nil

    doAction24(arg1) = {
        if (!self.prop131) {
            self.prop131 = true;
        }
        pass doAction24;
    }

    prop656 = true
;

obj501_tentacles_pocket_bat: class33, class70
    noun = 'tentacles' 'pocket' 'bathysphere' 'head' 'octopus' 'bell'

    adjective = 'air' 'old' 'rusty' 'barnacle' 'diving' 'encrusted' 'rust'

    location = obj397___Underwater_____dri

    prop293 = true

    prop131 = nil

    sdesc = {
        if (self.prop891) {
            "rusty old diving bell";
        } else {
            "octopus";
        }
    }

    prop891 = nil

    prop167 = {
        "You examine the 'octopus' more closely.  You can see now that it's nothing more than a rusty old diving bell.  But it really does look like an enormous octopus stretching up from the ocean floor.  Its rusting, barnacle encrusted head is supported by four thin, stilted tentacles which disappear into the swirling sands.  Completing the illusion are a pair of plate sized eyes, which stare at you with shining intensity while producing the light that lured you so deep.  ";
        self.prop891 = true;
    }

    verDoAction116_swim_in(arg1) = { self.verDoAction152_get_on(arg1); }

    doAction116_swim_in(arg1) = { self.doAction152_get_on(arg1); }

    verDoAction152_get_on(arg1) = { }

    doAction152_get_on(arg1) = {
        if (!obj339___Inside_the__Octopu.prop293) {
            "You swim between the four thin legs and rise up into a hollow, air filled chamber.  ";
            self.prop891 = true;
        } else {
            "You swim up inside the body of the rusting bell.  ";
        }
        obj20.prop491 = nil;
        arg1.moveInto(obj339___Inside_the__Octopu);
        "\b";
        obj339___Inside_the__Octopu.lookAround(true);
        "\bThe bell reverberates with peculiar undersea noises.  ";
    }

    verDoAction43_attack_with(arg1, arg2) = { }

    doAction43_attack_with(arg1, arg2) = { "Struck, the bell resounds with a quick, high pitched \(tinggg\)  that dissolves into the water around you.  "; }

    verDoAction95_tap(arg1) = { }

    doAction95_tap(arg1) = { self.doAction43_attack_with(arg1, obj231_hands); }

    prop525 = "It's frigid to the touch.  "
;

obj502_surface_pattern: class33
    noun = 'surface' 'pattern'

    adjective = 'level' 'obscured'

    location = nil

    sdesc = {
        if (obj268_mud.prop924 < 3) {
            "obscured pattern";
        } else {
            "dance step diagram";
        }
    }

    prop167 = {
        if (obj268_mud.prop924 == 0) {
            "Unfortunately, you can't make much out through the mud.  ";
        } else if (obj268_mud.prop924 == 1) {
            "You can just make out what appears to be a black footprint.  ";
        } else if (obj268_mud.prop924 == 2) {
            "You can make out two black footprints joined by a curved black line, but you're  sure there's more.  ";
        } else if (obj268_mud.prop924 > 2) {
            "It's a dance step diagram, inscribed on what must be a piece of the old Tybrisa  pavilion dance floor.  ";
        }
    }

    doAction135_clean -> verDoAction107_move_northwest
;

obj503_porthole: class33, class79
    noun = 'eye' 'branches' 'windows' 'window' 'portholes' 'porthole'

    adjective = 'thick' 'glass' 'round' 'scratched'

    prop525 = "It's frigid to the touch.  "

    prop293 = true

    sdesc = "porthole"

    thedesc = "the porthole"

    prop167 = {
        "The portholes are made of thick glass, worn partly translucent by the action of  waves driving sand against them.  ";
        if (!self.prop891) {
            "Of much greater interest is the view currently available \(through\) them.  ";
        }
    }

    prop206 = {
        if (!self.prop891) {
            obj346.prop951;
        } else {
            "Sadly, your beautiful undersea vision has passed.  But you can still make  out the patch of level mud outside the bell.  ";
        }
    }

    location = obj339___Inside_the__Octopu

    verDoAction26_look_in(arg1) = { self.verDoAction40_look_through(arg1); }

    doAction26_look_in(arg1) = { self.doAction40_look_through(arg1); }
;

obj504_rock: class33, class34
    noun = 'barnacles' 'creatures' 'creature' 'rock'

    adjective = 'white' 'barnacle' 'encrusted'

    sdesc = "rock"

    prop167 = {
        "It's a huge slab of porous, white rock, longer than you are tall and  rising half your height from the muck of the ocean floor.  Its scabrous surface  has been eroded cruelly by time and tide, and a deep fissure cuts through it,  nearly cleaving it in two.  Tiny creatures crawl through the barnacles encrusting  its gnarled surface, and small, broad leaved plants cling tenaciously to it.  ";
        if (obj465_conch_shell.location == self) {
            "A great pink conch shell sits on the rock, swaying slightly in the ocean currents.  ";
        }
    }

    location = obj468___Underwater_____dri

    verDoAction38_sit_on(arg1) = { "You swim into position and park your rear end on the rock.  Its coarse,  barnacle encrusted surface scrapes your legs and posterior unpleasantly,  so you push yourself away from it.  "; }

    verIoAction121_drop_on(arg1) = { }

    ioAction121_drop_on(arg1, arg2) = {
        local local1 = fun410(arg2.prop515);

        if (local1 > 0) {
            obj468___Underwater_____dri.prop152(arg2);
        } else if (arg2 == obj556_husks_peanuts_peanut || arg2 == obj426_shrimp && length(obj426_shrimp.prop502) == 0) {
            obj299_deep_fissure.prop909(arg2);
        } else {
            pass ioAction121_drop_on;
        }
    }

    prop511 = 'drop'

    prop181 = 50

    prop182 = 50
;

obj505_boiled_peanut_sign: class48, class33
    noun = 'arrow' 'letters' 'sign'

    adjective = 'boiled' 'peanut' 'bold'

    location = obj199___Beach_Path__

    sdesc = "boiled peanut sign"

    prop167 = { "The hand-painted sign reads \"Boiled Peanuts\" in letters made up of peanuts.   A bold arrow points up into the pavilion.  "; }

    prop168 = { return self.prop167; }

    prop808 = "He cranes his neck to look around the sign.  \"I think it's  pretty self explanatory.\"  "
;

obj506_marine_center: class33
    noun = 'tanks' 'exhibit' 'building' 'center' 'notice' 'posters' 'poster' 'tank'

    adjective = 'tybee' 'island' 'marine'

    sdesc = "marine center"

    thedesc = "the center"

    prop167 = { "The Tybee Island Marine Center is closed.  A notice inside the glass door informs you that its hours are 10am to 2pm.  Through the door you can see posters displaying various local sea life, and through a dark passage, you can just barely make out several glass tanks.  Outside the entrance is a sturdy looking white diving bell.  "; }

    location = obj199___Beach_Path__

    prop505 = [obj222_the_vendor]

    prop808 = { "\"They've got some neat displays.  Pity they can only afford to stay open  until two o'clock.\"  "; }
;

obj507_center_door: class69, class79
    noun = 'door'

    adjective = 'center'

    location = obj199___Beach_Path__

    prop348 = obj508

    sdesc = "center door"

    adesc = { return self.thedesc; }

    prop167 = { return obj199___Beach_Path__.prop309; }

    prop206 = "You can see posters displaying various local sea life, and  through a dark passage, you can just barely make out several glass tanks.  "

    prop505 = [obj222_the_vendor]
;

obj508: class78
    location = nil
;

obj509_diving_bell: class33, class70
    noun = 'plate' 'baseplate' 'bathysphere' 'bell'

    adjective = 'white' 'new' 'diving' 'base' 'sturdy'

    prop131 = nil

    sdesc = "diving bell"

    thedesc = "the diving bell"

    prop167 = { "The bell looks like half of a big white medicine capsule, just a bit taller than you, though quite a bit wider.  The open end of the capsule stands  at about chest height and faces down, so that you could enter the bell  if you ducked down a bit.  The capsule stands on four thick metal  struts, which are in turn welded to a heavy, square, metal baseplate.  The whole thing looks imposingly heavy.  Deeply set in the white metal capsule are several thick, round, glass portholes.  "; }

    location = obj199___Beach_Path__

    verDoAction152_get_on(arg1) = { Me.prop894; }

    doAction152_get_on(arg1) = {
        "You duck your head and shoulders, and crab-walk under the lip of the bell.  \b";
        arg1.prop161(obj363___In_the_Diving_Bell);
        "\bThe bell effectively muffles any outside sound, but an ominous low moan  fills your ears.  ";
    }

    prop505 = [obj222_the_vendor]

    prop808 = { "\"Neat, huh?  They used 'em back in the 60s and 70s as dive platforms.   They were hooked up to a surface air source, and divers could hang out  as long as they needed to, even refill their tanks.\"  "; }

    prop293 = true

    prop295 = {
        obj510_porthole.prop295;
        obj511_diving_bell.prop295;
    }

    verDoAction43_attack_with(arg1, arg2) = { }

    doAction43_attack_with(arg1, arg2) = { "Struck, the bell resounds like a gong, generating a deep, mellow tone that  lingers in the air for some moments.  "; }

    verDoAction95_tap(arg1) = { }

    doAction95_tap(arg1) = { self.doAction43_attack_with(arg1, obj231_hands); }

    verDoAction26_look_in(arg1) = { self.verDoAction40_look_through(arg1); }

    doAction26_look_in(arg1) = { self.doAction40_look_through(arg1); }
;

obj510_porthole: class33, class79
    noun = 'windows' 'window' 'portholes' 'porthole'

    adjective = 'thick' 'glass' 'round'

    sdesc = "porthole"

    thedesc = "the porthole"

    prop167 = "The portholes are made of thick round glass."

    prop206 = { "The view through the portholes is about what you'd expect.  Hotel, pavilion,  beach, Marine Center, etc.  "; }

    location = obj363___In_the_Diving_Bell

    prop525 = "It's smooth and cool to the touch.  "

    prop293 = true

    verDoAction26_look_in(arg1) = { self.verDoAction40_look_through(arg1); }

    doAction26_look_in(arg1) = { self.doAction40_look_through(arg1); }
;

obj511_diving_bell: class33, class70
    noun = 'ceiling' 'bathysphere' 'bell'

    adjective = 'white' 'new' 'diving' 'sturdy'

    prop131 = nil

    verDoAction152_get_on(arg1) = { "You're already in the bell.  "; }

    verDoAction151_get_out_of(arg1) = { }

    doAction151_get_out_of(arg1) = {
        "You duck your head and crab walk out of the bell.  \b";
        Me.moveInto(obj199___Beach_Path__);
        Me.location.lookAround(true);
    }

    sdesc = "diving bell"

    prop167 = { return obj363___In_the_Diving_Bell.prop167; }

    thedesc = "the bell"

    location = obj363___In_the_Diving_Bell

    verDoAction43_attack_with(arg1, arg2) = { }

    doAction43_attack_with(arg1, arg2) = { "Struck, the bell resounds like a gong, generating a deep, mellow tone that  reverberates all around you and leaves your ears ringing for some moments.  "; }

    verDoAction95_tap(arg1) = { }

    doAction95_tap(arg1) = { self.doAction43_attack_with(arg1, obj231_hands); }

    prop293 = true
;

obj512_porthole: class33, class79
    noun = 'windows' 'window' 'portholes' 'porthole'

    adjective = 'thick' 'glass' 'round'

    sdesc = "porthole"

    thedesc = "the porthole"

    prop167 = "The portholes are made of thick round glass."

    prop206 = { "You see the inside of the bell.  It's a hollow white chamber large enough to  accommodate two divers.  "; }

    location = obj199___Beach_Path__

    prop505 = [obj222_the_vendor]

    prop293 = true

    verDoAction26_look_in(arg1) = { self.verDoAction40_look_through(arg1); }

    doAction26_look_in(arg1) = { self.doAction40_look_through(arg1); }
;

obj513_dunes: class28, class232, class33
    noun = 'dunes' 'sea-oats' 'dune'

    prop509 = true

    sdesc = "dunes"

    locationOK = true

    location = {
        local local1 = fun227(Me);

        switch (local1) {
          case obj199___Beach_Path__:
          case obj450___Dry_Sand__North_of:
          case obj451___Dry_Sand__South_of:
          case obj287___Damp_Sand__North_o:
          case obj286___Damp_Sand__South_o:
          case obj285___Damp_Sand__Beneath:
          case obj437___Under_Pavilion__:
          case obj447___Storage_Area__:
            return Me.location;
            goto label359771;
          default:
            return nil;
        }
      label359771:
    }

    prop167 = {
        local local1 = fun227(Me);

        switch (local1) {
          case obj199___Beach_Path__:
            "The beach is flanked by tall, artificially maintained dunes that serve to protect the real estate inland of the shoreline.  The dunes are tall, taller than you, and dotted with gangly stalks of sea-oats.  The dunes are protected against erosion by thin slatted fences rooted firmly in the troughs between them.  ";
            goto label360876;
          case obj450___Dry_Sand__North_of:
          case obj451___Dry_Sand__South_of:
            "Tall, wind swept dunes stand between you and the hotels to the west, and also flank the base of the pavilion.  The dunes are dotted with tall, scraggly sea-oats.  ";
            goto label360876;
          case obj287___Damp_Sand__North_o:
          case obj286___Damp_Sand__South_o:
            "Tall, wind swept dunes flank the base of the pavilion, blocking passage beneath it.  Further to the west, more dunes border the beach, isolating it from the solid ground beyond.  ";
            goto label360876;
          case obj285___Damp_Sand__Beneath:
            "Tall, wind swept dunes flank the base of the pavilion, broken only by a broad passage to the west, allowing entrance to the area beneath the pavilion.  ";
            goto label360876;
          case obj437___Under_Pavilion__:
          case obj447___Storage_Area__:
            "Tall, sandy dunes block egress from beneath the pavilion on all sides but to the east.  They also obstruct most of the available light, leaving the underside of the pavilion cool and dim.  ";
            goto label360876;
          default:
            "";
        }
      label360876:
    }

    verDoAction143_climb(arg1) = { "You try to climb the shifting dunes, but slide right back down after just a few steps.  "; }

    doAction9_dig_with(arg1, arg2) = { "You fall to your knees and scoop away great handfuls of sand with  <<arg2.thedesc>>, but the shifting dunes slide down into the hole as fast as  you can dig it.  Eventually you tire of the futile exercise and give up.  "; }

    prop505 = [obj222_the_vendor]

    prop525 = "The dry sand slips between your fingers.  "
;

obj514_thin_slat_fences: class33, class220
    noun = 'fence' 'fences'

    adjective = 'slatted' 'thin' 'slat' 'wire'

    prop509 = true

    prop708 = 9

    sdesc = "thin slat fences"

    prop167 = { "The fences are made of narrow, wooden slats, strung together with thin steel wire.  They seem to be haphazardly placed, and look like they'd be blown to splinters in a rough squall, but apparently they do manage to protect the dunes from the natural forces of erosion.  <<self.prop717>>"; }

    prop505 = [obj222_the_vendor]

    location = obj199___Beach_Path__

    prop525 = "The thin slats are made of rough, unfinished pine.  "
;

obj515_ramp_and_stairway: class33
    noun = 'staircase' 'stairs' 'stairway' 'ramp'

    adjective = 'cement'

    sdesc = "ramp and stairway"

    prop167 = { "Cement stairs lead up to the big pavilion to the east, and a long, shallow  ramp offers easy wheelchair access.  "; }

    location = obj199___Beach_Path__

    verDoAction143_climb(arg1) = { }

    doAction143_climb(arg1) = {
        if (obj212_brick.location == Me || obj213_pail.location == Me && obj213_pail.prop501) {
            "\^<<(obj212_brick.location == Me ? "brick" : "bucket")>>  in hands, you stagger up the concrete ramp.  It's a good thing the ramp was there, as you doubt you could have carried the  <<(obj212_brick.location == Me ? "brick" : "water filled bucket")>>  up all those stairs.  \b";
        } else {
            "You skip lightly up the concrete stairs to the pavilion.  \b";
        }
        Me.prop161(obj269___Pavilion__);
    }

    prop505 = [obj222_the_vendor]
;

obj516_boardwalks: class33
    noun = 'boardwalks' 'boardwalk'

    adjective = 'right' 'wooden' 'left' 'wood'

    prop509 = true

    sdesc = "boardwalks"

    prop167 = { "The twin boardwalks are constructed of broad, wooden planks, trailed along either edge by waist high railings.  They wrap around the pavilion to northeast and southeast, stretching over the tall dunes towards the beach.  "; }

    location = obj199___Beach_Path__

    prop505 = [obj222_the_vendor]

    prop808 = "He cranes his neck to look over the railing.  \"Totally ordinary boardwalk.\"  "
;

obj517_boardwalk: class33, class220
    noun = 'railings' 'railing' 'boardwalk'

    adjective = 'wooden' 'wood'

    prop708 = 9

    sdesc = "boardwalk"

    prop167 = {
        "The boardwalk is made of simple wooden planks, with waist high wooden guard rails running the length of it.  It stretches over the dunes, leading back to the science center and your hotel.  ";
        if (obj518_trash_barrel.location == self.location) {
            "A heavy steel chain passes through the nearby railing, securing the trash barrel to the boardwalk.  ";
        }
        self.prop717;
    }

    verIoAction149_detach_from(arg1) = { }

    ioAction149_detach_from(arg1, arg2) = { "\^<<arg2.thedesc>> isn't attached to the boardwalk.  "; }

    location = obj450___Dry_Sand__North_of

    prop505 = [obj222_the_vendor]

    prop808 = "He cranes his neck to look over the railing.  \"Totally ordinary boardwalk.\"  "
;

obj518_trash_barrel: obj442, class33
    noun = 'can' 'barrel' 'receptacle'

    adjective = 'trash' 'garbage' 'refuse'

    prop136 = nil

    location = obj450___Dry_Sand__North_of

    prop149 = "in"

    prop150 = "out of"

    prop182 = 50

    prop181 = 50

    sdesc = "trash barrel"

    prop167 = { "It consists of two concentric cylinders.  The outer cylinder is made of rough wooden staves bound by three rusty metal hoops.  The inner cylinder is a single piece of textured beige plastic.  The topmost of the metal hoops has been bent slightly out of  shape to accommodate the steel chain that attaches the barrel to the  boardwalk.  The staves seem to be a bit loose as a result.   A few pieces of trash lie at the bottom of the barrel.  "; }

    verDoAction26_look_in(arg1) = { obj520_assorted_rubbish.prop167; }

    verDoAction24(arg1) = { "It's chained pretty securely to the boardwalk railing.  "; }

    prop911 -> prop520

    prop912 -> prop520

    doAction157_search -> prop520

    verDoAction157_search -> prop520

    prop505 = [obj222_the_vendor]

    prop808 = "He shrugs, as if to say \"A rose by any other name, right?\"  "

    prop823(arg1) = { "You scoop a few handfuls of <<say(arg1)>> into <<self.thedesc>>,  but it feels like a futile effort.  "; }

    prop831(arg1) = { "The <<say(arg1)>> spills into the trash and disappears.  "; }

    prop828 = { "You'd just be making a mess of the beach.  Better leave the trash in the barrel.  "; }

    verIoAction149_detach_from(arg1) = { }

    ioAction149_detach_from(arg1, arg2) = { arg2.doAction149_detach_from(self); }

    doSynonym('Action155_push') = 'Action59_move'

    verDoAction155_push(arg1) = { "Even if it weren't chained down, it's pretty heavy.  "; }

    verDoAction152_get_on(arg1) = { "While you could, theoretically, climb into the nearly empty barrel,  you're forced to asked yourself... why?"; }
;

obj519_boardwalk: class33, class220
    noun = 'railings' 'railing' 'boardwalk'

    adjective = 'wooden' 'wood'

    prop708 = 9

    sdesc = "boardwalk"

    prop167 = {
        "The boardwalk is made of simple wooden planks, with waist high wooden guard rails running the length of it.  It stretches over the dunes, leading back to the science center and your hotel.  ";
        if (obj518_trash_barrel.location == self.location) {
            "Chained to the near end of the boardwalk is a trash receptacle.  ";
        }
        self.prop717;
    }

    location = obj451___Dry_Sand__South_of

    prop505 = [obj222_the_vendor]

    prop808 = "He cranes his neck to look over the railing.  \"Totally ordinary boardwalk.\"  "
;

obj520_assorted_rubbish: class33
    noun = 'paper' 'trash' 'cup' 'rubbish' 'papers' 'wrappers' 'wrapper' 'cups'

    adjective = 'sticky' 'assorted'

    location = obj518_trash_barrel

    sdesc = "assorted rubbish"

    adesc = "some assorted rubbish"

    prop167 = { "The can must have been emptied recently.  Just a few pieces of  sticky rubbish, consisting largely of ice cream wrappers and soda  cups, lie at the bottom of the can.  "; }

    verDoAction24(arg1) = { "You look more closely at the contents of the trash can.  The garbage  looks unpleasantly sticky.  You decide to leave it in the barrel.  "; }

    verDoAction26_look_in(arg1) = { }

    doAction26_look_in(arg1) = { self.prop167; }

    doSynonym('Action64_look_under') = 'Action157_search'

    verDoAction64_look_under(arg1) = { }

    doAction64_look_under(arg1) = {
        "You root through the trash, tossing aside ice cream wrappers and soft drink cups.  ";
        if (!obj457_bottle.prop293) {
            "You find an empty glass soda bottle, which you take.  ";
            obj457_bottle.moveInto(arg1);
            obj457_bottle.prop295;
        } else if (!obj225_goggles.prop293) {
            "Aha!  You find a pair of plastic swim goggles, which you take.  ";
            obj225_goggles.moveInto(arg1);
            obj225_goggles.prop295;
            obj20.prop484 = ['delighted'];
        } else {
            "You don't find anything else of interest.  ";
        }
    }

    ioAction13_in -> prop518

    verIoAction13_in -> prop518

    prop505 = [obj222_the_vendor]

    prop808 = "He glances around with a slight frown.   \"You want trash?  'Cause I've got plenty of it.\"  "
;

obj521_beige_plastic: class33
    noun = 'cylinder'

    adjective = 'inner' 'bumpy' 'plastic' 'textured' 'beige'

    location = obj518_trash_barrel

    sdesc = "beige plastic"

    prop167 = "It appears to be sturdy and weather resistant.  "

    prop525 = "The textured plastic is smooth, yet bumpy.  "
;

obj522_two_bottom_hoops: class33
    noun = 'hoops' 'hoop'

    adjective = 'metal' 'first' 'lower' 'rusty' 'two' 'second' 'bottom' 'rusted' 'thin'

    prop509 = true

    location = obj518_trash_barrel

    sdesc = "two bottom hoops"

    prop891 = nil

    prop167 = {
        "Three rusty hoops bind the outer, wooden ring of the barrel together.  The topmost hoop is bent slightly out of shape to accommodate the heavy steel chain that passes through it.  In fact, it seems to be a bit loose.  ";
        if (!self.prop891) {
            self.prop891 = true;
        }
    }

    doSynonym('Action24') = 'Action150_detach'

    doSynonym('Action24') = 'Action153_take_off'

    doSynonym('Action24') = 'Action159_pull'

    verDoAction24(arg1) = { "There's no give at all in either of the bottom two hoops, but the topmost hoop looks promising.  "; }

    doSynonym('Action149_detach_from') = 'Action19_out'

    doSynonym('Action149_detach_from') = 'Action154_take_off_from'

    verDoAction149_detach_from(arg1, arg2) = {
        if (arg2 == obj523_steel_chain) {
            "Only the topmost of them is attached to the chain.  ";
        } else if (arg2 == obj524_stave_cylinder_stave || arg2 == obj518_trash_barrel) {
            self.verDoAction24(arg1);
        } else {
            "The hoops aren't attached to <<arg2.thedesc>>.  ";
        }
    }

    doSynonym('Action85_pry_with') = 'Action46_with'

    doSynonym('Action85_pry_with') = 'Action71_with'

    doSynonym('Action85_pry_with') = 'Action15_with'

    verDoAction85_pry_with(arg1, arg2) = {
        if (arg2 == obj231_hands) {
            "You can't get your fingers beneath either of the bottom two hoops.  Perhaps you'd have more luck with the topmost one.  ";
        } else if (arg2 == obj238_crowbar) {
            "You can't get the crowbar beneath either of the two bottom hoops.  Perhaps you'd have more luck with the topmost one.  ";
        } else {
            "You can't pry the hoops off with <<arg2.thedesc>>.  ";
        }
    }

    doAction85_pry_with(arg1, arg2) = { "The hoops are bound too tightly to remove.  "; }

    prop525 = "They're gritty with rust.  "
;

obj523_steel_chain: class33, class220
    noun = 'chain'

    adjective = 'metal' 'steel'

    prop708 = 9

    locationOK = true

    location = { return obj518_trash_barrel.location; }

    sdesc = "steel chain"

    prop167 = { "It's a heavy steel chain which passes through the topmost hoop of the barrel, joining the barrel to the railing of the boardwalk.  It looks as though  the tightly bound metal hoop had to be bent out of shape in order to pass the  chain beneath it.  The hoop seems a bit loose as a result.  <<self.prop717>>"; }

    doSynonym('Action150_detach') = 'Action153_take_off'

    doSynonym('Action150_detach') = 'Action24'

    doSynonym('Action150_detach') = 'Action159_pull'

    verDoAction150_detach(arg1) = { "You grab hold of the chain and give it a solid tug.  \(Oof!\)  It's not going anywhere.  Maybe if you had a hacksaw, or some bolt cutters.  "; }

    doSynonym('Action149_detach_from') = 'Action19_out'

    doSynonym('Action149_detach_from') = 'Action154_take_off_from'

    verDoAction149_detach_from(arg1, arg2) = {
        if (arg2 == obj517_boardwalk || arg2 == obj518_trash_barrel || arg2 == obj522_two_bottom_hoops || arg2 == obj525_third_hoop || arg2 == obj524_stave_cylinder_stave) {
            self.verDoAction150_detach(arg1);
        } else {
            "The chain isn't attached to <<arg2.thedesc>>.  ";
        }
    }

    doSynonym('Action85_pry_with') = 'Action46_with'

    doSynonym('Action85_pry_with') = 'Action71_with'

    doSynonym('Action85_pry_with') = 'Action15_with'

    verDoAction85_pry_with(arg1, arg2) = { "Nothing short of a bolt cutter is going to remove that chain.  "; }

    prop505 = [obj222_the_vendor]

    prop808 = { "\"Yeah, they chain 'em down mainly so they don't get blown away during storms.\"  "; }

    prop525 = "The links are smooth and well oiled.  "

    verDoAction43_attack_with(arg1, arg2) = { }

    doAction43_attack_with(arg1, arg2) = { "The chain responds with a quick, high \(chink\).  "; }

    verDoAction95_tap(arg1) = { }

    doAction95_tap(arg1) = { self.doAction43_attack_with(arg1, obj231_hands); }
;

obj524_stave_cylinder_stave: class33
    noun = 'stave' 'cylinder' 'staves'

    adjective = 'outer' 'wooden' 'wood'

    location = obj518_trash_barrel

    prop509 = true

    sdesc = {
        if (obj303_broken_stave.prop179(Me)) {
            "barrel staves";
        } else {
            "staves";
        }
    }

    adesc = {
        "the ";
        self.sdesc;
    }

    prop167 = {
        "Each slightly curved stave is about two fingers thick and a little more than half  your height; roughly the dimensions of a baseball bat.  Three thin metal hoops  bind them together, edge to edge, to form a hollow cylinder.  ";
        if (!obj525_third_hoop.prop913) {
            "The topmost hoop seems to have been bent slightly out of shape in order to  accommodate the chain being passed beneath it.  ";
        } else if (obj525_third_hoop.prop913 && obj303_broken_stave.location == self) {
            "One of the staves has been severed in two, leaving the larger portion partially free.  ";
        } else {
            "Most of one stave is missing.  ";
        }
    }

    doSynonym('Action24') = 'Action159_pull'

    doSynonym('Action24') = 'Action153_take_off'

    verDoAction24(arg1) = { "Though a bit loose, they're still tightly bound by the metal hoops.   You might be able to extract a stave if one of the hoops were removed.  "; }

    doSynonym('Action149_detach_from') = 'Action19_out'

    doSynonym('Action149_detach_from') = 'Action154_take_off_from'

    verDoAction149_detach_from(arg1, arg2) = {
        if (arg2 == obj525_third_hoop || arg2 == obj522_two_bottom_hoops) {
            "It's the hoops that bind the staves, not the other way around.  ";
        } else if (arg2 == obj518_trash_barrel) {
            self.verDoAction24(arg1);
        } else {
            "The staves aren't attached to <<arg2.thedesc>>.  ";
        }
    }

    verIoAction149_detach_from(arg1) = { }

    ioAction149_detach_from(arg1, arg2) = { arg2.doAction149_detach_from(self); }

    prop525 = "They're made of rough, unfinished wood.  "
;

obj525_third_hoop: class33, class220
    noun = 'hoop'

    adjective = 'metal' 'third' 'rusty' 'top' 'rusted' 'topmost' 'thin'

    location = obj518_trash_barrel

    sdesc = "third hoop"

    prop891 = nil

    prop167 = { "It must have been bent out of shape deliberately in order to pass the steel chain through it.  You give it an experimental tug.  There's a bit of give, but it doesn't come loose.  "; }

    doSynonym('Action24') = 'Action150_detach'

    doSynonym('Action24') = 'Action153_take_off'

    doSynonym('Action24') = 'Action159_pull'

    verDoAction24(arg1) = { "You manage to jam your finger tips beneath the topmost hoop.  It wiggles  a bit, but it's still too tight for you to remove with your bare hands.  "; }

    doSynonym('Action149_detach_from') = 'Action19_out'

    doSynonym('Action149_detach_from') = 'Action154_take_off_from'

    verDoAction149_detach_from(arg1, arg2) = {
        if (arg2 == obj523_steel_chain) {
            "Both the hoop and the chain are solid steel.  You'd have to cut one or the  other to detach them.  ";
        } else if (arg2 == obj524_stave_cylinder_stave || arg2 == obj518_trash_barrel) {
            self.verDoAction24(arg1);
        } else {
            "The hoops aren't attached to <<arg2.thedesc>>.  ";
        }
    }

    prop913 = nil

    verIoAction5_under(arg1) = { }

    ioAction5_under(arg1, arg2) = {
        outhide(true);
        self.verDoAction85_pry_with(arg1, arg2);
        if (outhide(nil)) {
            self.verDoAction85_pry_with(arg1, arg2);
        } else {
            self.doAction85_pry_with(arg1, arg2);
        }
    }

    doSynonym('Action85_pry_with') = 'Action46_with'

    doSynonym('Action85_pry_with') = 'Action71_with'

    doSynonym('Action85_pry_with') = 'Action15_with'

    doSynonym('Action85_pry_with') = 'Action23_with'

    verDoAction84_pry(arg1) = {
        if (arg1.prop125(obj238_crowbar)) {
            self.verDoAction85_pry_with(arg1, obj238_crowbar);
        } else {
            self.verDoAction85_pry_with(arg1, obj231_hands);
        }
    }

    doAction84_pry(arg1) = {
        if (arg1.prop125(obj238_crowbar)) {
            self.doAction85_pry_with(arg1, obj238_crowbar);
        } else {
            self.doAction85_pry_with(arg1, obj231_hands);
        }
    }

    verDoAction85_pry_with(arg1, arg2) = {
        if (arg2 != obj231_hands && arg2 != obj238_crowbar) {
            "You can't remove the hoop with <<arg2.thedesc>>.  ";
        } else if (self.prop913) {
            "You attempt to slide <<(arg2 == obj231_hands ? "your fingers" : "the crowbar")>>  under the hoop, but all the give is gone.  ";
        } else if (arg2 == obj231_hands) {
            self.verDoAction24(arg1);
        }
    }

    doAction85_pry_with(arg1, arg2) = {
        local local1 = fun219(Me);

        if (arg2 != obj238_crowbar) {
            "You can't remove the hoop with <<arg2.thedesc>>.  ";
            exit;
        }
        if (local1 > 1) {
            obj238_crowbar.moveInto(nil);
            "You set down ";
            if (local1 > 2) {
                "the other stuff";
            } else {
                fun221(Me);
            }
            " you were carrying to free your hands.  Then ";
            fun207(Me, Me.location);
            obj238_crowbar.moveInto(Me);
        }
        "<<(local1 > 2 ? "you" : "You")>> slide the crowbar beneath the deformed hoop where it meets the steel chain, and ratchet it back and forth, trying to loosen the hoop.  The hoop slides up a hair's breadth, then catches on a link of the chain.  You remove the crowbar and shift your point of attack to the chain.  As you apply pressure to the recalcitrant link, it bites into the soft wooden stave beneath it.  You keep pushing, and... \(crack!\)  The force applied to the link splits the stave lengthwise, dividing a thin slice from the trunk of the stave.  The thin slice now bears the brunt of the metal hoop's tension, while the larger piece is free of it.  You could probably  pull the larger piece free now.  ";
        obj303_broken_stave.moveInto(obj524_stave_cylinder_stave);
        obj303_broken_stave.prop295;
        delword(obj524_stave_cylinder_stave, &noun, 'stave');
        self.prop913 = true;
        obj20.prop484 = ['contrite'];
    }

    prop914 = "The rope is far too thick to slide under the distorted hoop.  "

    prop915 = { "You try to lower one end of the rubber strap beneath the hoop, but it keeps catching against the rough wood.  "; }

    prop525 = "It's gritty with rust.  "
;

obj526_pipes: class33, class220
    noun = 'pipes' 'pipe'

    adjective = 'metal' 'drainage' 'sewage'

    prop509 = true

    prop525 = "They're rough surfaced, weathered with age and rust.  "

    prop708 = 9

    sdesc = "pipes"

    adesc = "some pipes"

    prop167 = { "A pair of thick metal pipes extrude from the cement floor above you and bend ninety degrees to follow the length of the pier.  Presumably, these carry water to and from the pavilion's rest rooms and fountains.  <<self.prop717>>"; }

    location = obj437___Under_Pavilion__

    verDoAction95_tap(arg1) = { }

    doAction95_tap(arg1) = { "The pipe resounds with a deep \(gooong\), which vibrates along its length.  "; }

    verDoAction143_climb(arg1) = {
        local local1 = Me.location;

        if (local1.prop638(arg1)) {
        } else {
            "You leap up, grab hold of the pipes overhead, and propel yourself forward  hand over hand.  Unfortunately, the pipes are corroded with bits of rust that  bite into the delicate flesh of your palms.  You don't get very far before you're  forced to drop back to the ground.  ";
        }
    }

    doSynonym('Action41') = 'Action159_pull'

    verDoAction41(arg1) = { "You try to tear the pipes loose from their moorings, but despite their apparent  corrosion, they're quite firmly hung.  "; }
;

obj527_valve: class33, class220
    noun = 'valve' 'pipe'

    adjective = 'air'

    sdesc = "valve"

    thedesc = "the pipe and valve assembly"

    prop167 = { "Divers used this valve to pressurize the bell's chamber, as well as refill their own tanks.  The valve is connected to a pipe that passes through the bell's hull.  Presumably there's a similar valve on the outside, to allow divers to attach an air hose from a surface ship.  <<self.prop717>>"; }

    location = obj363___In_the_Diving_Bell
;

obj528_Tybrisa_Pavilion: class28, class263
    noun = 'gazebo' 'pavilion'

    adjective = 'greater' 'cement'

    sdesc = "Tybrisa Pavilion"

    thedesc = "Tybrisa Pavilion"

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (local1 == obj269___Pavilion__ || local1 == obj448_loc_benchroom || local1 == obj427___By_the_Snack_Bar__ || local1 == obj477___On_the_Enclosure__) {
            return Me.location;
        } else {
            return nil;
        }
    }

    prop167 = { "The pavilion sprawls largely around you, but you don't see anything that wasn't visible at first glance.  Wooden railings, high raftered canopy supported by tall wooden beams, red brick enclosure to the south flanked by a boiled peanut stand, exits to east and west.  All in all an ordinary, if quite large, pavilion.  "; }

    verDoAction140_jump_over(arg1) = {
        local local1 = Me.location;

        if (local1.prop638(arg1)) {
        } else if (local1 != obj427___By_the_Snack_Bar__ && local1 != obj448_loc_benchroom) {
            "You can't jump from here.  The pavilion must be nearly as large as a  football field, and you're right in the middle of it.  ";
        } else {
            class434_railing.verDoAction140_jump_over(arg1);
        }
    }

    doAction140_jump_over(arg1) = { class434_railing.doAction140_jump_over(arg1); }

    prop505 = [obj222_the_vendor]

    prop808 = { "\"All this cement gets to me sometimes, though it looks pretty nice from a  distance.\"  "; }
;

class class529_topic_topics: class28, class224
    noun = 'topic' 'topics'

    locationOK = true

    location = { return Me.location; }

    prop891 = nil

    prop293 = nil

    prop505 = [obj222_the_vendor]

    prop131 = nil

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (self.prop891) {
            self.prop1017;
            exit;
        } else {
            "You don't know of any such thing.  ";
            exit;
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = {
        if (self.prop891) {
            if (arg2 != obj38_tell && arg2 != obj37) {
                self.prop1017;
                exit;
            }
        } else {
            "You don't know of any such thing.  ";
            exit;
        }
    }

    prop1017 = { "\^<<self.thedesc>> <<(self.prop509 ? "are" : "is")>> just a subject of conversation,  not something tangible.  "; }
;

obj530_ghostly_dancers: class529_topic_topics
    noun = 'dancers' 'dancer'

    adjective = 'ghost' 'phantom' 'ghostly'

    prop509 = true

    prop891 = nil

    prop505 = [obj222_the_vendor]

    prop808 = "He lpoks at you with astonishment.  \"Have you \(seen\) them??\"  "

    sdesc = "ghostly dancers"
;

obj531_support_beams: class28, class33
    noun = 'beams' 'beam'

    adjective = 'wooden' 'support' 'wood'

    sdesc = "support beams"

    thedesc = "the support beams"

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (local1 == obj269___Pavilion__ || local1 == obj448_loc_benchroom || local1 == obj427___By_the_Snack_Bar__ || local1 == obj477___On_the_Enclosure__) {
            return Me.location;
        } else {
            return nil;
        }
    }

    prop167 = { "Massive wooden support beams, at least three times your height and broader than you are, hold up the pavilion's enormous, umbrella like roof.  There are eight of them, one at every point of the pavilion's octagonal shape.  "; }

    prop509 = true

    verDoAction143_climb(arg1) = {
        local local1 = fun227(Me);

        if (local1 == obj269___Pavilion__) {
            "The beams are too far away, around the rim of the pavilion.  You might try  moving north or south to approach one.  ";
        } else {
            "You try to wrap your arms around one of the massive beams, but it's so thick  that you can't even reach its opposite face.  You couldn't possibly shimmy  up it.  ";
        }
    }
;

obj532_maintenance_hatch: class28, class63
    noun = 'hatch' 'shape' 'light' 'seam'

    adjective = 'rectangular' 'maintenance' 'seam' 'thin' 'of'

    sdesc = "maintenance hatch"

    prop167 = { return obj478_maintenance_hatch.prop167; }

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (local1 == obj269___Pavilion__ || local1 == obj448_loc_benchroom || local1 == obj427___By_the_Snack_Bar__) {
            return Me.location;
        } else {
            return nil;
        }
    }

    verDoAction156_open(arg1) = { "You can't.  It's far overhead.  "; }

    prop505 = [obj222_the_vendor]

    prop808 = "He looks up at the canopy.  \"Huh.  I never noticed it before.\"  "

    verDoAction40_look_through(arg1) = {
        if (!obj478_maintenance_hatch.prop124) {
            "You can't see much through it while it's closed.  ";
        } else {
            "A small slice of the sunset sky is visible through the open hatch.  ";
        }
    }
;

obj533_Tybrisa_Pavilion: class28, class63
    noun = 'gazebo' 'pavilion'

    adjective = 'greater' 'cement' 'tybrisa'

    sdesc = "Tybrisa Pavilion"

    thedesc = "Tybrisa Pavilion"

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (isclass(local1, obj217) || local1 == obj339___Inside_the__Octopu || local1 == obj269___Pavilion__ || local1 == obj448_loc_benchroom || local1 == obj427___By_the_Snack_Bar__ || local1 == obj477___On_the_Enclosure__ || local1 == obj381___Grotto__) {
            return nil;
        } else {
            return Me.location;
        }
    }

    prop167 = {
        local local1 = fun227(Me);

        switch (local1) {
          case obj199___Beach_Path__:
            "Tybrisa Pavilion lies up to the east, beyond a cement staircase.   It looks like a colossal, open air gazebo, with a high raised canopy  supported by wooden beams.  ";
            goto label378398;
          case obj449___Middle_of_Pier__:
          case obj432___End_of_Pier__:
            "Tybrisa Pavilion lies back to the west, at the foot of the pier.  It looks  like a colossal, open air gazebo, with a high raised canopy supported by  wooden beams.  ";
            goto label378398;
          case obj450___Dry_Sand__North_of:
            "Tybrisa Pavilion lies to the south.  The pavilion is supported by cement pylons, and it looks like you could walk underneath it, though entrance beneath the north face is blocked by wind swept dunes.  ";
            goto label378398;
          case obj451___Dry_Sand__South_of:
            "Tybrisa Pavilion lies to the north.  The pavilion is supported by cement pylons, and it looks like you could walk underneath it, though entrance beneath the south face is blocked by wind swept dunes.  ";
            goto label378398;
          case obj287___Damp_Sand__North_o:
            "Tybrisa Pavilion lies to the southwest.  The pavilion is supported by cement pylons, and it looks like you could walk underneath it, though the face closest to you is blocked by wind swept dunes.  ";
          case obj286___Damp_Sand__South_o:
            "Tybrisa Pavilion lies to the southwest.  The pavilion is supported by cement pylons, and it looks like you could walk underneath it, though the face closest to you is blocked by wind swept dunes.  ";
            goto label378398;
          case obj433___On_the_Canopy__:
            if (obj480_maintenance_hatch.prop124) {
                "Far below you lies the hard cement floor of the pavilion, illuminated by a powerful beam of light passing through the open maintenance hatch.  ";
            } else {
                "With the maintenance hatch closed, you can't see anything but the shingled  roof beneath your feet.  ";
            }
            goto label378398;
          case obj437___Under_Pavilion__:
            "Tybrisa Pavilion lies forbiddingly over you, the cement base scant inches above your head.  The thought of all that weight coming down on you makes you fidgety.  Fortunately, the pavilion is supported by several rows of sturdy looking cement pylons.  You can also see several wide pipes extruding from the pavilion's underside.  ";
            goto label378398;
          case obj447___Storage_Area__:
            "The edge of the pavilion rests just over you to the east.  ";
            goto label378398;
          case obj453___Shallow_Water__Ben:
            "The pavilion is supported by cement pylons, and it looks like you could walk underneath it.  In fact, there is a gap in the dunes surrounding the base, allowing passage beneath the pavilion to the west.  ";
            goto label378398;
          case obj452___Shallow_Water__Nor:
          case obj454___Shallow_Water__Sou:
          case obj489___Deep_Water__North_:
          case obj490___Deep_Water__Beneat:
          case obj464___Deep_Water__South_:
            "Tybrisa Pavilion lies back towards the west, at the foot of the long pier.  ";
            goto label378398;
        }
      label378398:
    }

    prop505 = [obj222_the_vendor]

    prop808 = { "\"All this cement gets to me sometimes, though it looks pretty nice from a  distance.\"  "; }

    verDoAction141_jump_into(arg1) = {
        if (Me.location != obj433___On_the_Canopy__) {
            "You can't reach the pavilion from here.  ";
        } else {
            obj480_maintenance_hatch.verDoAction142_jump_through(arg1);
        }
    }

    {{{ unexpected synonym prop546 -> verDoAction13_in }}}

    {{{ unexpected synonym prop547 -> doAction13_in }}}

    {{{ unexpected synonym prop546 -> prop917 }}}

    {{{ unexpected synonym prop547 -> prop838 }}}

    {{{ unexpected synonym prop546 -> verDoAction53_on }}}

    {{{ unexpected synonym prop547 -> doAction53_on }}}

    prop548(arg1) = {
        if (Me.location != obj433___On_the_Canopy__) {
            "You can't reach the pavilion from here.  ";
        } else if (obj480_maintenance_hatch.prop124 == nil) {
            "You can't drop anything into the pavilion while the maintenance hatch is closed.  ";
        }
    }

    prop549(arg1, arg2) = { obj480_maintenance_hatch.ioAction7_through(arg1, arg2); }
;

obj534_pier: class28, class63
    noun = 'pier'

    adjective = 'concrete' 'cement'

    sdesc = "pier"

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (local1 == obj449___Middle_of_Pier__ || local1 == obj432___End_of_Pier__ || local1 == obj199___Beach_Path__ || isclass(local1, obj237) || isclass(local1, obj217) || local1 == obj381___Grotto__) {
            return nil;
        } else {
            return Me.location;
        }
    }

    prop167 = {
        local local1 = fun227(Me);

        switch (local1) {
          case obj433___On_the_Canopy__:
            "From your vantage on top of the pavilion, you can see the entire pier  as it stretches out towards the ocean like some great, rigid eel.  ";
            goto label379713;
          case obj269___Pavilion__:
          case obj448_loc_benchroom:
          case obj427___By_the_Snack_Bar__:
          case obj477___On_the_Enclosure__:
          case obj450___Dry_Sand__North_of:
          case obj451___Dry_Sand__South_of:
          case obj287___Damp_Sand__North_o:
          case obj286___Damp_Sand__South_o:
          case obj452___Shallow_Water__Nor:
          case obj454___Shallow_Water__Sou:
            "The long, cement pier extends far out over the ocean from the eastern  edge of the pavilion.  A few people stroll its length, enjoying the sunset.  ";
            goto label379713;
          case obj489___Deep_Water__North_:
          case obj464___Deep_Water__South_:
            "The long, cement pier finally comes to an end, far from shore.  ";
            goto label379713;
          case obj285___Damp_Sand__Beneath:
          case obj453___Shallow_Water__Ben:
          case obj490___Deep_Water__Beneat:
            "The long cement pier lies above you like some fantastic, stony eel,  extending far out over the ocean.  The unbroken expanse casts a dark  shadow beneath itself, lowering the immediate temperature by about  five degrees.  ";
            goto label379713;
          default:
            "";
        }
      label379713:
    }

    prop505 = [obj222_the_vendor]

    prop808 = { return obj535_pier.prop808; }

    prop293 = true

    verIoAction53_on(arg1) = {
        if (fun227(arg1) != obj433___On_the_Canopy__) {
            "It's too far away.  ";
        }
    }

    ioAction53_on(arg1, arg2) = { obj455_pavilion_s_canopy.ioAction50_over(arg1, arg2); }
;

obj535_pier: class28, class263
    noun = 'pier'

    adjective = 'concrete' 'cement'

    prop525 = "You bend down and place your palm flat against the cement.  It's  still warm.  "

    sdesc = "pier"

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (local1 == obj449___Middle_of_Pier__ || local1 == obj432___End_of_Pier__) {
            return Me.location;
        } else {
            return nil;
        }
    }

    prop167 = { "The long, cement pier extends far out over the ocean from the eastern edge of the pavilion.  A few people stroll its length, enjoying the sunset.  A waist high railing runs along either side of the pier, protecting you and your fellow strollers from a long drop to the <<(Me.location == obj449___Middle_of_Pier__ ? "beach" : "ocean")>> below.  "; }

    verIoAction49_off(arg1) = { }

    ioAction49_off(arg1, arg2) = { self.ioAction50_over(arg1, arg2); }

    verIoAction50_over(arg1) = { }

    ioAction50_over(arg1, arg2) = {
        if (Me.location == obj432___End_of_Pier__) {
            obj424_ocean_tide_surf.ioAction13_in(arg1, arg2);
        } else {
            obj446_sandy_beach.ioAction13_in(arg1, arg2);
        }
    }

    doAction140_jump_over -> doAction60_fasten

    verDoAction140_jump_over -> doAction60_fasten

    prop505 = [obj222_the_vendor]

    prop808 = "He gazes east, out over the pier.  \"Incredible, isn't it?  All that cement.\"  "
;

obj536: class434_railing
    location = obj427___By_the_Snack_Bar__
;

obj537: class434_railing
    location = obj448_loc_benchroom
;

obj538: class434_railing
    location = obj449___Middle_of_Pier__
;

obj539: class434_railing
    location = obj432___End_of_Pier__
;

class class540_railing: class63
    noun = 'handrail' 'braces' 'railing' 'banister' 'rail' 'brace'

    adjective = 'wooden' 'hand' 'wood'

    sdesc = "railing"

    prop167 = { "It looks like many railings you've seen.  A long wooden handrail lies at waist height.   Below it at knee height lies a second rail.  Both are supported by vertical braces  placed every body length or so.  The railing surrounds the pavilion on every side,  broken only by exits to the east and west.  "; }

    prop505 = [obj222_the_vendor]

    prop808 = { return class434_railing.prop808; }

    verIoAction49_off(arg1) = { self.ioAction50_over(arg1); }

    verIoAction50_over(arg1) = { self.prop923; }

    verDoAction143_climb(arg1) = { self.verDoAction140_jump_over(arg1); }

    verDoAction140_jump_over(arg1) = { self.prop923; }
;

obj541: class540_railing
    location = obj477___On_the_Enclosure__

    prop923 = "It occurs to you that you might do better if you got off the enclosure.  "
;

obj542: class540_railing
    location = obj269___Pavilion__

    prop923 = "The pavilion is really /(big/), and the railing lies far off at its periphery.   You might try going north or south to get closer to the railing.  "
;

obj543_benches: class63
    noun = 'bench' 'benches'

    adjective = 'wooden' 'wood'

    prop167 = {
        "They're an ordinary looking bunch of benches.  ";
        obj475_benches.prop896;
        "You can't tell much more than that from here.  ";
    }

    sdesc = "benches"

    prop509 = true

    location = obj269___Pavilion__

    prop505 = [obj222_the_vendor]

    prop808 = { return obj475_benches.prop808; }
;

class class544: class28, class63
    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (local1 == obj269___Pavilion__ || local1 == obj448_loc_benchroom || local1 == obj477___On_the_Enclosure__) {
            return Me.location;
        } else {
            return nil;
        }
    }

    prop505 = [obj222_the_vendor]
;

obj545_snack_bar: class544
    noun = 'bar' 'snackbar' 'counter'

    adjective = 'snack'

    sdesc = "snack bar"

    prop167 = { "It's an ordinary looking snack bar.  There's <<(obj222_the_vendor.location == obj427___By_the_Snack_Bar__ ? "a vendor behind the counter and " : "")>>a sign over it that advertises boiled peanuts.  If you want a better look, you'll have to go <<(Me.location == obj477___On_the_Enclosure__ ? "down" : "over")>> there.  "; }

    verDoAction141_jump_into(arg1) = {
        if (Me.location != obj477___On_the_Enclosure__) {
            "It's too far away.  ";
        } else if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            "You creep up to the edge of the roof and position yourself for a jump.  The vendor, still tucking away his wares, spots you and shoots you a withering glance.  You wisely back away.  The vendor soon goes back to what he was doing.  ";
        }
    }

    doAction141_jump_into(arg1) = {
        "With scarcely a thought for safety, you leap down to the counter top,  landing with a loud crash that rattles the entire counter.  \b";
        arg1.prop161(obj546_snack_bar);
        obj427___By_the_Snack_Bar__.prop665 = 2;
    }

    prop505 = [obj222_the_vendor]

    prop808 = { return obj546_snack_bar.prop808; }
;

obj546_snack_bar: class259
    noun = 'bar' 'snackbar' 'counter'

    adjective = 'snack'

    prop525 = "You slide your hand over the smooth, formica counter.  It's a bit  sticky in places.  "

    prop127 = { return [obj239_boiler, obj552_brick_enclosure] + self; }

    location = obj427___By_the_Snack_Bar__

    sdesc = "snack bar"

    prop167 = {
        local local1, local2, local3;

        local1 = obj222_the_vendor.location == obj427___By_the_Snack_Bar__;
        local2 = obj239_boiler.prop501;
        local3 = obj556_husks_peanuts_peanut.location == obj239_boiler;
        "The snack bar carries the usual variety of foods and beverages, though <<(local1 ? "few" : "none")>> of these are in evidence.  Apparently, the vendor <<(local1 ? "is locking" : "has locked")>> up for the night.  Empty shelves line the wall behind the counter, and presumably there are more shelves beneath the counter.  A prominently placed sign advertises boiled peanuts, something you've come to think of as a particularly southern delicacy.  Just behind the counter is a<<(obj239_boiler.prop124 ? "n open" : " closed")>> metal boiler";
        if (obj239_boiler.prop124) {
            if (local2) {
                " full of ";
                if (obj239_boiler.prop804 > 2) {
                    "bubbling ";
                }
                "water";
                if (local3) {
                    ", in which a handful of peanuts still bob and dance";
                }
            }
        }
        if (obj239_boiler.prop338) {
            ", its metal lid held firmly in place by a strong metal clamp";
        }
        ".  ";
    }

    prop670(arg1) = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            "You raise one knee onto the counter top, prompting a sceptical glance from the vendor, who looks at you as if to say \"You're not climbing \(my\) counter, bub.\"  You wisely decide to withdraw your knee.  ";
        } else {
            pass prop670;
        }
    }

    verIoAction13_in(arg1) = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            "A cutting glance from the vendor convinces you otherwise.  ";
        }
    }

    prop505 = [obj222_the_vendor]

    prop808 = {
        "\"Beautiful, isn't it?\" says the vendor with a sardonic grin.  He performs a mock game show hostess maneuver, waving his arms above  the counter in a gesture that suggests unconditional opulence.  \"Yes, and all this can be yours if the price is right!  So c'mon down!\"  He chuckles mildly at his own humor.  \"But seriously, it's not as lousy a job as you might think.  Kind of cathartic, in a way.  It's certainly a welcome change from all the crappy corporate jobs I used to work.\"  ";
        obj557_crappy_corporate_job.prop293 = true;
    }

    verDoAction65_look_behind(arg1) = { "The only thing of obvious interest is the industrial boiler.  "; }

    verDoAction64_look_under(arg1) = { "The narrow space beneath the counter is deep in shadow.  You can't make out  anything of interest, and it's unlikely that you could retrieve anything anyway.  "; }
;

obj547_vendor: class28, class63
    noun = 'vendor'

    adjective = 'snack' 'bar' 'boiled' 'snackbar' 'peanut'

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__ && (local1 == obj269___Pavilion__ || local1 == obj448_loc_benchroom || local1 == obj477___On_the_Enclosure__) || obj222_the_vendor.location == obj269___Pavilion__ && (local1 == obj448_loc_benchroom || local1 == obj477___On_the_Enclosure__)) {
            return Me.location;
        } else {
            return nil;
        }
    }

    sdesc = "vendor"

    prop167 = { "You can't tell much about him from here.  If you want to get a better look,  you'll have to go <<(Me.location == obj477___On_the_Enclosure__ ? "down" : "over")>> there.  "; }

    verDoAction136_ask_about(arg1, arg2) = { "He's too far away.  You'll have to go over there if you want to talk to him.  "; }

    verDoAction3_follow(arg1) = {
        if (obj222_the_vendor.prop321.location == nil) {
            "He doesn't seem to be going anywhere.  ";
        } else if (Me.location == obj477___On_the_Enclosure__ && fun219(Me) > 0) {
            "You'll have to empty your hands before you can climb back down.  ";
        }
    }

    doAction3_follow(arg1) = { arg1.prop161(obj222_the_vendor.location); }

    prop505 = [obj222_the_vendor]

    prop808 = { return obj222_the_vendor.prop808; }
;

obj548_boiled_peanut_sign: class544
    noun = 'sign'

    adjective = 'snack' 'bar' 'boiled' 'snackbar' 'peanut'

    sdesc = "boiled peanut sign"

    prop167 = { "It's a sign advertising boiled peanuts.  If you want to know more, you'll have  to go <<(Me.location == obj477___On_the_Enclosure__ ? "down" : "over")>> there.  "; }

    prop505 = [obj222_the_vendor]

    prop808 = { return obj549_boiled_peanut_sign.prop808; }
;

obj549_boiled_peanut_sign: class48, class33
    noun = 'sign'

    adjective = 'boiled' 'peanut'

    location = obj427___By_the_Snack_Bar__

    sdesc = "boiled peanut sign"

    prop167 = { "The sign reads \"Boiled Peanuts\" in hand-painted red letters three fingers high.  "; }

    prop168 = { return self.prop167; }

    prop808 = "He cranes his neck to look around the sign.  \"I think it's  pretty self explanatory.\"  "
;

obj550_brick_enclosure: class33
    noun = 'enclosure' 'face' 'wall'

    adjective = 'brick' 'red'

    prop525 = "You rub your palm over the rough, red brick.  "

    sdesc = "brick enclosure"

    thedesc = "the enclosure"

    prop167 = { "It's a red brick enclosure that houses the pavilion's rest rooms.  It's only about twice your height, and it looks like there's plenty of space between the top of the enclosure and the pavilion's canopy.  Two matching doors in the nearest wall are shut.  Hung  between them is a bronze plaque.  "; }

    location = obj269___Pavilion__

    verDoAction143_climb(arg1) = { "You look longingly up at the red brick wall, but the roof of the enclosure is clearly  out of reach.  "; }

    prop505 = [obj222_the_vendor]

    prop808 = { return obj552_brick_enclosure.prop808; }
;

obj552_brick_enclosure: class33
    noun = 'enclosure' 'face' 'wall'

    adjective = 'brick' 'red'

    prop525 = "You rub your palm over the rough, red brick.  "

    sdesc = "brick enclosure"

    thedesc = "the enclosure"

    prop167 = { "It's a red brick enclosure that houses the pavilion's rest rooms.  All you can see of it from here is an unbroken brick wall.  The wall is only about twice your height, and it looks like there's plenty of space between the top of the enclosure and the pavilion's canopy.  "; }

    location = obj427___By_the_Snack_Bar__

    verDoAction143_climb(arg1) = {
        if (Me.location == obj546_snack_bar) {
            "You gaze longingly up at the wall.  The counter ends a good three feet away  from it.  You could jump, but you still wouldn't reach the roof.  ";
        } else {
            "You gaze longingly up at the wall, but the roof is clearly out of reach.  ";
        }
    }

    prop505 = [obj222_the_vendor]

    prop808 = "He gestures at the wall.  \"I can't tell anything you can't see  from right here.\"  "
;

obj553_brick_enclosure: class63
    noun = 'enclosure' 'face' 'wall'

    adjective = 'brick' 'red'

    location = obj448_loc_benchroom

    sdesc = "brick enclosure"

    thedesc = "the enclosure"

    prop167 = "It's a red brick enclosure that houses the pavilion's rest rooms.  "
;

obj554_rest_room_doors: class33
    noun = 'doors' 'door'

    adjective = 'bathroom' 'restroom' 'bath' 'room' 'rest'

    sdesc = "rest room doors"

    prop167 = { "The twin doors lead to the pavilion's rest rooms.  Both doors are closed.  "; }

    location = obj269___Pavilion__

    verDoAction156_open(arg1) = { }

    doAction156_open(arg1) = { "You can't.  The rest room doors are both locked.  "; }

    prop505 = [obj222_the_vendor]

    prop808 = { "\"Sorry, I don't have a key.  You'd think they'd give me one, the jerks.\"  "; }

    doAction70_unlock(arg1) = { askio(obj68_with); }

    verDoAction69_unlock_with(arg1, arg2) = { "You can't open the rest room doors with <<arg2.thedesc>>.  "; }
;

obj555_brass_plaque: class33, class48
    noun = 'plaque'

    adjective = 'brass'

    prop525 = "The brass is cool beneath your finger tips.  "

    prop293 = nil

    sdesc = "brass plaque"

    thedesc = "the plaque"

    prop167 = {
        "The plaque commemorates Tybrisa Pavilion II.  You learn that the original Tybrisa Pavilion, built in 1891, played the role of dance hall, bandstand, and general tourist attraction, and at one time was a popular stop on the Big Band circuit.  It served the local community for over three quarters of a century before burning down in 1967.  Curiously, Tybrisa Pavlion II wasn't built until 1996, nearly 30 years after the original's destruction.  ";
        if (obj268_mud.prop924 > 2 && !self.prop891) {
            "\bA sudden burst of realization hits you.  The level surface on which you  uncovered the dance steps must have been a chunk of the old Tybrisa pavilion!  ";
        }
        self.prop891 = true;
    }

    prop168 = { return self.prop167; }

    location = obj269___Pavilion__

    prop505 = [obj222_the_vendor]

    prop808 = { "\"I've heard you can still find chunks of the original pavilion hidden under the mud.\"  "; }

    verDoAction43_attack_with(arg1, arg2) = { }

    doAction43_attack_with(arg1, arg2) = { "The plaque resounds with a sweet, mellow tone.  "; }

    verDoAction95_tap(arg1) = { }

    doAction95_tap(arg1) = { self.doAction43_attack_with(arg1, obj231_hands); }
;

obj556_husks_peanuts_peanut: class49
    noun = 'husks' 'peanuts' 'peanut' 'husk'

    adjective = 'boiled' 'boiling' 'some'

    prop509 = true

    prop140 = 1

    prop141 = 3

    prop505 = [obj222_the_vendor]

    prop808 = "He looks up from his work.  \"They're definitely an acquired taste.   I still prefer to peel the husks.\"  "

    prop394 = {
        if (self.location == obj239_boiler) {
            return true;
        } else {
            return nil;
        }
    }

    location = obj239_boiler

    sdesc = { "<<(self.location == obj239_boiler ? "boiling" : "sack of")>> peanuts"; }

    adesc = {
        "<<(self.location == obj239_boiler ? "some " : "a ")>>";
        self.sdesc;
    }

    prop167 = {
        if (self.location == obj239_boiler) {
            "A few lonely peanuts still bob and jig in the bubbling water of the snack bar's boiler.  ";
        } else {
            "It's a paper sack full of soggy peanuts.  ";
        }
    }

    verDoAction125_buy(arg1) = {
        local local1, local2;

        local1 = fun227(Me);
        local2 = obj222_the_vendor.location;
        if (!obj239_boiler.prop501 && local2 == local1) {
            "The vendor chuckles at you and keeps walking.  \"Hey, I'm sorry, but  I'm outta here.  See ya!\"  ";
        } else if (self.location != obj239_boiler || local2 != local1) {
            pass verDoAction125_buy;
        }
    }

    doAction125_buy(arg1) = {
        "You clear your throat to get the vendor's attention before asking, \"Pardon, could I have some peanuts?\"  \"Oh, sure,\" says the vendor.  \"I think I've got a few left... yup, you're in luck.  I'm closing up for the night.  Another few minutes and I woulda tossed 'em.\"  ";
        self.prop994;
    }

    prop994 = {
        if (obj212_brick.location == Me) {
            "\"But how'm I supposed to hand anything to you while you're holding  that brick?\"  ";
            exit;
        }
        "He takes a pot holder from beneath the counter and uses it to grab a wireframe sieve resting in the boiler.  He bends over the boiler, and as he does, a small steel key slides out of his shirt pocket and falls into the bubbling water.  Using the sieve, he scoops up the bobbing peanuts.  He waits a moment while the sieve drains, and then dumps the peanuts into a brown paper sack.  You dig a dollar out of your pocket and hand it over, and he in turn hands you the sack of peanuts.  Apparently, he hasn't noticed his missing key.  ";
        obj567_steel_key.moveInto(obj239_boiler);
        if (!obj567_steel_key.prop293) {
            obj567_steel_key.prop295;
        }
        obj556_husks_peanuts_peanut.moveInto(Me);
        addword(obj556_husks_peanuts_peanut, &noun, 'bag');
        addword(obj556_husks_peanuts_peanut, &adjective, 'bag');
        addword(obj556_husks_peanuts_peanut, &noun, 'sack');
        addword(obj556_husks_peanuts_peanut, &adjective, 'sack');
        addword(obj556_husks_peanuts_peanut, &adjective, 'of');
        addword(obj556_husks_peanuts_peanut, &adjective, 'soggy');
        notify(obj222_the_vendor, &prop1000, 3);
    }

    doAction24(arg1) = {
        if (self.location == obj239_boiler) {
            obj239_boiler.ioAction19_out(arg1, self);
        } else {
            pass doAction24;
        }
    }

    verIoAction19_out(arg1) = { }

    ioAction19_out(arg1, arg2) = {
        if (arg2 == self && self.location != obj239_boiler) {
            "Better just leave them in the sack.  ";
        } else {
            pass ioAction19_out;
        }
    }

    verDoAction167_empty(arg1) = {
        if (self.location != obj239_boiler) {
            "Better just leave them in the sack.  ";
        } else {
            "Huh?";
        }
    }

    verDoAction19_out(arg1, arg2) = {
        if (arg2 == self && self.location != obj239_boiler) {
            "Better just leave them in the sack.  ";
        } else {
            pass verDoAction19_out;
        }
    }

    verDoAction89_peel(arg1) = { self.verDoAction112_eat(arg1); }

    doAction89_peel(arg1) = { self.doAction112_eat(arg1); }

    verDoAction112_eat(arg1) = {
        if (self.location == obj239_boiler) {
            "Bobbing for peanuts in boiling water, that's a new one!  Maybe you should  try that next Halloween.  ";
        } else if (self.location != Me) {
            "You don't have the peanuts.  ";
        } else {
            pass verDoAction112_eat;
        }
    }

    doAction112_eat(arg1) = {
        if (self.prop979) {
            "You pick a peanut out of the sack and nibble on it.  There are still plenty  more in the sack.  ";
        } else {
            "This southern delicacy is still something of an oddity to you.  Some locals actually eat the entire peanut, husk and all.  Never one to pass up a new experience, you pluck a peanut from the sack and pop it into your mouth.  The husk crunches soggily between your teeth, revealing the pulpy fruit inside.  You queazily suspect that a large bug would share the same texture.  But despite that... it doesn't taste bad.   In fact, boiled, the peanuts taste a lot like black eyed peas.  You try another, this time removing the husk.  Yes, it's quite tasty, so you eat a few more. They're so rich though, that it doesn't take  many at all to quell your hunger.  Thankfully, your stomach has stopped  its rumbling, and there are still plenty of peanuts left in the sack.  ";
            self.prop979 = true;
            obj20.prop484 = ['satiated', 'satisfied'];
        }
    }

    prop979 = nil

    prop557 = {
        if (!self.prop882) {
            "The peanuts get a bit soggier.  ";
            return true;
        } else {
            return nil;
        }
    }

    verIoAction121_drop_on(arg1) = { }

    ioAction121_drop_on(arg1, arg2) = {
        if (self.location == obj239_boiler || arg2 != obj212_brick) {
            "You can't put anything on the boiled peanuts.  ";
        } else {
            "You consider using the brick to turn the peanuts into peanut butter.   Eventually, you decide that the peanuts probably wouldn't taste very  good after being mashed into the ground.  ";
        }
    }
;

obj557_crappy_corporate_job: class529_topic_topics
    noun = 'bullshit' 'corporate' 'work'

    adjective = 'bullshit' 'corporate'

    sdesc = "crappy corporate jobs"

    thedesc = { return self.sdesc; }

    adesc = { return self.sdesc; }

    prop509 = true

    prop808 = { "\"You know, the kind of job where nothing original or creative is appreciated.   Where you spend half your time fighting office politics.  Where you get no overtime  pay for the sixteen hour days you put in.  That kind of thing.  I've just had  enough!  From now on, I don't care about the so-called 'fast track.'  I just want  to do things that interest me.  So long as I'm happy and healthy, that's all that's  important.  Life is just too damned short to waste it being miserable for  someone else's benefit.\"  "; }
;

obj558_shelves: class33
    noun = 'shelf' 'shelves'

    prop509 = true

    location = obj427___By_the_Snack_Bar__

    sdesc = "shelves"

    prop167 = { "The shelves are empty.  Apparently all the food has been tucked away for the night.  "; }

    prop505 = [obj222_the_vendor]

    prop808 = { "\"They are what they are.  Sorry they're empty, but I'm shutting down for the  night.\"  "; }

    verIoAction13_in(arg1, arg2) = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            "A cutting glance from the vendor convinces you otherwise.  ";
        } else {
            "The shelves line the back wall of the snack bar, out of reach behind the counter.  ";
        }
    }

    verDoAction26_look_in(arg1) = {
        "The shelves are empty.  ";
        if (obj222_the_vendor.location != obj427___By_the_Snack_Bar__) {
            "Apparently the vendor has already put everything away just about everything.  ";
        } else {
            "It looks like everything's been locked up for the night.  ";
        }
    }
;

obj559_brick_enclosure: class263
    noun = 'enclosure' 'roof'

    adjective = 'brick' 'red' 'enclosure\'s'

    prop525 = "The roof of the enclosure is made of the same gray cement  you've seen elsewhere.  "

    sdesc = "brick enclosure"

    thedesc = "the enclosure's roof"

    prop167 = { "It's a red brick enclosure that houses the pavilion's rest rooms.  All you can see  of it from up here is its roof, on which you are standing.  "; }

    location = obj477___On_the_Enclosure__

    verDoAction140_jump_over(arg1) = {
        if (Me.prop925) {
            "Not a chance.  Your knees are still sore from your last leap.  ";
        }
    }

    doAction140_jump_over(arg1) = {
        "Without scarcely a thought for your safety, you leap off the enclosure roof.  It's a short, fast fall and you land jarringly on the pavilion's hard cement floor.  The impact sends shards of pain through your knees and rips a gasp from your throat.  After a while, the pain subsides, allowing you to straighten up.  \b";
        obj20.prop484 = ['achy', 'achy', 'stiff'];
        Me.prop161(obj269___Pavilion__);
        Me.prop519(&prop925);
    }

    verDoAction152_get_on(arg1) = { "You're already on the enclosure.  "; }

    doSynonym('Action152_get_on') = 'Action143_climb'

    doSynonym('Action152_get_on') = 'Action54_stand_on'

    prop505 = [obj222_the_vendor]

    prop808 = { return obj552_brick_enclosure.prop808; }

    verIoAction49_off(arg1) = { }

    ioAction49_off(arg1, arg2) = { self.ioAction50_over(arg1, arg2); }

    verIoAction50_over(arg1) = { }

    ioAction50_over(arg1, arg2) = {
        local local1, local2, local3, local4, local5;

        local2 = 'crashes to';
        if (isclass(arg2, class215) && length(arg2.prop502)) {
            arg2 = arg2.prop502[1];
        }
        local5 = arg2.prop710;
        local4 = [obj561_antique_bottle, obj465_conch_shell, obj560_conch_shell, obj471_scuba_mask];
        if (find(local4, arg2) != nil) {
            local3 = arg2;
        } else if (local5 && find(local4, local5) != nil) {
            local3 = local5;
        }
        if (local3 != nil) {
            "It occurs to you that throwing <<local3.thedesc>> to the cement floor of the pavilion  would surely destroy it.  You decide to spare <<local3.thedesc>>.  ";
            exit;
        }
        if (arg2 == obj255_white_rubber_strap || arg2 == obj302_length_of_rope || arg2 == obj438_parchment) {
            local2 = 'flaps to';
        } else if (arg2 == obj562_cork) {
            local2 = 'bounces off';
        } else if (arg2 == obj426_shrimp || arg2 == obj563_boiled_crab) {
            local2 = 'splatters on';
        } else if (arg2 == obj238_crowbar) {
            local2 = 'clangs to';
        }
        "You toss <<arg2.thedesc>> over the edge of the enclosure, where it  <<say(local2)>> the cement floor of the pavilion.  ";
        arg2.moveInto(obj269___Pavilion__);
        if (arg2 == obj457_bottle || local5 == obj457_bottle) {
            obj457_bottle.prop657;
            obj457_bottle.moveInto(nil);
        }
    }
;

obj560_conch_shell: class594, class42
    noun = 'shell'

    adjective = 'conch'

    location = nil

    sdesc = "conch shell"

    prop525 = "It's slick and smooth to the touch.  "

    prop527 = {
        if (self.location != Me) {
            "You need to be holding <<self.thedesc>> to listen to it.  ";
        } else {
            if (isclass(Me.location, obj217)) {
                "You can't hear much while submerged.  ";
            } else {
                "You hold the shell up to your ear.  The gentle roar stirs happy  childhood memories.  ";
            }
        }
    }
;

obj561_antique_bottle: class220, class218, class75, class79
    noun = 'bottle'

    adjective = 'glass' 'old' 'ancient' 'antique'

    prop295 = {
        obj616_wax.prop295;
        obj562_cork.prop295;
        pass prop295;
    }

    prop149 = "in"

    prop511 = "cram"

    prop563 = true

    prop136 = true

    prop169 = { return self.prop124; }

    prop135 = true

    prop649 = {
        if (self.prop504 == nil && obj562_cork.location == self) {
            return 2;
        } else {
            return 0;
        }
    }

    prop178 = true

    prop504 = nil

    prop501 = nil

    adesc = {
        "an ";
        self.sdesc;
    }

    location = nil

    sdesc = "antique bottle"

    prop512 = "bottle"

    prop513 = "the bottle"

    prop514 = "a bottle"

    prop962 = true

    prop881 = nil

    prop124 = {
        if (obj562_cork.location == self) {
            return nil;
        } else {
            return true;
        }
    }

    prop140 = {
        local local1 = self.prop504;

        if (local1 == nil) {
            return 2;
        } else if (local1 == 'salt water' || local1 == 'dry sand') {
            return 3;
        } else if (local1 == 'wet sand') {
            return 4;
        }
    }

    prop141 = 3

    prop181 = 1

    prop182 = 2

    prop167 = {
        if (Me.location == self.location.prop650) {
            "It's just a dark shadow floating on the surface above you.  ";
        } else {
            "It's an ancient rum bottle, aged to the color of dull copper";
            if (self.prop962) {
                ", and sealed with a thick sheath of blood red wax";
            } else if (!self.prop124) {
                ", and sealed with a mahogany stained cork";
            }
            ".  Much of its surface has been tinged an opaque sea green by the  elements.  Ribbons of oily color twist through the splotchy patches of  copper and green.  ";
        }
        self.prop717;
    }

    doSynonym('Action26_look_in') = 'Action40_look_through'

    prop891 = nil

    verDoAction26_look_in(arg1) = {
        if (!self.prop891) {
            if (!arg1.prop125(self)) {
                "The glass is pretty weathered.  You'll need to pick it up if you want to see  inside it.  ";
            }
        }
    }

    doAction26_look_in(arg1) = {
        if (self.prop891) {
            pass doAction26_look_in;
        } else {
            "Age and the elements have frosted the bottle nearly opaque, so you hold it up to the light of the setting sun.  The orange rays flash through the bottle's glossy patina, casting a dazzling kaleidoscope into your eyes.  The burst of light reveals what seems to be a rolled up sheet of parchment.  ";
            self.prop891 = true;
        }
    }

    verIoAction13_in(arg1) = {
        if (self.prop962) {
            self.verDoAction156_open(Me);
        } else if (!self.prop124) {
            "You'll have to remove the cork first.  ";
        } else {
            pass verIoAction13_in;
        }
    }

    ioAction13_in(arg1, arg2) = {
        if (arg2 == obj562_cork) {
            self.doAction17_close(arg1);
        } else if (arg2.prop508 > 1) {
            "\^<<arg2.thedesc>> is too wide to fit through the narrow mouth of the bottle.  ";
        } else {
            pass ioAction13_in;
        }
    }

    verIoAction121_drop_on(arg1) = { }

    ioAction121_drop_on(arg1, arg2) = {
        if (arg2 != obj212_brick) {
            "You can't put it on <<self.thedesc>>.  ";
        } else {
            "You look ruefully at the bottle.  Even in your sudden blood lust, you  recognize how precious this antiquity might be.  You decide to spare it.  ";
        }
    }

    prop165(arg1) = {
        if (self.prop178 && !self.prop124) {
            if (self.prop962) {
                self.verDoAction156_open(Me);
            } else {
                "You'll have to remove the cork first.  ";
            }
        }
    }

    verDoAction156_open(arg1) = {
        if (!arg1.prop125(self)) {
            "You'll have to pick the bottle up first.  ";
        } else if (self.prop124) {
            "It's already open.  ";
        } else if (isclass(Me.location, obj217) || isclass(Me.location, obj265)) {
            "You try, but you just can't get a good grip on the crumbling cork while you're  drifting in the ocean.  ";
        } else {
            pass verDoAction156_open;
        }
    }

    prop963 = true

    doAction156_open(arg1) = {
        if (!self.prop891) {
            self.doAction26_look_in(Me);
        }
        if (self.prop962) {
            obj616_wax.prop964;
        }
        "The cork pulls loose from the bottle with a small \(pop\). ";
        obj562_cork.moveInto(Me);
        if (self.prop963) {
            obj438_parchment.prop965;
        }
    }

    verDoAction17_close(arg1) = {
        if (!self.prop124) {
            "\^<<self.thedesc>> is already sealed.  ";
        } else if (!Me.prop125(obj562_cork)) {
            "You don't have anything to seal it with.  ";
        }
    }

    doAction17_close(arg1) = {
        "You push the cork back into the bottle's mouth.  ";
        obj562_cork.moveInto(self);
    }

    verIoAction18_off(arg1) = { }

    ioAction18_off(arg1, arg2) = {
        if (arg2 != obj616_wax) {
            pass ioAction18_off;
        }
    }

    ioSynonym('Action19_out') = 'Action154_take_off_from'

    prop914 = { return obj302_length_of_rope.prop931(self); }

    doAction24(arg1) = {
        if (self.prop710 == obj465_conch_shell) {
            obj465_conch_shell.doAction24(arg1);
        } else {
            pass doAction24;
        }
    }
;

obj562_cork: class42
    noun = 'cork'

    adjective = 'mahogany' 'stained'

    prop140 = 0

    prop141 = 1

    prop508 = 1

    prop649 = {
        if (self.location == obj561_antique_bottle && obj561_antique_bottle.prop504 != nil) {
            return 0;
        } else {
            return 1;
        }
    }

    location = obj561_antique_bottle

    prop131 = {
        if (self.location == obj561_antique_bottle) {
            return nil;
        } else {
            return true;
        }
    }

    sdesc = "cork"

    prop167 = {
        if (Me.location == self.location.prop650) {
            "It's just a small, dark shadow floating on the surface above you.  ";
        } else {
            "It's stained a dark mahogany color.  ";
        }
    }

    verDoAction19_out(arg1, arg2) = {
        if (self.location != obj561_antique_bottle) {
            pass verDoAction19_out;
        }
    }

    doAction19_out(arg1, arg2) = {
        if (arg2 == obj561_antique_bottle) {
            obj561_antique_bottle.doAction156_open(arg1);
        } else {
            pass doAction19_out;
        }
    }

    verDoAction13_in(arg1, arg2) = {
        if (self.location == obj561_antique_bottle) {
            "The cork is already in the bottle.  ";
        }
    }
;

obj563_boiled_crab: class49, class220
    noun = 'crab'

    adjective = 'boiled'

    prop914 = { return obj302_length_of_rope.prop931(self); }

    prop915 = "You try to tie the strap to the boiled crab, but the crab is slippery  and fragmented, making it difficult to attach the strap.  "

    location = nil

    prop141 = 2

    prop140 = 1

    sdesc = "boiled crab"

    doAction112_eat(arg1) = {
        "You crack the shell open without hesitation.  The crab's juices dribble out  over your chin as you suck out the sweet meat.  Mmm!  You couldn't have  gotten better at Savannah's finest restaurant.  Oh, if only you had some  butter and a bit of lemon juice!  Once you finish, you discard the broken  bits of shell and wipe your greasy hands off on your damp shorts.  ";
        self.moveInto(nil);
        obj20.prop484 = ['delighted', 'satisfied'];
    }

    prop649 = 1

    prop525 = "It's slippery with its own boiled juices.  "
;

obj564_rooftop_shingles: class33
    noun = 'shingles' 'shingle'

    adjective = 'wooden' 'rooftop' 'wood'

    prop509 = true

    prop525 = "They're slightly corrugated along their lengths, giving them a  bumpy feel.  "

    location = obj455_pavilion_s_canopy

    sdesc = "rooftop shingles"

    prop167 = {
        "Each wooden shingle is about two hand spans in length and slightly shorter in width.   They're slightly convex across their width and slightly tapered in length, so that the protruding end is a bit wider than the fixed end, rather like a spade. They're wedged into tight, overlapping rows reminiscent of fish scales.  ";
        if (obj481_chink.location == self) {
            "One shingle has been removed, leaving a dark chink among the tightly laid rows.  ";
        }
    }

    doSynonym('Action149_detach_from') = 'Action19_out'

    doSynonym('Action149_detach_from') = 'Action154_take_off_from'

    verDoAction149_detach_from(arg1, arg2) = {
        if (arg2 == obj564_rooftop_shingles || arg2 == obj455_pavilion_s_canopy) {
            self.verDoAction24(arg1);
        } else {
            "The shingles aren't attached to <<arg2.thedesc>>.  ";
        }
    }

    doSynonym('Action24') = 'Action150_detach'

    doSynonym('Action24') = 'Action153_take_off'

    doSynonym('Action24') = 'Action159_pull'

    verDoAction24(arg1) = {
        if (obj481_chink.location == self) {
            "You consider the chink already evident in the canopy's shingles.  Taking another would only be adding insult to injury.  ";
        } else {
            obj565_shingle.verDoAction24(arg1);
        }
    }

    prop913 = nil

    verIoAction5_under(arg1) = { }

    ioAction5_under(arg1, arg2) = {
        outhide(true);
        self.verDoAction85_pry_with(arg1, arg2);
        if (outhide(nil)) {
            self.verDoAction85_pry_with(arg1, arg2);
        } else {
            self.doAction85_pry_with(arg1, arg2);
        }
    }

    verDoAction84_pry(arg1) = {
        if (arg1.prop125(obj238_crowbar)) {
            self.verDoAction85_pry_with(arg1, obj238_crowbar);
        } else {
            self.verDoAction85_pry_with(arg1, obj231_hands);
        }
    }

    doAction84_pry(arg1) = {
        if (arg1.prop125(obj238_crowbar)) {
            self.doAction85_pry_with(arg1, obj238_crowbar);
        } else {
            self.doAction85_pry_with(arg1, obj231_hands);
        }
    }

    doSynonym('Action85_pry_with') = 'Action46_with'

    doSynonym('Action85_pry_with') = 'Action71_with'

    doSynonym('Action85_pry_with') = 'Action15_with'

    doSynonym('Action85_pry_with') = 'Action23_with'

    verDoAction85_pry_with(arg1, arg2) = {
        if (arg2 == obj231_hands) {
            self.verDoAction24(arg1);
        } else if (arg2 == obj303_broken_stave) {
            "You locate the loose shingle and try to jam the stave beneath it, but  the rows of shingles are too tightly mounted to permit the broad stave.  ";
        } else if (arg2 != obj238_crowbar) {
            "You can't remove the shingles with <<arg2.thedesc>>.  ";
        } else if (self.prop913) {
            "You consider the chink already evident in the canopy's shingles.  Taking another would only be adding insult to injury.  ";
        }
    }

    doAction85_pry_with(arg1, arg2) = {
        local local1 = fun219(Me);

        if (arg2 != obj238_crowbar) {
            "You can't remove the shingles with <<arg2.thedesc>>.  ";
            exit;
        }
        if (local1 > 1) {
            obj238_crowbar.moveInto(nil);
            "You put ";
            if (local1 > 2) {
                "the other stuff";
            } else {
                fun221(Me);
            }
            " you were carrying to free your hands.  Then ";
            fun207(Me, Me.location);
            obj238_crowbar.moveInto(Me);
        }
        "<<(local1 > 2 ? "you" : "You")>> locate the loose shingle and jam the crowbar  beneath it.  You apply pressure and the shingle flies out with a loud  \(snap\), leaving behind a dark chink in the otherwise perfect rows.  ";
        obj565_shingle.prop131 = true;
        obj565_shingle.moveInto(obj433___On_the_Canopy__);
        obj565_shingle.prop295;
        self.prop913 = true;
        obj481_chink.moveInto(obj564_rooftop_shingles);
        obj481_chink.prop295;
        obj20.prop484 = ['contrite'];
    }
;

obj565_shingle: class220, class242, class42
    noun = 'shingle'

    adjective = 'loose' 'single' 'wooden' 'wood'

    prop525 = "The wood is smooth, though slightly corrugated on its top side.  "

    prop708 = 1

    prop131 = nil

    location = obj564_rooftop_shingles

    sdesc = {
        local local1 = fun227(Me);

        if (local1 == obj433___On_the_Canopy__) {
            "loose ";
        }
        "shingle";
    }

    prop167 = { "It's a thin, spade-shaped slice of wood, about two hand spans long and almost as wide.   It's slightly convex across its width, and tapered along its length so that one end  is narrower than the other.  "; }

    prop140 = 4

    prop141 = 4

    prop649 = 4

    doSynonym('Action24') = 'Action150_detach'

    doSynonym('Action24') = 'Action153_take_off'

    doSynonym('Action24') = 'Action159_pull'

    verDoAction24(arg1) = {
        if (self.location == obj564_rooftop_shingles) {
            "While it does wiggle a bit, it's still wedged pretty firmly in place.  ";
        }
    }

    doAction24(arg1) = {
        if (self.prop710 == obj465_conch_shell) {
            obj465_conch_shell.doAction24(arg1);
        } else {
            pass doAction24;
        }
    }

    verIoAction5_under(arg1) = { }

    ioAction5_under(arg1, arg2) = {
        if (self.location == obj564_rooftop_shingles) {
            obj564_rooftop_shingles.ioAction5_under(arg1, arg2);
        } else {
            pass ioAction5_under;
        }
    }

    verDoAction84_pry(arg1) = {
        if (self.location == obj564_rooftop_shingles) {
            obj564_rooftop_shingles.verDoAction84_pry(arg1);
        } else {
            pass verDoAction84_pry;
        }
    }

    doAction84_pry(arg1) = {
        if (self.location == obj564_rooftop_shingles) {
            obj564_rooftop_shingles.doAction84_pry(arg1);
        } else {
            pass doAction84_pry;
        }
    }

    doSynonym('Action85_pry_with') = 'Action46_with'

    doSynonym('Action85_pry_with') = 'Action71_with'

    doSynonym('Action85_pry_with') = 'Action15_with'

    doSynonym('Action85_pry_with') = 'Action23_with'

    verDoAction85_pry_with(arg1, arg2) = {
        if (self.location == obj564_rooftop_shingles) {
            obj564_rooftop_shingles.verDoAction85_pry_with(arg1, arg2);
        } else {
            pass verDoAction85_pry_with;
        }
    }

    doAction85_pry_with(arg1, arg2) = {
        if (self.location == obj564_rooftop_shingles) {
            obj564_rooftop_shingles.doAction85_pry_with(arg1, arg2);
        } else {
            pass doAction85_pry_with;
        }
    }

    doSynonym('Action149_detach_from') = 'Action19_out'

    doSynonym('Action149_detach_from') = 'Action154_take_off_from'

    verDoAction149_detach_from(arg1, arg2) = {
        if (self.location != obj564_rooftop_shingles) {
            pass verDoAction149_detach_from;
            return;
        }
        if (arg2 == obj564_rooftop_shingles || arg2 == obj455_pavilion_s_canopy) {
            obj564_rooftop_shingles.verDoAction24(arg1);
        } else {
            "The loose shingle isn't attached to <<arg2.thedesc>>.  ";
        }
    }
;

obj566: class69
    verDoAction67_lock_with(arg1, arg2) = {
        if (self.prop338) {
            "It's already locked. ";
        } else if (self.prop124) {
            "%You%'ll have to close it first. ";
        }
    }

    verDoAction69_unlock_with(arg1, arg2) = {
        if (!self.prop338) {
            "It's not locked! ";
        }
    }
;

obj567_steel_key: class220, class78, class253
    noun = 'key' 'gatekey'

    adjective = 'small' 'steel' 'kwikset' 'storage' 'gate'

    prop293 = nil

    prop140 = 0

    prop141 = 0

    prop508 = 2

    location = obj669_vendor_s_shirt_pocke

    sdesc = "steel key"

    prop512 = "key"

    prop513 = "the key"

    prop514 = "a key"

    prop505 = [obj222_the_vendor]

    prop808 = {
        if (!obj567_steel_key.prop293) {
            "You don't know anything about that.  ";
        } else if (obj567_steel_key.location == obj669_vendor_s_shirt_pocke) {
            "\"Oh, it's just for the storage room.\"  ";
        } else {
            "It occurs to you that you ought to keep that bit of information to yourself.   If the vendor recovers the key, you may not get another chance to acquire it.  ";
        }
    }

    prop167 = {
        if (self.location == obj669_vendor_s_shirt_pocke) {
            "You can't tell much about it while it's in the vendor's pocket.  ";
        } else if (self.location == obj239_boiler) {
            "All you can see of it is a shiny spot at the bottom of the boiler.  ";
        } else {
            "It's a small steel key with the word 'Kwikset' stamped on it.  <<self.prop717>>";
        }
    }

    verDoAction24(arg1) = {
        if (self.location == obj669_vendor_s_shirt_pocke) {
            "\^<<obj222_the_vendor.thedesc>> sees you reaching for his shirt and  fixes you with an intense stare that convinces you to withdraw your hand.  ";
        } else {
            pass verDoAction24;
        }
    }

    doAction24(arg1) = {
        if (self.location == obj669_vendor_s_shirt_pocke) {
            obj669_vendor_s_shirt_pocke.ioAction19_out(arg1, self);
        } else if (self.location == obj239_boiler) {
            if (Me.prop973) {
                "No way.  Your hand still burns redly from the last time you reached into the boiler.  ";
            } else {
                "You wait for the vendor to turn away, and then plunge your hand foolishly into the boiling water.  \(Owoooh!\)  You yank your hand back and cram it into your mouth to soothe the pain.  Your cry of pain has not gone unnoticed by the vendor, and now he stands, arms crossed over chest, watching you with a disapproving frown.  After a moment he shakes his head and resumes what he was doing.  ";
                Me.prop519(&prop973);
                obj20.prop484 = ['boiled', 'throbbing', 'tingly'];
            }
        } else {
            pass doAction24;
        }
    }

    prop914 = { return obj302_length_of_rope.prop931(self); }
;

obj568_cement_pylons: class28, class63
    noun = 'pylon' 'pillars' 'pillar' 'pylons'

    adjective = 'cement'

    prop509 = true

    sdesc = "cement pylons"

    thedesc = "the pylons"

    locationOK = true

    location = {
        local local1 = fun227(Me);

        switch (local1) {
          case obj447___Storage_Area__:
          case obj450___Dry_Sand__North_of:
          case obj287___Damp_Sand__North_o:
          case obj452___Shallow_Water__Nor:
          case obj489___Deep_Water__North_:
          case obj451___Dry_Sand__South_of:
          case obj286___Damp_Sand__South_o:
          case obj454___Shallow_Water__Sou:
          case obj464___Deep_Water__South_:
            return Me.location;
            goto label404495;
          default:
            return nil;
        }
      label404495:
    }

    prop167 = {
        local local1 = fun227(Me);

        switch (local1) {
          case obj447___Storage_Area__:
            "To the east, numerous cement pylons rise up to the base of the pavilion.  ";
            goto label405049;
          case obj450___Dry_Sand__North_of:
          case obj451___Dry_Sand__South_of:
            "The numerous cement pylons support the pavilion.  Tall dunes of sand are  swept up against this face of the pavilion, though, so you can't see much  more than that.  ";
            goto label405049;
          case obj287___Damp_Sand__North_o:
          case obj286___Damp_Sand__South_o:
          case obj452___Shallow_Water__Nor:
          case obj454___Shallow_Water__Sou:
          case obj489___Deep_Water__North_:
          case obj464___Deep_Water__South_:
            "Twin rows of cement pylons support the long pier.  Each pair of pylons  slant in towards each other and are joined at the top by a horizontal  cross brace, forming a single unit resembling a truncated letter 'A'.  ";
            goto label405049;
        }
      label405049:
    }

    prop505 = [obj222_the_vendor]

    prop808 = { return obj569_cement_pylons.prop808; }
;

obj569_cement_pylons: class28, class33
    noun = 'pylon' 'pillars' 'pillar' 'pylons'

    adjective = 'cement'

    prop509 = true

    prop525 = "They're made of the same gritty, gray cement you've found elsewhere.  "

    sdesc = "cement pylons"

    thedesc = "the pylons"

    locationOK = true

    location = {
        local local1 = fun227(Me);

        switch (local1) {
          case obj437___Under_Pavilion__:
          case obj285___Damp_Sand__Beneath:
          case obj453___Shallow_Water__Ben:
          case obj490___Deep_Water__Beneat:
          case obj467___Underwater_____dri:
            return Me.location;
            goto label405319;
          default:
            return nil;
        }
      label405319:
    }

    prop167 = {
        local local1 = fun227(Me);

        switch (local1) {
          case obj437___Under_Pavilion__:
            "The numerous cement pylons support the pavilion.  Each pair of pylons slant in towards each other and are joined at the top by a horizontal cross brace, forming a single unit resembling a truncated letter 'A'.  ";
            goto label406245;
          case obj285___Damp_Sand__Beneath:
          case obj453___Shallow_Water__Ben:
            "Twin rows of cement pylons support the long pier.  Each pair of pylons slant in towards each other and are joined at the top by a horizontal cross brace, forming a single unit resembling a truncated letter 'A'.  Standing among the pylons as you are, they look like a long avenue extending from beach to ocean.  ";
            goto label406245;
          case obj490___Deep_Water__Beneat:
            "Twin rows of cement pylons support the long pier.  Each pair of pylons is a single unit resembling a truncated letter 'A'.  Here in deeper water, the pylons rise an unknown height from the murky depths.  ";
            goto label406245;
          case obj467___Underwater_____dri:
            "The pylons supporting the pier come to an end here, mere feet from the  sudden steep dropoff in the ocean floor.  ";
            goto label406245;
        }
      label406245:
    }

    verDoAction143_climb(arg1) = {
        local local1 = Me.location;

        if (local1.prop638(arg1)) {
        } else {
            if (local1 == obj467___Underwater_____dri) {
                "How do you plan to do that while you're underwater?  ";
            } else if (local1 == obj490___Deep_Water__Beneat) {
                "You paddle up to a promising looking pylon, receiving a few minor bruises as the tide pushes you against the rough cement.  Nevertheless, you cling to the inclined outside face and reach for the opposite side... but no matter how hard you stretch, it's just too wide for you to get your arms around.  ";
            } else {
                "You sidle up to a promising looking pylon, and stare it squarely in the face, letting it know who's boss.  You cling to the inclined outside face and reach for the opposite side... but no matter how hard you stretch, it's just too wide for you to get your arms around.  ";
            }
        }
    }

    prop505 = [obj222_the_vendor]

    prop808 = { "\"I still can't get over all that cement.  They built the main bridge over  the Savannah river the same way, on big 'A' frames.\"  "; }
;

obj570_utility_table: class34, class33
    noun = 'table'

    adjective = 'utility'

    prop525 = "It's made of rough, unfinished wood.  "

    location = obj447___Storage_Area__

    sdesc = "utility table"

    prop167 = {
        "It's a plain wooden utility table.  ";
        if (fun4(self.contents)) {
            "On ";
            self.thedesc;
            " %you% see%s% ";
            fun7(self);
            ". ";
        }
    }

    prop181 = 20

    prop182 = 20

    prop505 = [obj222_the_vendor]
;

obj571_utility_table: class63
    noun = 'table'

    adjective = 'utility'

    location = obj437___Under_Pavilion__

    sdesc = "utility table"

    prop167 = { "It's a plain wooden utility table.  You'll have to go in there if you want to see  any more.  "; }

    prop505 = [obj222_the_vendor]
;

obj572_peg_board: class33
    noun = 'board' 'pegboard'

    adjective = 'peg'

    prop525 = "It's made of soft, porous cork board.  "

    prop133 = true

    prop134 = true

    prop181 = 0

    prop182 = 0

    location = obj447___Storage_Area__

    sdesc = "peg board"

    prop167 = {
        "It's a square piece of perforated cork board, hung with a variety of unrecognizable  tools and useless spare parts.  ";
        if (obj238_crowbar.location == self) {
            "In fact, the only item that looks to be of any use at all is a thin, tapered strip  of metal resembling a crowbar.  ";
        }
    }

    prop505 = [obj222_the_vendor]

    verDoAction121_drop_on(arg1, arg2) = { "The peg board is so cluttered that you can't find space for anything.  "; }
;

obj573_unrecognizable_tools: class33
    noun = 'parts' 'tools' 'part' 'tool'

    adjective = 'spare' 'unrecognizable' 'useless'

    sdesc = "unrecognizable tools and useless spare parts"

    adesc = { return self.thedesc; }

    prop167 = { "You don't find anything useful or functional  among <<self.thedesc>>.  "; }

    doSynonym('Action24') = 'Action157_search'

    verDoAction24(arg1) = { self.prop167; }

    prop509 = true
;

obj574_peg_board: class33
    noun = 'board' 'pegboard'

    adjective = 'peg'

    location = obj437___Under_Pavilion__

    sdesc = "peg board"

    prop167 = { "It looks like an ordinary pegboard.  You'll have to go in there if you want to see  any more.  "; }

    prop505 = [obj222_the_vendor]
;

obj575_boiler_s_lid: class33
    noun = 'lid'

    adjective = 'metal' 'boiler\'s'

    location = obj239_boiler

    doAction156_open -> doAction53_on

    verDoAction156_open -> doAction53_on

    doAction17_close -> doAction53_on

    verDoAction17_close -> doAction53_on

    sdesc = "boiler's lid"

    prop167 = {
        "The boiler's lid is just a flat metal sheet hinged to one side of the boiler tray. ";
        if (obj239_boiler.prop124) {
            "Currently, the lid is open.  ";
        } else {
            "Currently, the lid is shut";
            if (obj239_boiler.prop338) {
                " and held firmly in place by a sturdy steel clamp";
            }
            ".  ";
        }
    }

    doSynonym('Action85_pry_with') = 'Action46_with'

    doSynonym('Action85_pry_with') = 'Action71_with'

    doSynonym('Action85_pry_with') = 'Action15_with'

    doSynonym('Action85_pry_with') = 'Action16_with'

    doAction85_pry_with -> doAction53_on

    verDoAction85_pry_with -> doAction53_on

    doAction84_pry -> doAction53_on

    verDoAction84_pry -> doAction53_on

    doAction70_unlock -> doAction53_on

    verDoAction70_unlock -> doAction53_on

    doAction68_lock -> doAction53_on

    verDoAction68_lock -> doAction53_on

    doSynonym('Action24') = 'Action153_take_off'

    verDoAction24(arg1) = { obj239_boiler.verDoAction85_pry_with(arg1, obj231_hands); }

    verDoAction23_with(arg1, arg2) = { obj239_boiler.verDoAction85_pry_with(arg1, arg2); }

    doAction23_with(arg1, arg2) = { obj239_boiler.doAction85_pry_with(arg1, arg2); }

    verIoAction5_under(arg1) = { }

    ioAction5_under(arg1, arg2) = {
        outhide(true);
        obj239_boiler.verDoAction85_pry_with(arg1, arg2);
        if (outhide(nil)) {
            obj239_boiler.verDoAction85_pry_with(arg1, arg2);
        } else {
            obj239_boiler.doAction85_pry_with(arg1, arg2);
        }
    }
;

obj576_clamp: class33
    noun = 'clamp'

    adjective = 'steel' 'sturdy'

    location = nil

    doAction156_open -> doAction53_on

    verDoAction156_open -> doAction53_on

    doAction17_close -> doAction53_on

    verDoAction17_close -> doAction53_on

    sdesc = "clamp"

    prop167 = {
        if (self.location == obj575_boiler_s_lid) {
            "It's a thin, sturdy, triangle of steel.   The open end of the triangle holds the boiler's lid tightly in place  by pinching it against the thin bar that runs around the lip of the boiler.  ";
        } else {
            "It's a busted metal clamp.  ";
        }
    }

    doSynonym('Action85_pry_with') = 'Action46_with'

    doSynonym('Action85_pry_with') = 'Action71_with'

    doSynonym('Action85_pry_with') = 'Action15_with'

    doSynonym('Action85_pry_with') = 'Action16_with'

    doAction85_pry_with -> doAction53_on

    verDoAction85_pry_with -> doAction53_on

    doAction84_pry -> doAction53_on

    verDoAction84_pry -> doAction53_on

    doAction70_unlock -> doAction53_on

    verDoAction70_unlock -> doAction53_on

    doAction68_lock -> doAction53_on

    verDoAction68_lock -> doAction53_on

    doSynonym('Action24') = 'Action153_take_off'

    verDoAction24(arg1) = { obj239_boiler.verDoAction85_pry_with(arg1, obj231_hands); }

    verDoAction23_with(arg1, arg2) = { obj239_boiler.verDoAction85_pry_with(arg1, arg2); }

    doAction23_with(arg1, arg2) = { obj239_boiler.doAction85_pry_with(arg1, arg2); }

    verDoAction30_unscrew(arg1) = { "It's a clamp, not a vise.  "; }

    verIoAction5_under(arg1) = { }

    ioAction5_under(arg1, arg2) = {
        outhide(true);
        obj239_boiler.verDoAction85_pry_with(arg1, arg2);
        if (outhide(nil)) {
            obj239_boiler.verDoAction85_pry_with(arg1, arg2);
        } else {
            obj239_boiler.doAction85_pry_with(arg1, arg2);
        }
    }
;

obj577_glass_recycling_bin: class63
    noun = 'canister' 'bottles'

    adjective = 'glass' 'recycling' 'plastic' 'blue'

    plural = 'canisters'

    location = obj437___Under_Pavilion__

    sdesc = "glass recycling bin"

    prop167 = { "You see a waist high blue canister full of glass bottles.  You can't tell much more from here.  "; }

    prop505 = [obj222_the_vendor]
;

obj578_aluminum_recycling_b: class63
    noun = 'canister' 'cans'

    adjective = 'recycling' 'aluminium' 'aluminum' 'plastic' 'blue'

    plural = 'canisters'

    location = obj437___Under_Pavilion__

    sdesc = "aluminum recycling bin"

    prop167 = { "You see a waist high blue canister full of aluminum cans.  You can't tell much more from here.  "; }

    prop505 = [obj222_the_vendor]
;

obj579_storage_area: class33, class70
    noun = 'storage' 'area' 'room'

    adjective = 'recycling' 'storage'

    prop525 = "You slide a hand over the pebbly, cement wall.  "

    prop131 = nil

    verDoAction152_get_on(arg1) = { "But you're already in the storage area!"; }

    verDoAction151_get_out_of(arg1) = { }

    doAction151_get_out_of(arg1) = {
        if (obj484_gate.prop124) {
            Me.prop161(obj437___Under_Pavilion__);
        } else {
            "You'll have to open the gate first.  ";
        }
    }

    sdesc = "storage area"

    prop167 = { return obj447___Storage_Area__.prop167; }

    location = obj447___Storage_Area__

    prop505 = [obj222_the_vendor]

    prop808 = "Using one cocked thumb, he points to somewhere below.   \"Yeah, that's where we keep all the recyclables.\"  "
;

obj580_storage_area: class33, class70
    noun = 'storage' 'area' 'room'

    adjective = 'recycling' 'storage'

    prop131 = nil

    location = obj437___Under_Pavilion__

    sdesc = "storage area"

    prop167 = {
        local local1 = 0;

        "It's just a simple, cement walled room, about ten feet to a side.  ";
        if (obj485_glass_recycling_cani.location == obj447___Storage_Area__ && obj486_aluminum_recycling_c.location == obj447___Storage_Area__) {
            local1 = 3;
        } else if (obj485_glass_recycling_cani.location == self) {
            local1 = 1;
        } else if (obj486_aluminum_recycling_c.location == self) {
            local1 = 2;
        }
        if (local1 > 0) {
            "Inside";
            if (local1 == 3) {
                " are two big blue recycling canisters, one full of bottles, the other full of cans.  ";
            } else {
                "is a big blue recycling canister full of <<(local1 == 1 ? "bottles" : "cans")>>.  ";
            }
        }
        "Against the rear wall is a square wooden bin.  Next to that is a plain looking utility  table, over which is hung a peg board.  ";
    }

    verDoAction152_get_on(arg1) = { }

    doAction152_get_on(arg1) = {
        if (obj483_gate.prop124) {
            Me.prop161(obj447___Storage_Area__);
        } else {
            "You'll have to open the gate first.  ";
        }
    }

    prop505 = [obj222_the_vendor]

    prop808 = { return obj579_storage_area.prop808; }
;

obj581_wooden_bin: class63
    noun = 'bin' 'receptacle'

    adjective = 'paper' 'wood'

    location = obj437___Under_Pavilion__

    sdesc = "wooden bin"

    prop167 = { "It's a square wooden bin full of trash.  You can't tell much more from here.  "; }

    prop505 = [obj222_the_vendor]
;

obj582_wooden_bin: obj442, class33
    noun = 'bin'

    adjective = 'paper' 'recycling' 'wooden'

    prop525 = "Like so much else in the area, it's made of rough, unfinished wood.  "

    prop149 = "in"

    prop150 = "out of"

    location = obj447___Storage_Area__

    sdesc = "wooden bin"

    prop167 = { "It's a waist high wooden bin.  It seems to be full of used paper products."; }

    prop927(arg1) = { }

    prop928(arg1, arg2) = { "But it's for paper goods only!  "; }

    verIoAction19_out(arg1) = { }

    ioAction19_out(arg1, arg2) = {
        if (arg2 != obj583_garbage) {
            "You don't see <<arg2.thedesc>> in the bin.  ";
        } else {
            self.verDoAction157_search(arg1);
        }
    }

    doSynonym('Action157_search') = 'Action26_look_in'

    doSynonym('Action157_search') = 'Action8_dig'

    verDoAction157_search(arg1) = { "You root through heaps of sticky ice cream wrappers and popsicle sticks,  but find nothing useful or appealing.  "; }

    prop505 = [obj222_the_vendor]

    prop823(arg1) = { "You scoop a few handfuls of <<say(arg1)>> into <<self.thedesc>>, but it feels  like a futile effort.  "; }

    prop831(arg1) = { "The <<say(arg1)>> spills into the trash and disappears.  "; }

    prop828 = { "You'd just be making a mess of the beach.  Better leave the trash in the bin.  "; }

    doSynonym('Action102_move_north') = 'Action103_move_south'

    doSynonym('Action102_move_north') = 'Action106_move_northeast'

    doSynonym('Action102_move_north') = 'Action107_move_northwest'

    doSynonym('Action102_move_north') = 'Action108_move_southeast'

    doSynonym('Action102_move_north') = 'Action109_move_southwest'

    doSynonym('Action102_move_north') = 'Action105_move_west'

    doSynonym('Action102_move_north') = 'Action104_move_east'

    verDoAction102_move_north(arg1) = { "You dig your feet into the floor and heave, but the bin is just too heavy to move.  "; }

    doSynonym('Action102_move_north') = 'Action155_push'

    doSynonym('Action102_move_north') = 'Action59_move'

    verDoAction152_get_on(arg1) = { "While you could, theoretically, climb into the nearly empty bin,  you're forced to asked yourself... why?"; }
;

obj583_garbage: class33
    noun = 'paper' 'goods' 'stick' 'trash' 'garbage' 'wrappers' 'wrapper' 'sticks' 'junk'

    adjective = 'cream' 'paper' 'ice' 'popsicle'

    prop525 = "It's sticky and unpleasant to the touch.  "

    location = obj447___Storage_Area__

    sdesc = "garbage"

    prop167 = { "The pile of garbage contains an assorted mix of used paper goods, mostly  ice cream wrappers and popsicle sticks.  "; }

    verDoAction24(arg1) = { self.verDoAction157_search(arg1); }

    doSynonym('Action157_search') = 'Action26_look_in'

    doSynonym('Action157_search') = 'Action8_dig'

    doSynonym('Action157_search') = 'Action64_look_under'

    doAction157_search -> verIoAction93_dig_for_with

    prop928 -> verIoAction93_dig_for_with

    prop927 -> verIoAction93_dig_for_with

    prop505 = [obj222_the_vendor]
;

obj584_plastic_shards: class33
    noun = 'shard' 'shards'

    adjective = 'plastic' 'blue' 'thin'

    prop509 = true

    prop525 = "You decide not to try, as they're buried beneath piles of broken glass.  "

    sdesc = "plastic shards"

    prop167 = { "They're thin, concave sheets of blue plastic which used to be a recycling canister.  "; }

    verDoAction24(arg1) = {
        if (Me.prop929) {
            "No way, not after the cut you got last time!  ";
        }
    }

    doAction24(arg1) = {
        "You reach gingerly into the pile of broken glass hoping to extract one of the blue plastic sheets.  \(Ow!\)  You pull your hand back with a bleeding cut on one finger.  You stick the finger in your mouth and suck on the wound.  ";
        obj20.prop484 = ['bloodied'];
        Me.prop519(&prop929);
    }
;

obj585_glass_canister_logo: class33
    noun = 'logo'

    adjective = 'glass' 'canister' 'recycling' 'universal'

    location = obj485_glass_recycling_cani

    sdesc = "glass canister logo"

    prop167 = { "It's the three arrowed green moebius strip associated with international  recycling efforts.  "; }

    prop505 = [obj222_the_vendor]
;

obj586_glass_canister_tape: class33
    noun = 'tape'

    adjective = 'glass' 'canister' 'masking'

    location = obj485_glass_recycling_cani

    sdesc = "glass canister tape"

    prop167 = { "It's just a strip of ordinary masking tape, on which someone has written the  word 'Glass' in black magic marker.  "; }
;

obj587_pile_of_aluminum_can: obj442, class33
    noun = 'can' 'cans'

    adjective = 'collection' 'aluminium' 'aluminum' 'cans' 'pile' 'of'

    prop509 = true

    location = obj486_aluminum_recycling_c

    sdesc = "pile of aluminum cans"

    prop167 = { "Pop cans of all varieties fill the canister nearly to the top.  "; }

    adesc = "the pile of aluminum cans"

    verDoAction157_search(arg1) = { "All you find is cans, cans, and more cans.  "; }

    verDoAction24(arg1) = { }

    doAction24(arg1) = { self.ioAction19_out(arg1, obj588_can); }

    ioSynonym('Action13_in') = 'Action121_drop_on'

    verIoAction13_in(arg1) = { }

    ioAction13_in(arg1, arg2) = {
        if (arg2 == obj587_pile_of_aluminum_can) {
            "The cans are already in the canister.  ";
        } else if (arg2 == obj588_can) {
            if (length(arg2.contents)) {
                "(First fishing out the contents of <<arg2.thedesc>>.)  \b";
                fun207(arg2, Me);
            }
            if (length(arg2.prop502)) {
                "(First removing <<arg2.prop502[1].thedesc>> from the soda can.)  \b";
                arg2.prop657;
            }
            "You toss the can back into the blue recycling canister.  ";
            arg2.moveInto(nil);
        } else if (arg2 == obj589_flattened_can) {
            "You toss the flattened can back into the blue recycling canister,  where it slides out of sight among the other cans.  ";
            arg2.moveInto(nil);
        } else {
            "But the canister is for aluminum only!  ";
        }
    }

    verIoAction19_out(arg1) = { }

    ioAction19_out(arg1, arg2) = {
        if (arg2 != obj588_can && arg2 != obj587_pile_of_aluminum_can) {
            "You can't see <<arg2.thedesc>> in the aluminum recycling bin.  ";
        } else if (obj588_can.location != nil && obj588_can.location == Me) {
            "You've already got one.  If you want to take another, perhaps you should  dispose of that one first.  ";
        } else if (obj588_can.location != nil && obj588_can.location != Me) {
            "You've already left one lying around on the beach.  You decide you'd rather   not be a litterbug.  ";
        } else {
            "You pluck a can at random from the aluminum recycling canister.  ";
            obj588_can.prop504 = nil;
            obj588_can.moveInto(Me);
            setit(obj588_can);
        }
    }

    prop823(arg1) = { "You scoop a few handfuls of <<say(arg1)>> into <<self.thedesc>>, but it feels  like a futile effort.  "; }

    prop831(arg1) = { "The <<say(arg1)>> spills down among the cans and disappears.  "; }

    prop828 = { "You'd just be making a mess of the beach.  Better leave the cans in their canister.  "; }

    doSynonym('Action102_move_north') = 'Action103_move_south'

    doSynonym('Action102_move_north') = 'Action106_move_northeast'

    doSynonym('Action102_move_north') = 'Action107_move_northwest'

    doSynonym('Action102_move_north') = 'Action108_move_southeast'

    doSynonym('Action102_move_north') = 'Action109_move_southwest'

    verDoAction102_move_north(arg1) = {
        if (obj486_aluminum_recycling_c.location == obj447___Storage_Area__) {
            "The cement walls of the storage area block your way.  ";
        } else if (obj486_aluminum_recycling_c.location == obj437___Under_Pavilion__) {
            "The dunes piled up against the base of the pavilion block your way.  ";
        }
    }

    verDoAction105_move_west(arg1) = {
        if (obj486_aluminum_recycling_c.location == obj447___Storage_Area__) {
            self.verDoAction102_move_north(arg1);
        } else if (obj486_aluminum_recycling_c.location == obj437___Under_Pavilion__ && !obj483_gate.prop124) {
            "You'll have to open the gate first.  ";
        }
    }

    doAction105_move_west(arg1) = {
        if (obj486_aluminum_recycling_c.location == obj437___Under_Pavilion__) {
            "The canister is light enough that you're able to slide it over the dry sand,  back into the storage area.  \b";
            obj486_aluminum_recycling_c.moveInto(obj447___Storage_Area__);
            obj578_aluminum_recycling_b.moveInto(obj437___Under_Pavilion__);
            obj486_aluminum_recycling_c.prop131 = nil;
            Me.prop161(obj447___Storage_Area__);
        } else {
            "You can't.  ";
        }
    }

    doSynonym('Action59_move') = 'Action155_push'

    verDoAction59_move(arg1) = { "You slide it a few inches across the ground.  "; }

    verDoAction104_move_east(arg1) = { }

    doAction104_move_east(arg1) = {
        if (obj486_aluminum_recycling_c.location == obj447___Storage_Area__ && !obj484_gate.prop124) {
            "You'll have to open the gate first.  ";
        } else if (obj486_aluminum_recycling_c.location == obj447___Storage_Area__) {
            "You give the aluminum recycling canister a tentative shove.  It proves to be surprisingly light.  In fact, you're able to raise it an inch or two above the ground and slide it out into the sand beneath the pavilion.  \b";
            obj486_aluminum_recycling_c.moveInto(obj437___Under_Pavilion__);
            obj578_aluminum_recycling_b.moveInto(obj447___Storage_Area__);
            obj486_aluminum_recycling_c.prop131 = true;
            Me.prop161(obj437___Under_Pavilion__);
        } else if (obj486_aluminum_recycling_c.location == obj437___Under_Pavilion__) {
            "You grab hold of the canister and slide it east, over the dry sand. You've made it almost to the far end of the pavilion when you trip over your own feet, sending the canister over on its side.  You look up to find that the canister has begun rolling down the slope towards the ocean.  You chase after it, but it's picking up speed.  You redouble your efforts to catch it, and it looks like you just... might... make it... \(Splash!\)  The canister goes into the water and starts drifting out to sea.  It shrinks into the distance between the long row of pylons, becoming smaller and smaller.  Soon, the canister has drifted out of sight.  \b";
            obj486_aluminum_recycling_c.moveInto(nil);
            obj578_aluminum_recycling_b.moveInto(nil);
            Me.prop161(obj285___Damp_Sand__Beneath);
        }
    }
;

obj588_can: class220, class218, class253
    noun = 'can'

    adjective = 'pop' 'single' 'individual' 'aluminium' 'aluminum' 'cola' 'coke' 'soda'

    prop504 = nil

    prop958 = nil

    prop510 = obj589_flattened_can

    prop563 = true

    sdesc = {
        if (obj486_aluminum_recycling_c.location == Me.location || obj578_aluminum_recycling_b.location == Me.location) {
            "single ";
        }
        "aluminum can";
    }

    prop167 = {
        "It's an ordinary aluminum soda can.  ";
        self.doAction26_look_in(Me);
        self.prop717;
    }

    adesc = "an aluminum can"

    prop512 = "can"

    prop513 = "the can"

    prop514 = "a can"

    location = nil

    prop881 = nil

    prop124 = true

    ioAction13_in(arg1, arg2) = {
        if (arg2 == obj562_cork) {
            " If you're trying to use the cork to seal the can, it doesn't work.  ";
        } else if (arg2 == obj426_shrimp) {
            "While its name is indeed descriptive, the shrimp is nevertheless too  large to fit through the narrow mouth of the can.  ";
        } else if (arg2 == obj567_steel_key) {
            "The head of the key is too wide to fit through the narrow mouth of the can.  ";
        } else if (arg2.prop508 > 1) {
            "\^<<arg2.thedesc>> is too wide to fit through the narrow mouth of the can.  ";
        } else {
            pass ioAction13_in;
        }
    }

    verDoAction156_open(arg1) = { "It's not sealed. "; }

    verDoAction17_close(arg1) = { "You can't close it.  The pop top has been popped.  "; }

    prop140 = {
        local local1 = self.prop504;

        if (local1 == nil) {
            return 1;
        } else if (local1 == 'salt water' || local1 == 'dry sand') {
            return 2;
        } else if (local1 == 'wet sand') {
            return 3;
        }
    }

    prop141 = 3

    prop181 = 1

    prop182 = 1

    prop505 = [obj222_the_vendor]

    prop914 = { return obj302_length_of_rope.prop931(self); }
;

obj589_flattened_can: class42, class253
    noun = 'can' 'disc' 'disk'

    adjective = 'pop' 'flattened' 'aluminium' 'aluminum' 'cola' 'coke' 'soda' 'flat'

    prop658 = "a thin round disc of flattened aluminum"

    sdesc = "flattened can"

    prop167 = { "It used to be an aluminum soda can.  Now it's a thin round disc of flattened aluminum.  "; }

    location = nil

    prop505 = [obj222_the_vendor]

    prop508 = 2
;

obj590_aluminum_canister_lo: class33
    noun = 'logo'

    adjective = 'canister' 'recycling' 'aluminium' 'aluminum' 'universal'

    location = obj486_aluminum_recycling_c

    sdesc = "aluminum canister logo"

    prop167 = { "It's the three arrowed green moebius strip associated with international  recycling efforts.  "; }

    prop505 = [obj222_the_vendor]
;

obj591_aluminum_canister_ta: class33
    noun = 'tape'

    adjective = 'canister' 'masking' 'aluminium' 'aluminum'

    location = obj486_aluminum_recycling_c

    sdesc = "aluminum canister tape"

    prop167 = { "It's just a strip of ordinary masking tape, on which someone has written the  word 'Aluminum' in black magic marker.  "; }

    prop505 = [obj222_the_vendor]
;

obj592_shelter: class63
    noun = 'shelter'

    adjective = 'small' 'lesser'

    sdesc = "shelter"

    adesc = { return self.thedesc; }

    prop167 = { "It lies to the east like the head of a hammer at the end of the long pier.  In fact,  it's really just a broader patch of ground covered by a low wooden roof.  "; }

    location = obj449___Middle_of_Pier__

    prop505 = [obj222_the_vendor]
;

obj593_shelter: class33
    noun = 'shelter'

    adjective = 'lesser'

    sdesc = "shelter"

    adesc = { return self.thedesc; }

    prop167 = { "It scarcely deserves the name 'pavilion,' compared to its greater sibling to the west.   In fact, it's really just a square patch of ground covered by a low wooden roof.  "; }

    location = obj432___End_of_Pier__

    prop505 = [obj222_the_vendor]
;

class class594: class40
    verDoAction115_listen_to(arg1) = { }

    doAction115_listen_to(arg1) = {
        if (isclass(Me.location, obj217)) {
            "You can't hear much from the shell while you're underwater.  ";
            exit;
        } else if (Me.prop125(self)) {
            self.prop527;
            exit;
        } else {
            "It occurs to you that you'd need to be holding it in order to put it against your ear.  ";
            exit;
        }
    }

    verDoAction6_against(arg1, arg2) = { }

    doAction6_against(arg1, arg2) = {
        if (arg2 == obj618_ears) {
            self.doAction115_listen_to(arg1);
        } else {
            pass doAction6_against;
        }
    }
;

obj595_fingerlike_reeds: class28, class33
    noun = 'reeds' 'plant' 'grass' 'leaves' 'plants' 'leaf' 'reed'

    adjective = 'finger' 'fingerlike' 'narrow' 'like' 'long'

    sdesc = "fingerlike reeds"

    prop167 = { "The long, narrow reeds of these undersea plants wave in the currents like  grasping fingers, reaching forth from the mud.  "; }

    locationOK = true

    location = {
        local local1 = Me.location;

        if (isclass(local1, obj217)) {
            return local1;
        } else {
            return nil;
        }
    }

    doSynonym('Action24') = 'Action159_pull'

    verDoAction24(arg1) = { }

    doAction24(arg1) = { "You grab one of the long, slender reeds and give it a firm tug.  It come loose  with ease, and floats away on the light currents.  "; }

    prop509 = true
;

obj596_creatures: class33
    noun = 'creatures' 'creature'

    adjective = 'tiny'

    prop509 = true

    sdesc = "creatures"

    prop167 = { "They're too tiny to identify.  They crawl in, over, around, and through the  porous, barnacle covered rock.  "; }

    location = obj504_rock
;

obj597_broad_leaved_plants: class33
    noun = 'plant' 'tendrils' 'tendril' 'plants'

    adjective = 'broad' 'small' 'leaved'

    prop509 = true

    sdesc = "broad leaved plants"

    adesc = { return self.thedesc; }

    prop167 = { "The small, broad leaved plants wave in the surf, tenaciously clinging to the  porous rock via fine tendrils.  "; }

    location = obj504_rock

    doSynonym('Action24') = 'Action159_pull'

    verDoAction24(arg1) = { }

    doAction24(arg1) = { "You grab one of the squat plants and pull.  It proves to be firmly rooted in the  rock.  "; }

    prop525 = "It feels slimy.  "
;

obj598_octopus_s_eye: class33, class79
    noun = 'eye' 'windows' 'window' 'portholes' 'porthole' 'eyes'

    adjective = 'thick' 'glass' 'round' 'octopus\'s'

    prop293 = true

    sdesc = "octopus's eye"

    thedesc = "the octopus's eye"

    prop167 = { "The 'eyes' of the 'octopus' are in fact glass portholes.  The light isn't emitted, but reflected.  Somehow, a single ray of light from the setting sun has reached down through the depths, to bounce off the bell's portholes.  "; }

    prop206 = { "Looking through the portholes, you can see the interior of the rusty old bell.   It's a hollow chamber large enough to accommodate two divers.  There seems  to be an air pocket inside!  "; }

    location = obj397___Underwater_____dri

    prop525 = "It's frigid to the touch.  "

    verDoAction26_look_in(arg1) = { self.verDoAction40_look_through(arg1); }

    doAction26_look_in(arg1) = { self.doAction40_look_through(arg1); }
;

obj599_patch_of_level_surfa: class33
    noun = 'tabletop' 'surface'

    adjective = 'patch' 'level' 'flat' 'of'

    prop293 = nil

    location = nil

    sdesc = "patch of level surface"

    prop167 = { obj268_mud.prop167; }

    prop950 = {
        obj600_pattern.moveInto(obj339___Inside_the__Octopu);
        obj600_pattern.prop295;
        obj502_surface_pattern.moveInto(obj397___Underwater_____dri);
        obj502_surface_pattern.prop295;
        obj601_coral.moveInto(obj397___Underwater_____dri);
        obj601_coral.prop295;
        obj599_patch_of_level_surfa.prop891 = true;
        obj602_patch_of_level_surfa.prop891 = true;
    }

    doAction135_clean -> verDoAction107_move_northwest
;

obj600_pattern: class63
    noun = 'pattern'

    adjective = 'muddy'

    sdesc = "pattern"

    prop167 = { "You can see a small piece of what seems to be a larger pattern, mostly  obscured by mud.  You can't see any more than that from here.  "; }

    location = nil
;

obj601_coral: class33
    noun = 'fan' 'reef'

    adjective = 'brain' 'coral' 'sea'

    location = nil

    sdesc = "coral"

    prop167 = { "You can't see any of it now, not the coral, nor the sea fans, nor the fish.  Perhaps the light is only right from inside the bell, or... or perhaps there never really was any reef at all.  "; }
;

obj602_patch_of_level_surfa: class63
    noun = 'coral' 'mud' 'tabletop' 'surface'

    adjective = 'patch' 'level' 'flat' 'of'

    prop293 = nil

    location = nil

    sdesc = "patch of level surface"

    prop167 = { "You pier out through the scratched glass straining for more detail.   Eyes squinting, tongue poking through teeth in concentration, you can just make  out some sort of pattern hidden beneath the mud...  "; }
;

obj603_coral_reef: class63
    noun = 'fan' 'branch' 'reef'

    adjective = 'brain' 'coral' 'ivory' 'sea' 'hard' 'soft'

    sdesc = "coral reef"

    prop167 = { return obj503_porthole.prop206; }

    location = obj339___Inside_the__Octopu
;

obj604_rusty_old_diving_bel: class33, class70
    noun = 'bathysphere' 'octopus' 'bell'

    adjective = 'old' 'rusty' 'barnacle' 'diving' 'encrusted' 'rust'

    prop525 = "The flaking metal is frigid and damp to the touch.  "

    verDoAction152_get_on(arg1) = { "You're already in the bell.  "; }

    verDoAction151_get_out_of(arg1) = { }

    doAction151_get_out_of(arg1) = {
        if (obj339___Inside_the__Octopu.prop313) {
            "\b";
            Me.moveInto(obj397___Underwater_____dri);
            Me.location.lookAround(true);
        }
    }

    sdesc = "rusty old diving bell"

    prop167 = { return obj339___Inside_the__Octopu.prop167; }

    location = obj339___Inside_the__Octopu

    prop293 = true

    verDoAction43_attack_with(arg1, arg2) = { }

    doAction43_attack_with(arg1, arg2) = { "Struck, the bell resounds with a quick, high pitched \(tinggg\)  that makes your ears itch.  "; }

    verDoAction95_tap(arg1) = { }

    doAction95_tap(arg1) = { self.doAction43_attack_with(arg1, obj231_hands); }
;

obj605_valve: class33
    noun = 'valve' 'pipe' 'hunk' 'lump'

    adjective = 'air' 'rusty'

    sdesc = "valve"

    thedesc = "the valve"

    prop167 = "It's a rusty hunk of metal that used to be an air valve.  "

    location = obj339___Inside_the__Octopu

    prop293 = true
;

obj606_gap: class74, class33
    noun = 'gap' 'hole'

    prop140 = 0

    prop141 = 0

    sdesc = "gap"

    prop131 = nil

    prop505 = [obj222_the_vendor]

    prop808 = {
        if (obj212_brick.location != obj427___By_the_Snack_Bar__ && obj212_brick.location != Me) {
            "\"Whaddaya mean?  Are there bricks missing from the path?   Seemed ok when I got here this afternoon.\"  ";
        } else {
            obj212_brick.prop808;
        }
    }

    prop167 = {
        "It's a gap in the path, where ";
        if (obj212_brick.prop892 > 1) {
            "bricks have ";
        } else {
            "a brick has ";
        }
        "been removed.  ";
    }

    ioAction13_in(arg1, arg2) = {
        if (arg2 != obj212_brick) {
            "The only thing that's going to fill that ugly gap is more bricks.  ";
        } else {
            arg2.doAction13_in(arg1, self);
        }
    }

    location = nil
;

obj607_pair_of_shorts: class65
    noun = 'shorts' 'trunks'

    adjective = 'my'

    prop140 = 0

    prop141 = 0

    prop293 = true

    sdesc = "pair of shorts"

    prop167 = { "An ordinary pair of elastic shorts with a single pocket.  You wore them over  your bathing suit so you'd have somewhere to keep your hotel key.  "; }

    prop509 = true

    prop128 = true

    location = Me

    doSynonym('Action153_take_off') = 'Action24'

    prop333 = {
        "You'd better just leave your shorts on.  ";
        exit;
    }

    verDoAction153_take_off(arg1) = { }

    doAction153_take_off(arg1) = { "You slide out of the shorts.  However, you don't want to lose them while  they're holding your money and your passcard, so you put them back on.  "; }

    verDoAction112_eat(arg1) = { "Who do you think you are, Bart Simpson?  "; }
;

obj608_bathing_suit: class65
    noun = 'trunks' 'suit'

    adjective = 'bathing' 'bikini' 'swim' 'my'

    prop140 = 0

    prop141 = 0

    prop293 = true

    sdesc = "bathing suit"

    prop167 = { "The height of fashion here in Savannah!  Ok, perhaps not.  Actually, you  bought it for $12.99 at the local Walmart after realizing you'd forgotten  to pack your own suit.  "; }

    doSynonym('Action153_take_off') = 'Action24'

    prop333 = {
        "You'd better just leave your suit on.  ";
        exit;
    }

    verDoAction153_take_off(arg1) = { }

    doAction153_take_off(arg1) = {
        "You slide out of the shorts and then strip off your suit.  Ahhh, freedom!  ";
        Me.location.prop693;
    }

    prop128 = true

    location = Me

    prop808 = "He glances at your suit.  \"Very sexy.  A Walmart special, I see!\"  "
;

obj609_pocket_of_your_short: class74, class33
    noun = 'pocket'

    adjective = 'shorts' 'my'

    prop881 = true

    prop140 = 0

    prop141 = 0

    prop293 = true

    sdesc = "pocket of your shorts"

    location = obj607_pair_of_shorts

    prop181 = 0

    prop182 = 2

    prop149 = "in"

    prop511 = "cram"

    prop505 = [obj222_the_vendor]

    prop808 = "\"It's a pocket.  So what?\"  "
;

obj610_passcard: class78
    noun = 'passcard' 'card'

    adjective = 'hotel' 'pass'

    prop525 = "It's made of smooth plastic.  "

    prop140 = 0

    prop141 = 0

    prop293 = true

    sdesc = "passcard"

    adesc = "your passcard"

    prop167 = { "It's a card of bright orange plastic, a bit smaller and a good deal thicker  than a credit card.  You can see no magnetic stripe.  Instead, it has a row  of red and green dots running along one edge.  "; }

    location = obj609_pocket_of_your_short

    doAction24(arg1) = {
        "You dig into your pocket and pull out the key.  ";
        self.prop167;
        "You're afraid of losing it, though, so you carefully tuck it back into your pocket.  ";
    }

    prop177(arg1) = { "You'd better just leave it in your pocket.  "; }

    prop505 = [obj222_the_vendor]

    prop808 = { "He recognizes the bright orange card instantly.  \"Oh, so you're staying at the Days Inn, are you?  You know it's the first one ever built?  They just recently gave it a complete overhaul.\"  "; }
;

obj611_arms: class220, class301_your_body
    noun = 'elbow' 'arm' 'elbows' 'mine' 'arms'

    adjective = 'right' 'left' 'my'

    prop509 = true

    sdesc = "arms"

    prop524 = "They taste of sand and sweat and suntan lotion.  "

    prop167 = {
        if (Me.prop957) {
            "You've got a nasty bruise forming on one elbow from your  fall from the collapsing tower of benches.  ";
        } else {
            "Your arms are looking tan and trim.  ";
        }
    }

    thedesc = "your arms"

    ioAction148_attach_to -> prop296

    verIoAction148_attach_to -> prop296

    doAction148_attach_to -> prop296

    verDoAction148_attach_to -> prop296
;

obj612_legs: class220, class301_your_body
    noun = 'thigh' 'knees' 'leg' 'calves' 'thighs' 'calf' 'knee' 'mine' 'legs'

    adjective = 'right' 'left' 'my'

    prop509 = true

    sdesc = "legs"

    prop524 = "What are you, some kind of contortionist?  "

    prop167 = { "Your legs are tan and trim from walking the streets of downtown Savannah.   <<(Me.prop925 ? "Though your knees are still sore from your hard landing  on the pavilion's cement floor.  " : "")>>"; }

    thedesc = "your legs"

    ioAction148_attach_to -> prop297

    verIoAction148_attach_to -> prop297

    doAction148_attach_to -> prop297

    verDoAction148_attach_to -> prop297
;

obj613_neck: class220, class301_your_body
    noun = 'neck' 'mine'

    adjective = 'my'

    sdesc = "neck"

    prop167 = {
        "Well, you can't very well see that, now can you?  ";
        if (Me.prop926) {
            obj633_back.prop926;
        }
    }

    thedesc = "your neck"

    prop915 = "What are you trying to do, hang yourself?  "

    prop914 = { return self.prop915; }
;

obj614_shattered_pair_of_go: class65, class253, class220
    noun = 'goggles' 'shards' 'lenses' 'lens'

    adjective = 'plastic' 'dive' 'pair' 'of'

    prop140 = 1

    prop141 = 3

    prop509 = true

    prop658 = "a collection of splintered plastic shards"

    sdesc = "shattered pair of goggles"

    prop167 = {
        "They used to be a halfway decent pair of swim goggles, but now they're just a  collection of splintered plastic shards";
        if (obj254_white_rubber_strap.location == self) {
            " barely held together by a thin, white rubber strap";
        }
        ".  ";
    }

    location = nil

    verDoAction12_wear(arg1) = { "It's just no use.  The plastic lenses are completely shattered.  "; }

    prop914 = { return obj302_length_of_rope.prop931(self); }

    prop915 = "It's just no use.  The plastic lenses are completely shattered.  "

    prop808 = { "\"Too bad about those.  They look like they were halfway decent goggles  before they got smashed up.\"  "; }
;

obj615_black_neoprene_strap: class33
    noun = 'strap'

    adjective = 'thick' 'neoprene' 'black'

    prop131 = nil

    sdesc = "black neoprene strap"

    prop167 = { "The strap is made of thick, black neoprene, the same stuff wetsuits are made of.  It's only about as broad as your thumb where it meets the mask, but it fans out nearly to the breadth of your hand where it presses against the back of your head.  "; }

    location = obj471_scuba_mask

    verDoAction24(arg1) = { "You can't, it's an integral part of the mask.  "; }

    verDoAction150_detach(arg1) = { self.verDoAction24(arg1); }

    verDoAction149_detach_from(arg1, arg2) = {
        if (arg2 != obj471_scuba_mask) {
            caps();
            self.thedesc;
            " isn't attached to <<arg2.thedesc>>.  ";
        } else if (arg2 == self) {
            "You can't detach <<self.thedesc>> from itself.  ";
        } else {
            self.verDoAction150_detach(arg1);
        }
    }

    verDoAction154_take_off_from(arg1, arg2) = { self.verDoAction149_detach_from(arg1, arg2); }

    prop808 = { return obj471_scuba_mask.prop808; }
;

obj616_wax: class42, class28
    noun = 'wax'

    adjective = 'blood' 'red'

    prop140 = 0

    prop141 = 0

    locationOK = true

    location = { return obj561_antique_bottle.location; }

    prop131 = nil

    sdesc = "wax"

    prop167 = {
        if (Me.location == self.location.prop650) {
            "It's indistinguishable from the rest of the bottle, which is just a dark  silhouette floating on the surface above you.  ";
        } else {
            "It's pitted and scarred from years of elemental abuse, but it still seems  airtight.  ";
        }
    }

    prop964 = {
        "You start peeling the aged wax from the bottle.  It's so desiccated that it  crumbles into flakes which float away ";
        if (isclass(Me.location, obj217) || isclass(Me.location, obj265)) {
            "into the ocean currents  ";
        } else {
            "on the light evening breeze.  ";
        }
        self.moveInto(nil);
        obj561_antique_bottle.prop962 = nil;
    }

    doSynonym('Action24') = 'Action150_detach'

    doSynonym('Action24') = 'Action153_take_off'

    doSynonym('Action24') = 'Action89_peel'

    verDoAction24(arg1) = {
        if (!arg1.prop125(obj561_antique_bottle)) {
            "You're not carrying the bottle.  ";
        }
    }

    doAction24(arg1) = { self.prop964; }

    doSynonym('Action18_off') = 'Action149_detach_from'

    doSynonym('Action18_off') = 'Action154_take_off_from'

    doSynonym('Action18_off') = 'Action19_out'

    verDoAction18_off(arg1, arg2) = {
        if (arg2 != obj561_antique_bottle) {
            "The wax isn't on <<arg2.thedesc>>.  ";
        } else if (!Me.prop125(obj561_antique_bottle)) {
            "You're not carrying the bottle.  ";
        }
    }

    doAction18_off(arg1, arg2) = { self.prop964; }
;

obj617_marker: class33
    noun = 'marker'

    adjective = 'red'

    location = obj438_parchment

    prop141 = 0

    prop140 = 0

    prop508 = 0

    prop649 = 0

    sdesc = "marker"

    verDoAction0_inspect(arg1) = { obj438_parchment.verDoAction47_read(arg1); }

    doAction0_inspect(arg1) = { obj438_parchment.doAction47_read(arg1); }

    prop167 = { return obj438_parchment.prop168; }

    doAction47_read -> doAction62_unplug_from

    verDoAction47_read -> doAction62_unplug_from
;

obj618_ears: class220, class301_your_body
    noun = 'ear' 'mine' 'ears'

    adjective = 'right' 'left' 'my'

    prop708 = 9

    prop914 = { return obj302_length_of_rope.prop931(self); }

    prop915 = "You make an earnest attempt to tie the white strap to your ear,  but it keeps sliding off.  "

    prop509 = true

    sdesc = "ears"

    prop167 = "How do you expect to look at your own ears?  "

    thedesc = "your ears"
;

class class619_shell: class594, class253
    noun = 'shell'

    plural = 'shells'

    prop527 = { "\^<<self.thedesc>> isn't substantial enough to make much noise.  "; }

    prop510 = nil

    prop656 = true

    prop140 = 1

    prop141 = 2

    prop505 = [obj222_the_vendor]

    prop293 = true
;

obj620_clam_shell: class619_shell, class253
    noun = 'shell'

    adjective = 'white' 'clam'

    plural = 'shells'

    sdesc = "clam shell"

    prop167 = "It's a lovely clam shell.  The outer surface is almost pure white,  while the inner is lined with bright, silvery mother of pearl.  "

    location = obj199___Beach_Path__

    prop293 = true

    prop656 = true
;

obj621_crab_shell: class619_shell, class253
    noun = 'shell'

    adjective = 'mottled' 'crab'

    plural = 'shells'

    sdesc = "crab shell"

    prop167 = "It's the carapace of some sort of crab.  The edges of the shell come to  sharp points, almost like a serrated blade, while the surface is mottled with  deep shades of red and blue.  "

    location = obj285___Damp_Sand__Beneath

    prop656 = true
;

obj622_snail_shell: class619_shell, class253
    noun = 'shell'

    adjective = 'snail' 'spiral' 'grey' 'black'

    plural = 'shells'

    sdesc = "snail shell"

    prop167 = "It's a spiral shell about the size of your intertwined thumbs, painted  with streaks of dark grey and black.  You remember seeing a shell like this at  the marine center.  It belonged to some sort of salt water snail.  "

    location = obj466___Underwater_____dri

    prop656 = true
;

obj623_mussel_shell: class619_shell, class253
    noun = 'shell'

    adjective = 'mussel' 'black'

    plural = 'shells'

    sdesc = "mussel shell"

    prop167 = "It's a small shell about the size of your thumb.  The outer surface is  a mottled black, while the inner is lined with dark, silvery mother of pearl.  "

    location = obj451___Dry_Sand__South_of

    prop656 = true
;

obj624_head: class220, class301_your_body
    noun = 'head' 'mine'

    adjective = 'my'

    prop708 = 9

    prop914 = { "It occurs to you that <<self.thedesc>> may not be the best part of  your body to tie it to.  "; }

    prop915 = { return self.prop914; }

    sdesc = "head"

    prop167 = {
        "It's your head.  You've had it for years.  ";
        if (Me.prop926) {
            "A big sore spot on the back of your skull reminds you of how you  nearly, stupidly, ended your life.  ";
        }
        if (Me.prop752) {
            "You've <<(Me.prop926 ? "also" : "")>> got a painful knot on it from the  mishap in the diving bell<<(Me.prop957 ? "" : ".  ")>>";
        }
        if (Me.prop957) {
            "<<(Me.prop752 ? ", and another" : "You've got a painful knot on it")>>  from the incident with the benches.  ";
        }
    }

    thedesc = "your head"

    verIoAction43_attack_with(arg1) = { "Who do you think you are, Bruce Willis?  "; }
;

obj625_skin: class301_your_body
    noun = 'mine' 'skin'

    adjective = 'my'

    sdesc = "skin"

    prop167 = { "You've got a mild burn, but beneath that touch of red is a dark, healthy tan.  Gone (at least for now) is the fungal pallor characteristic of someone who spends their days indoors beneath fluorescent lights.  "; }

    prop524 = "It tastes of sand and sweat and suntan lotion.  "

    prop525 = "It feels taut and healthy.  "

    thedesc = "your skin"
;

obj626_red_welt: class301_your_body
    noun = 'mine' 'welt'

    adjective = 'nasty' 'red'

    sdesc = "red welt"

    prop167 = "It's a nasty red welt, inflicted by one of the strange castle building crustaceans.  "

    location = nil

    prop808 = { "He looks at it with genuine concern.   \"Ooh, that's a nasty burn!  How'd you get that?\"  "; }

    prop524 = "It tastes salty and warm.  "
;

obj627_trash_heap: class33
    noun = 'trash' 'garbage' 'rubbish' 'refuse' 'heap'

    adjective = 'trash' 'mound' 'heap' 'pile' 'of'

    location = nil

    sdesc = "trash heap"

    prop167 = {
        if (!obj307_flock_of_gulls.prop1022) {
            "You try to wade through the flapping hoard of birds to get at the trash, but their greed is greater than their fear of you, and they refuse to back down.  ";
        } else {
            "It's a pile of edible (well, to gulls, anyway) refuse consisting largely of half eaten food.  Actually, it's not so much of a pile anymore, since the gulls have scattered it half way across the beach.  ";
        }
    }

    prop299 = { "\n\tA heap of trash has been scattered into the sand by the squabbling flock of gulls.  "; }

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (!obj307_flock_of_gulls.prop1022) {
            if (arg2 != obj37 && arg2 != obj38_tell) {
                self.prop167;
                exit;
            }
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = { self.dobjGen(arg1, arg2, arg3, arg4); }

    prop1017 = "You can't even get to the mound through all those gulls.  "

    prop1024 = {
        if (obj307_flock_of_gulls.prop1022) {
            return nil;
        } else {
            self.prop1017;
            return true;
        }
    }

    doSynonym('Action8_dig') = 'Action26_look_in'

    doSynonym('Action8_dig') = 'Action64_look_under'

    verDoAction8_dig(arg1) = { self.verDoAction9_dig_with(arg1, obj231_hands); }

    doAction8_dig(arg1) = { self.doAction9_dig_with(arg1, obj231_hands); }

    verDoAction157_search(arg1) = { self.verDoAction9_dig_with(arg1, obj231_hands); }

    doAction157_search(arg1) = { self.doAction9_dig_with(arg1, obj231_hands); }

    doSynonym('Action9_dig_with') = 'Action75_with'

    doSynonym('Action9_dig_with') = 'Action87_with'

    verDoAction9_dig_with(arg1, arg2) = {
        if (arg2 != obj231_hands && arg2 != obj240_sieve) {
            "\^<<arg2.thedesc>> <<(arg2.prop509 ? "isn't" : "aren't")>> of much use in sifting the trash.  ";
        } else if (self.prop1024) {
        }
    }

    doAction9_dig_with(arg1, arg2) = {
        if (self.prop1024) {
            exit;
        }
        if (arg2 == obj231_hands) {
            "You paw through the trash with your bare hands, but it's been scattered  and mixed into the powdery sand.  If there's anything useful in the pile,  it may have been covered with sand.  ";
        } else if (arg2 == obj240_sieve) {
            if (obj567_steel_key.location != nil) {
                "You sift through a few more handfuls of the sandy trash, but find nothing else of value.  ";
            } else {
                "You sift diligently through the mounds of sandy trash, pouring handful after handful through the sieve.  Just when you've about decided to discontinue your search as fruitless, you turn up the key from the vendor's shirt pocket!  ";
                obj20.prop484 = ['triumphant'];
                obj567_steel_key.moveInto(Me);
                notify(obj307_flock_of_gulls, &prop1023, 3);
            }
        }
    }

    verDoAction86(arg1) = {
        if (!arg1.prop125(obj240_sieve)) {
            "You don't have anything appropriate with which to sift it.  ";
        } else {
            self.verDoAction9_dig_with(arg1, obj240_sieve);
        }
    }

    doAction86(arg1) = { self.doAction9_dig_with(arg1, obj240_sieve); }
;

obj628_mouth: class301_your_body
    noun = 'teeth' 'mouth' 'tongue' 'mine'

    adjective = 'my'

    sdesc = "mouth"

    prop167 = "How do you expect to look at your own mouth?  "

    prop525 = "Your teeth feel strong and healthy.  "

    prop524 = "You can still taste the vanilla coke you had an hour ago.   "

    thedesc = "your mouth"

    prop808 = { "He says, in what he probably considers his best deForrest Kelly impression,  \"Dammit Jim, I'm a peanut vendor, not a dentist!\"  "; }

    verIoAction13_in(arg1) = { }

    ioAction13_in(arg1, arg2) = {
        if (arg2 == obj230_feet || arg2 == obj231_hands) {
            arg2.doAction13_in(arg1, self);
        } else {
            "Is there anything you \(wouldn't\) put in your mouth?  ";
            fun226(['Well, color me surprised.  ', 'Oh well, at least you\'ll never be accused of discrimination.  ', 'You just get back to me, then.  ']);
        }
    }
;

obj629_nose: class301_your_body
    noun = 'mine' 'nose'

    adjective = 'my'

    sdesc = "nose"

    prop167 = "If you cross your eyes, you can just see it sloping down your face.  "

    thedesc = "your nose"
;

obj630_sinuses: class301_your_body
    noun = 'throat' 'sinuses' 'mine'

    adjective = 'my'

    prop509 = true

    sdesc = "sinuses"

    prop167 = {
        "Kind of hard to look at, you know?  ";
        if (Me.prop520) {
            "But you can still feel that nasty trickle of brine running down your throat.  ";
        }
    }

    thedesc = "your sinuses"

    prop808 = "He frowns and says \"Do I \(look\) like an eye, ears, nose & throat man?\"  "
;

obj631_bruises_and_scrapes: class301_your_body
    noun = 'scrapes' 'scrape' 'bruises' 'bruise' 'mine'

    adjective = 'red' 'yellow'

    sdesc = "bruises and scrapes"

    prop167 = { "Assorted bruises and scrapes cover the tops of your feet, from the brick you  dropped on them.  How you could mistreat your poor feet so is beyond me.  "; }

    location = nil
;

obj632_chest: class220, class301_your_body
    noun = 'chest' 'mine'

    adjective = 'my'

    prop708 = 9

    ioAction148_attach_to -> prop298

    verIoAction148_attach_to -> prop298

    doAction148_attach_to -> prop298

    verDoAction148_attach_to -> prop298

    sdesc = "chest"

    prop167 = {
        "It's your chest.  You've had it for a long time.  ";
        if (Me.prop921) {
            "It still hurts from from your face forward dive onto the beach.  ";
        }
    }

    thedesc = "your chest"

    prop524 = "Maybe later, when you get back to your hotel room.  "
;

obj633_back: class301_your_body
    noun = 'back' 'mine'

    adjective = 'my'

    sdesc = "back"

    prop167 = {
        "Well, you can't very well see that, now can you?  ";
        if (Me.prop926) {
            self.prop926;
        }
    }

    prop926 = "But a deep, painful throbbing reminds you of how you nearly,  stupidly, ended your life.  "

    thedesc = "your back"
;

obj634_behind: class301_your_body
    noun = 'ass' 'behind' 'posterior' 'mine' 'butt'

    adjective = 'big' 'my'

    sdesc = "behind"

    prop167 = {
        "Why, do you think it's too big?  ";
        if (Me.prop920) {
            "Maybe it's just swollen from the hard landing it suffered when you jumped  ass backwards over the wooden railing.  ";
        }
    }

    thedesc = "your behind"

    prop524 = "Gross!  "

    prop808 = "He gives it a quick appraisal and says  \"Oh wow, it's huge!  No, sorry, just kidding.\"  "
;

obj635_breath: class247, class28
    noun = 'breath' 'mine'

    adjective = 'my'

    sdesc = "breath"

    prop167 = "It's not something you can see, silly!  "

    adesc = "a breath"

    thedesc = "your breath"

    locationOK = true

    location = { return Me.location; }

    prop521 = { "You surreptitiously cup your hands over your mouth and nose, and exhale.   Your breath still smells like the vanilla coke you had earlier in the afternoon.  "; }

    prop527 = {
        if (obj20.prop491) {
            "There's not much to hear, since you're holding it, but you can hear the dull  roar of blood in your veins.  ";
        } else {
            "Your breathing sounds even and regular... unlike the erratic  hyperventilation you often fall victim to in the office.  ";
        }
    }

    verDoAction24(arg1) = { }

    doAction24(arg1) = {
        if (obj20.prop491) {
            "You're already holding your breath.  ";
        } else {
            "You take a deep breath, hold it... and then let it out.  ";
        }
    }

    prop808 = "The vendor wrinkles his nose.   \"Hey!  Do I come and breathe on \(you\) at \(your\) job?\"  "
;

obj636_stomach: class301_your_body
    noun = 'belly' 'tummy' 'stomach'

    adjective = 'my'

    sdesc = "stomach"

    prop167 = {
        "Taut and lean, despite your recent sampling of the local cuisine.  ";
        if (!obj556_husks_peanuts_peanut.prop979) {
            "However, it is grumbling rather painfully, as you've forgotten to eat dinner  in your agitated state.  ";
        }
    }

    thedesc = "your stomach"

    prop524 = "Huh?  "

    prop808 = "He gives it a quick appraisal and says,  \"Nice abs.\"  "

    prop527 = {
        if (!obj556_husks_peanuts_peanut.prop979) {
            "It's making embarassing noises.  ";
        } else {
            "Other than the occasional small gas bubble, it's perfectly silent.  ";
        }
    }

    prop525 = {
        if (!obj556_husks_peanuts_peanut.prop979) {
            "It feels empty.  ";
        } else {
            "It feels fine.  ";
        }
    }
;

class class637: class28, class33
    prop654 = [obj36_inspect, obj38_tell, obj37]

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (find(self.prop654, arg2) == nil) {
            "And will you climb a ladder to reach for the stars?  ";
            exit;
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = { self.dobjGen(arg1, arg2, arg3, arg4); }

    location = { return Me.location; }

    locationOK = true

    prop293 = true

    prop167 = {
        if (Me.location == obj433___On_the_Canopy__ && !Me.prop899) {
            obj346.prop980;
        } else {
            self.prop981;
        }
    }

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = { "The vendor gestures grandly toward the pastel smudged sky.  \"Yup, it's a beautiful sunset, isn't it?  That's half the reason I stayed here.  Most amazing sunsets I've ever seen, and I've watched the sun set from dang near every region in the country, so I know of what I speak.\"  "; }

    prop807 = { "The old man's eyes never stray from the sea.  \"Aye, 'tis a beaut.\""; }
;

obj638_sunset: class637
    noun = 'sunset'

    prop681 = true

    sdesc = "sunset"

    prop981 = {
        local local1 = fun227(Me);

        if (isclass(local1, obj217) || local1 == obj339___Inside_the__Octopu) {
            "It's no more than a shimmering light on the surface above you.  ";
        } else if (local1 == obj437___Under_Pavilion__ || local1 == obj447___Storage_Area__) {
            "You can't see much of it from beneath the pavilion.  ";
        } else if (local1 == obj381___Grotto__) {
            "All you can see from here are the few feathery pink tongues of  evening light that lick the walls of the cave.  ";
        } else {
            "As you know from experience, the sunsets in Savannah fill the sky with the most amazing range of delicate, pastel shades you have ever seen in your life.  Unfortunately, much of this one is hidden behind the two tall hotels standing immediately to the west of the beach.  Through the narrow strip between the hotels, you can see a ribbon of brilliant, almost electric pink, where the sun illuminates a few westerly clouds.  The colors wash out to the east, turning into subtle, pale shades of blue and purple.  ";
        }
    }

    location = { return Me.location; }

    locationOK = true
;

obj639_sun: class637
    noun = 'sun'

    prop681 = true

    sdesc = "sun"

    prop981 = {
        local local1 = fun227(Me);

        if (isclass(local1, obj217) || local1 == obj339___Inside_the__Octopu) {
            "It's no more than a shimmering light on the surface above you.  ";
        } else if (local1 == obj437___Under_Pavilion__ || local1 == obj447___Storage_Area__) {
            "It's not visible from beneath the pavilion.  ";
        } else if (local1 == obj381___Grotto__) {
            "All you can see from here are the few feathery pink tongues of  evening light that lick the walls of the cave.  ";
        } else {
            "The deep orange sun is visible between two tall hotels,  where it is suspended, heavy and ripe, a hair's breadth from the earth.  ";
        }
        if (local1 == obj433___On_the_Canopy__) {
            "From your high vantage on the pavilion's canopy, it almost seems like you're level with the sun, as if you were some new stellar object torn  between the pull of sun and earth.  ";
        }
    }

    location = { return Me.location; }

    locationOK = true
;

obj640_clouds: class637
    noun = 'cloud' 'clouds'

    prop509 = true

    sdesc = "clouds"

    prop981 = {
        local local1 = fun227(Me);

        if (isclass(local1, obj217) || local1 == obj339___Inside_the__Octopu) {
            "You can't see them from down here.  ";
        } else if (local1 == obj437___Under_Pavilion__ || local1 == obj447___Storage_Area__) {
            "They're not visible from beneath the pavilion.  ";
        } else if (local1 == obj381___Grotto__) {
            "You can't see them from here.  ";
        } else {
            "The thin, downy clouds range from a brilliant, electric salmon in the west,  to subtle, pale shades of blue and purple in the east.  ";
        }
        if (local1 == obj433___On_the_Canopy__) {
            "From your high vantage on the pavilion's canopy, it almost seems like you could reach up and touch the clouds, perhaps even paint them with some great celestial brush of your own design.  ";
        }
    }

    location = { return Me.location; }

    locationOK = true
;

obj641_moon: class637
    noun = 'moon'

    sdesc = "moon"

    prop981 = {
        local local1 = fun227(Me);

        if (isclass(local1, obj217) || local1 == obj339___Inside_the__Octopu) {
            "You can't see it from down here.  ";
        } else if (local1 == obj437___Under_Pavilion__ || local1 == obj447___Storage_Area__) {
            "It's not visible from beneath the pavilion.  ";
        } else if (local1 == obj381___Grotto__) {
            "You can't see it from here.  ";
        } else {
            "The moon is just barely visible as a pale, blueish white disk in the eastern sky.  ";
        }
        if (local1 == obj433___On_the_Canopy__) {
            "It seems somehow magnified by your current height, as if you could reach  up and pluck it like some great pale fruit.  ";
        }
    }

    location = { return Me.location; }

    locationOK = true
;

obj642_tanker: class28, class63
    noun = 'tanker' 'boat' 'ship'

    sdesc = "tanker"

    prop167 = {
        "Drifting on the far horizon is a speck of a ship, so far off that it's no more than a pale, pink shadow.  You can barely detect any motion, but for you to see it at all, it must be huge.  Probably a super tanker, carrying oil or raw materials for manufacturing.  ";
        if (Me.location == obj433___On_the_Canopy__) {
            "Somehow your vantage on the pavilion's canopy seems to draw the ship closer,  as if you were viewing it through a giant magnifying glass.  ";
        }
    }

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (isclass(local1, obj217) || local1 == obj339___Inside_the__Octopu || local1 == obj199___Beach_Path__ || local1 == obj363___In_the_Diving_Bell || local1 == obj381___Grotto__) {
            return nil;
        } else {
            return Me.location;
        }
    }

    prop505 = [obj305_the_old_man]

    prop807 = { "His lip curls in a steely sneer.  \"'T's what they call a ship nowadays.   Ugly tub scarce deserves to be called a lady.  Even the waving girl herself  wouldn't of found it in her to greet it.\"  "; }
;

obj643_hotels: class28, class63
    noun = 'hotel' 'hotels' 'windows' 'window'

    sdesc = "hotels"

    prop167 = {
        "Your own hotel and a nearby twin stand ominous guard over the western  border of the beach, obscuring much of this evening's otherwise spectacular  sunset.  ";
        if (Me.location == obj433___On_the_Canopy__) {
            "From your vantage here on top of the pavilion, the only thing stopping you  from peering into the hotel's many windows is the heavy shade cast by the  hotel itself.  ";
        }
    }

    prop509 = true

    location = {
        local local1 = fun227(Me);

        if (isclass(local1, obj217) || local1 == obj339___Inside_the__Octopu || local1 == obj437___Under_Pavilion__ || local1 == obj447___Storage_Area__ || local1 == obj381___Grotto__) {
            return nil;
        } else {
            return Me.location;
        }
    }

    locationOK = true

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = { "\"The Days Inn.  You're staying there, right?  It's the very first Days Inn ever  built.  Not that that's any big deal.\"  "; }

    prop807 = { "\"Ugly monsters.\""; }
;

obj644_message: class33, class232, class48
    noun = 'words' 'graffiti' 'message' 'letters' 'writing'

    adjective = 'hand'

    prop131 = nil

    location = obj451___Dry_Sand__South_of

    sdesc = "message"

    prop505 = [obj222_the_vendor]

    prop808 = "He grins and says  \"Oh, yeah, I did that.  Hope that doesn't spoil the mystery for you.\"  "

    prop167 = { "In letters a hand high, someone has written \"Here There Be Dragons.\"  Beneath that, they've drawn a simple compass rose with an arrow pointing to the northeast.  "; }

    prop299 = { "\n\tSomeone has scrawled a message and a simple diagram in the powdery sand.  "; }

    prop525 = "As you extend your hand toward the message drawn in the sand,  it's suffused by a slight tingling sensation, as if you were reaching into  some sort of mild energy field.  No, it's probably just your imagination.  "

    verDoAction135_clean(arg1) = { }

    doAction135_clean(arg1) = {
        "You wipe the message clean, leaving no trace of it.  ";
        self.moveInto(nil);
        obj645_compass_rose.moveInto(nil);
    }

    doAction9_dig_with(arg1, arg2) = {
        "You shovel aside the sand in which the message is drawn, completely obliterating it.  ";
        self.moveInto(nil);
        obj645_compass_rose.moveInto(nil);
    }

    verDoAction64_look_under(arg1) = { self.verDoAction9_dig_with(arg1, obj231_hands); }

    doAction64_look_under(arg1) = { self.doAction9_dig_with(arg1, obj231_hands); }
;

obj645_compass_rose: class33, class232, class48
    noun = 'diagram' 'compass' 'rose'

    adjective = 'compass'

    location = obj451___Dry_Sand__South_of

    sdesc = "compass rose"

    prop167 = "It's just a simple circle with tick marks for the cardinal and ordinal directions.   An arrow has been drawn which points to the northeast.  "

    doAction135_clean -> verDoAction163_feed_to

    doAction73_touch -> verDoAction163_feed_to

    doAction9_dig_with -> verDoAction163_feed_to

    doAction64_look_under -> verDoAction163_feed_to

    prop505 = [obj222_the_vendor]

    prop808 = { return obj644_message.prop808; }
;

obj646_dragon_sculpture: class33, class232
    noun = 'dragon' 'reptile' 'sculpture'

    adjective = 'dragon' 'reptile' 'sand'

    location = obj287___Damp_Sand__North_o

    prop131 = nil

    prop982 = nil

    sdesc = "dragon sculpture"

    prop167 = { "The enormous sand sculpture is almost twice as long as you are tall, and stands nearly to your shoulder.  It's some sort of huge, scaly reptile, basking on its swollen belly in the evening light.   Lying flat against its sides are a pair of batlike wings that sprout  from a ridged, bony spine.  The spine curves down and around, ending  in a massive, coiled tail.  Two plump hind legs sprawl out in back, while  a pair of short, stubby arms lies crossed beneath an angular head full of  sharp looking teeth.   \b You note that certain parts of the creature, including its spine, claws,  eyes, and teeth consist of carefully placed sea shells.  The shells give  the creature an illusory realism.  Curiously, there is an empty cavity in  the creature's beak that looks as if it might once have held a shell.   \b All in all, the dragon seems surprisingly realistic, as if it had recently clawed  its way out of the sand to warm itself beneath the bright sun.   "; }

    prop527 = { "You put your ear against the dragon's broad belly.  You'd swear you could  hear some sort of distant pulse, as of a heartbeat.  Of course, it must  just be the vibrations of the pounding surf reverberating through the sand."; }

    prop299 = { "\n\tSomeone has built an enormous sand sculpture here.  It seems to be some  sort of reptile.  "; }

    verDoAction9_dig_with(arg1, arg2) = {
        "You move towards the dragon... but halt with a sudden flash of insight.  In your mind, you picture someone spending hours digging up and piling the sand, pushing it into rough form, carefully smoothing the curves and contours, detailing the fingers and face, collecting shells for the dorsal ridge...  You carefully back away, and as you do, it almost seems that one of the dragon's heavy lidded eyes opens, and favors you with a long, lazy wink.  ";
        obj20.prop484 = ['respectful'];
    }

    verDoAction41(arg1) = { self.verDoAction9_dig_with(arg1, obj231_hands); }

    doSynonym('Action41') = 'Action90_kick'

    prop525 = { "You reach forward tentatively.  A few loose grains slide to the ground as you slide your hand across the dragon's broad belly.  It's a surprisingly sensuous experience, and the dragon is oddly warm.  In fact, you'd swear that something deep in its belly was pulsing.  "; }

    verIoAction123_give_to(arg1) = { }

    ioAction123_give_to(arg1, arg2) = {
        if (arg2 == obj647_life) {
            self.verDoAction130_animate(arg1);
        } else {
            "Despite its suprisingly realistic appearance, the dragon isn't alive.  ";
        }
    }

    verDoAction130_animate(arg1) = { "How do you propose to do that, Mr. Lovecraft?  "; }

    prop505 = [obj222_the_vendor]

    prop808 = { "The vendor beams with pride.  \"Like it?  It's one of mine.  I do one every day  before coming on shift.  I always try to work in the afternoon so I've got  the morning free to sculpt.\"  "; }

    prop295 = {
        local local1;

        self.prop293 = true;
        obj20.prop497 - self;
        obj488_dragon_sculpture.prop293 = true;
        obj20.prop497 - obj488_dragon_sculpture;
        obj487_dragon_sculpture.prop293 = true;
        obj20.prop497 - obj487_dragon_sculpture;
        obj648.prop293 = true;
        local1 = firstobj(obj648);
      label445531:
        if (local1) {
            local1.prop293 = true;
            obj20.prop497 - local1;
            local1 = nextobj(local1, obj648);
            goto label445531;
        }
    }

    verDoAction121_drop_on(arg1) = { "But for the curiously empty cavity in the dragon's beak, it seems otherwise  complete.  You sense that nothing would be gained by adding to it.  "; }

    doSynonym('Action38_sit_on') = 'Action143_climb'

    doSynonym('Action38_sit_on') = 'Action152_get_on'

    doSynonym('Action38_sit_on') = 'Action54_stand_on'

    doSynonym('Action38_sit_on') = 'Action166_ride'

    verDoAction38_sit_on(arg1) = { "Though the dragon looks quite substantial, you realize that it would most  likely crumble beneath your weight.  "; }

    verDoAction145_build(arg1) = { obj55_ground.verIoAction146_build_in(arg1); }

    doAction145_build(arg1) = { obj55_ground.ioAction146_build_in(arg1, self); }

    verDoAction146_build_in(arg1, arg2) = { }
;

obj647_life: class529_topic_topics
    noun = 'life'

    sdesc = "life"

    thedesc = { return self.sdesc; }

    adesc = { return self.sdesc; }

    prop891 = true

    verDoAction123_give_to(arg1, arg2) = { arg2.verDoAction130_animate(arg1); }

    doAction123_give_to(arg1, arg2) = { arg2.doAction130_animate(arg1); }

    prop808 = { "The vendor flashes you a broad grin.  \"It's great, isn't it?   God \(damn\), it's good to be alive!\"  "; }

    prop807 = { "The creases of his face smooth just the tiniest bit.   \"It's what you make of it, youngster.\"  He returns to silence, and you  assume that he's forgotten about you already.  But several moments later the  creases go into motion again.  \"Aye, I remember takin' a powerful lesson  'bout life from the waving girl.  Can't say as much about most.\"  "; }

    prop505 = [obj222_the_vendor, obj305_the_old_man]
;

obj648: class33
    prop131 = nil

    location = obj646_dragon_sculpture

    verDoAction41(arg1) = { obj646_dragon_sculpture.verDoAction9_dig_with(arg1, obj231_hands); }

    verDoAction121_drop_on(arg1) = { "But for the curiously empty cavity in the dragon's beak, it seems otherwise  complete.  You sense that nothing would be gained by adding to it.  "; }

    verDoAction13_in(arg1) = { self.verDoAction121_drop_on(arg1); }

    doSynonym('Action41') = 'Action90_kick'

    prop525 = "A few loose grains slide to the ground as you brush your hand across it.  "

    prop505 = [obj222_the_vendor]

    prop808 = { return obj646_dragon_sculpture.prop808; }
;

obj649_dragon_s_shells: obj648
    noun = 'shells'

    adjective = 'dragon\'s' 'reptile\'s' 'sculpture\'s'

    prop509 = true

    location = obj646_dragon_sculpture

    sdesc = "dragon's shells"

    prop167 = { "They're ordinary sea shells planted in strategic spots all over the dragon.  A long row of shells makes up the dragon's spine, and another set descends like a picket fence from its beaklike mouth, giving it a cartoonish overbite.  On the dragon's beak, just above two tiny nostrils, is a curiously empty cavity that looks like it might once have housed a large shell.  "; }

    verDoAction24(arg1) = { "Choosing a shell at random, you grab and pull.  It proves surprisingly firm, so you give it a quick yank.  To your amazement, there is absolutely no give.  Your fingers just slide off the sandy shell.  "; }

    prop525 = { "They feels like ordinary sea shells.  Somehow, they've been rigidly fixed in place.  "; }

    prop808 = { "\"Believe it or not, collecting the shells is one of the most time consuming  parts of the job.  Sometimes I run out and have to go hunting for more.  I was  really bummed today, because I couldn't find a good horn for his beak.\"  "; }
;

obj650_dragon_s_beak: obj648
    noun = 'beak' 'nose'

    adjective = 'dragon\'s' 'reptile\'s' 'sculpture\'s'

    location = obj646_dragon_sculpture

    sdesc = "dragon's beak"

    prop167 = { "The dragon's angular head ends in a beaklike nose with two tiny nostrils.   Just above the dragon's nostrils is a curiously empty cavity.  "; }

    prop808 = { return obj649_dragon_s_shells.prop808; }
;

obj651_dragon_s_mouth: obj648
    noun = 'teeth' 'mouth'

    adjective = 'dragon\'s' 'reptile\'s' 'sculpture\'s'

    location = obj646_dragon_sculpture

    sdesc = "dragon's mouth"

    prop167 = { "It's an angular slit bissecting the long birdlike beak.   A mouthful of shells gives the dragon a cartoonish, picket fence grin.  "; }

    verDoAction13_in(arg1, arg2) = { "The dragon's mouth is just a line carved around the base of its snout.   You can't put anything in it."; }
;

obj652_the_dragon_s_eyes: obj648
    noun = 'lid' 'eye' 'lids' 'eyes'

    adjective = 'right' 'dragon\'s' 'reptile\'s' 'sculpture\'s' 'left'

    prop509 = true

    location = obj646_dragon_sculpture

    sdesc = "the dragon's eyes"

    prop167 = { "The dragon's eyes are closed, sealed with heavy lids.  For one brief, hallucinatory  moment, you'd swear the dragon had winked at you.  Probably just sand twinkling in  the sunlight.  "; }
;

obj653_dragon_s_hands: obj648
    noun = 'hands' 'claws' 'thumb' 'paw' 'fingers' 'finger' 'thumbs' 'hand' 'claw' 'paws'

    adjective = 'right' 'dragon\'s' 'reptile\'s' 'sculpture\'s' 'left'

    prop509 = true

    location = obj646_dragon_sculpture

    sdesc = "dragon's hands"

    prop167 = "Though each hand has only two fingers and a stubby thumb, they're oddly human.  "
;

obj654_dragon_s_arms: obj648
    noun = 'arm' 'arms'

    adjective = 'right' 'dragon\'s' 'reptile\'s' 'sculpture\'s' 'left'

    prop509 = true

    location = obj646_dragon_sculpture

    sdesc = "dragon's arms"

    prop167 = "The dragon's arms are stubby, but thick and well muscled.  "
;

obj655_dragon_s_legs: obj648
    noun = 'leg' 'legs'

    adjective = 'right' 'dragon\'s' 'reptile\'s' 'sculpture\'s' 'left'

    prop509 = true

    location = obj646_dragon_sculpture

    sdesc = "dragon's legs"

    prop167 = { "The dragon's hind legs are long and plump.  They sprawl out behind the dragon in a  boneless way that only reptiles can achieve.  "; }
;

obj656_dragon_s_feet: obj648
    noun = 'toe' 'feet' 'foot' 'toes'

    adjective = 'right' 'dragon\'s' 'reptile\'s' 'sculpture\'s' 'left'

    prop509 = true

    location = obj646_dragon_sculpture

    sdesc = "dragon's feet"

    prop167 = "The dragon's feet are long and thin.  "
;

obj657_dragon_s_back: obj648
    noun = 'ridge' 'spine' 'crest' 'back'

    adjective = 'dragon\'s' 'dorsal' 'reptile\'s' 'sculpture\'s' 'bony'

    location = obj646_dragon_sculpture

    sdesc = "dragon's back"

    prop167 = { "Running along the dragon's back from the base of the head to the tail is a  thick, bony ridge made of sea shells.  "; }
;

obj658_dragon_s_belly: obj648
    noun = 'belly' 'stomache'

    adjective = 'dragon\'s' 'reptile\'s' 'sculpture\'s'

    location = obj646_dragon_sculpture

    sdesc = "dragon's belly"

    prop167 = "The dragon's belly is fat and swollen.  Clearly, this is one well fed beastie.  "
;

obj659_dragon_s_tail: obj648
    noun = 'tail'

    adjective = 'dragon\'s' 'reptile\'s' 'sculpture\'s'

    location = obj646_dragon_sculpture

    sdesc = "dragon's tail"

    prop167 = "The tail is long and fat, and coils dramatically around the dragon's body.  "
;

obj660_dragon_s_wings: obj648
    noun = 'wings' 'wing'

    adjective = 'right' 'dragon\'s' 'reptile\'s' 'sculpture\'s' 'left'

    prop509 = true

    location = obj646_dragon_sculpture

    sdesc = "dragon's wings"

    prop167 = { "The dragon's wings are ribbed like a bats, and lie folded up against the dragon's  swollen belly.  Even though they're made of sand, they someone manage to look  tough and leathery.  "; }
;

obj661_dragon_s_head: obj648
    noun = 'head'

    adjective = 'dragon\'s' 'reptile\'s' 'sculpture\'s'

    location = obj646_dragon_sculpture

    sdesc = "dragon's head"

    prop167 = { "The dragon's angular head rests limply on the dragon's crossed arms.  Its mouth  is full of sharp-looking teeth, while its beak is home to a curiously empty cavity.  "; }
;

obj662_imaginary_sculpture: class301_your_body
    noun = 'sculpture'

    adjective = 'imaginary'

    prop681 = true

    locationOK = true

    sdesc = "imaginary sculpture"

    thedesc = "your imaginary sculpture"

    prop167 = "Sculpture?  What sculpture?  You don't see any sculpture here.  "

    location = {
        local local1 = Me.location;

        if (local1.prop816 == nil && obj646_dragon_sculpture.location != local1 && obj487_dragon_sculpture.location != local1 && obj488_dragon_sculpture.location != local1) {
            return local1;
        } else {
            return nil;
        }
    }

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (arg2 != obj369_build) {
            self.prop167;
            exit;
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = {
        if (arg2 != obj38_tell && arg2 != obj37) {
            self.prop167;
            exit;
        }
    }

    verDoAction145_build(arg1) = { obj55_ground.verIoAction146_build_in(arg1); }

    doAction145_build(arg1) = { obj55_ground.ioAction146_build_in(arg1, self); }

    verDoAction146_build_in(arg1, arg2) = { }

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = { return obj646_dragon_sculpture.prop808; }
;

obj663_band: class33
    noun = 'band' 'ring' 'ramp'

    adjective = 'narrow' 'thin'

    location = obj440_organic_looking_cast

    sdesc = "band"

    prop167 = { "It's a ring, or ramp, that corkscrews around the castle from base to tip like  a steeply cut mountain path.  "; }
;

obj664_smoke: class247
    noun = 'smoke'

    adjective = 'plume' 'of'

    location = nil

    sdesc = "smoke"

    prop167 = "You don't see anything now.  It must have been just your imagination.  "

    prop521 = { "You can't smell anything but ordinary beach smells.  It must have just been  your imagination.  "; }
;

obj665_snacks: class529_topic_topics
    noun = 'cream' 'candy' 'chips' 'drink' 'fries' 'pizza' 'dog' 'chicken' 'beverages' 'cookies' 'lemonade' 'nachos' 'hamburger' 'snacks' 'pretzels' 'food' 'dogs'

    adjective = 'fried' 'ice' 'hot' 'french' 'potato'

    prop509 = true

    prop891 = true

    sdesc = "snacks"

    prop505 = [obj222_the_vendor]

    prop808 = { "He says over his shoulder, \"Sorry, no can do.  Everything's already locked up for  the night<<(obj556_husks_peanuts_peanut.location == obj239_boiler ? "... except for maybe a few peanuts." : ".")>>\"  "; }

    verDoAction125_buy(arg1) = {
        if (obj222_the_vendor.location != Me.location) {
            "Who exactly are you planning on buying that from?  ";
        }
    }

    doAction125_buy(arg1) = { return self.prop808; }

    verDoAction126_buy_from(arg1, arg2) = {
        if (obj222_the_vendor.location != Me.location || arg2 != obj222_the_vendor) {
            "Who exactly are you planning on buying that from?  ";
        }
    }
;

obj666_the_vendor: class59
    noun = 'vendor' 'ivan'

    adjective = 'boiled' 'peanut'

    isHim = true

    sdesc = "the vendor"

    thedesc = "the vendor"

    adesc = "the vendor"

    prop167 = "The vendor has headed home for the night.  "

    prop328 = obj222_the_vendor
;

obj668_orange_shirt: class33
    noun = 'shirt'

    adjective = 'orange' 'vendor\'s'

    location = obj222_the_vendor

    prop135 = nil

    sdesc = "orange shirt"

    prop167 = { "It's an oversized dress shirt, with vertical orange and white pinstripes.  It's untucked and unbuttoned, and hangs like a smock nearly down to the vendor's knees.  <<(obj567_steel_key.location == nil || obj567_steel_key.location == self ? "You notice that the shirt's breast pocket is sagging a bit.  " : "The shirt's breast pocket hangs low under its own weight.  ")>>"; }

    prop505 = [obj222_the_vendor]

    prop808 = { "He beams proudly.  \"Like it?  I've got eight more just like it!\"  "; }

    verDoAction24(arg1) = { "The vendor sees you reaching for his shirt and fixes you with an  intense stare that convinces you to withdraw your hand.  "; }
;

obj669_vendor_s_shirt_pocke: class33
    noun = 'pocket'

    adjective = 'shirt' 'vendor\'s'

    location = obj222_the_vendor

    prop1005 = obj222_the_vendor

    sdesc = "vendor's shirt pocket"

    adesc = { return self.thedesc; }

    prop135 = nil

    prop505 = [obj222_the_vendor]

    prop891 = nil

    prop808 = "He glances down at his shirt, as if checking for stains.   \"Yeah, it's a pocket.  So what?\"  "

    verDoAction26_look_in(arg1) = { }

    doAction26_look_in(arg1) = { self.prop167; }

    prop167 = {
        if (!self.prop891) {
            "The pocket sags from the weight of some hidden object.  The vendor  stoops briefly to reach a low shelf, revealing a steel key that slides forward nearly to the pocket's lip.  The key disappears back into the pocket as the vendor straightens up.  ";
            obj567_steel_key.prop295;
            self.prop135 = true;
            self.prop891 = true;
        } else {
            if (obj567_steel_key.location == self) {
                "It sags from the weight of the steel key tucked inside.  ";
            } else {
                "It seems to be empty.  ";
            }
        }
    }

    ioAction13_in(arg1, arg2) = { "\^<<obj222_the_vendor.thedesc>> sees you reaching for his shirt and  fixes you with an intense stare that convinces you to withdraw your hand.  "; }

    verDoAction24(arg1) = { "The vendor sees you reaching for his shirt and fixes you with an intense  stare that convinces you to withdraw your hand.  "; }
;

obj670_base: class33
    noun = 'coils' 'foundation' 'base' 'coil'

    adjective = 'heating' 'boiler\'s' 'electric'

    location = obj427___By_the_Snack_Bar__

    sdesc = "base"

    prop167 = "The base of the boiler is a flat, square platform with interior heating coils,  on which the boiler pan rests.  On the front panel of the base are a valve handle  and a black knob.  "

    verDoAction24(arg1) = { "It's seems to be permanently built into the counter.  "; }
;

obj671_black_knob: class53
    noun = 'dial' 'knob'

    adjective = 'metal' 'boiler\'s' 'black'

    sdesc = "black knob"

    prop167 = { "It's a black metal knob with just two settings, 'On' and 'Off'.   Currently, it's set to <<(obj239_boiler.prop273 ? "'On'" : "'Off'")>>.  "; }

    doAction36_turn_on -> doAction53_on

    verDoAction36_turn_on -> doAction53_on

    doAction37_turn_off -> doAction53_on

    verDoAction37_turn_off -> doAction53_on

    location = obj670_base
;

obj672_valve_handle: class53
    noun = 'handle'

    adjective = 'valve' 'boiler\'s'

    sdesc = "valve handle"

    prop167 = "It's an ordinary metal valve handle.  It's not obviously marked,  but presumably it controls the flow of water to the boiler.  "

    prop273 = nil

    verDoAction156_open(arg1) = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            obj239_boiler.prop858;
        } else if (self.prop273) {
            "You try to turn the valve to the right,  but it already seems to be opened as far as it can be.  ";
        }
    }

    doAction156_open(arg1) = {
        "You turn the valve all the way to the right, but nothing happens.   Perhaps the water main's been turned off for the night.  ";
        self.prop273 = true;
    }

    verDoAction17_close(arg1) = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            obj239_boiler.prop858;
        } else if (!self.prop273) {
            "You try to turn the valve to the left,  but it already seems to be closed.  ";
        }
    }

    doAction17_close(arg1) = {
        "You turn the valve all the way to the left.  Nothing obvious happens.  ";
        self.prop273 = nil;
    }

    verDoAction33_turn(arg1) = {
        if (obj222_the_vendor.location == obj427___By_the_Snack_Bar__) {
            obj239_boiler.prop858;
        }
    }

    doAction33_turn(arg1) = {
        if (self.prop273) {
            self.doAction17_close(arg1);
        } else {
            self.doAction156_open(arg1);
        }
    }

    location = obj670_base
;

obj673_pail: class74, class676
    noun = 'bucket' 'pail'

    location = obj305_the_old_man

    sdesc = "pail"

    prop167 = "It's an ordinary, if somewhat corroded, metal pail, full of fish caught by the old man.  "

    verDoAction26_look_in(arg1) = { obj684_fish.prop167; }

    prop1012 = "He glances down at the pail.   \"It's a hunk of junk, but I can't let go of it while my haul is in it.\"  "

    prop807 = "He looks askew at the pail and says,  \"Huh.  That old hunk of junk?  I'll empty it out when I'm done.\"  "

    prop181 = 0

    ioAction13_in(arg1, arg2) = { "The old man spots you trying to slip <<arg2.thedesc>> into his <<self.sdesc>>.   The withering glance he shoots you convince you to give up trying.  "; }
;

obj674_waving_girl: class529_topic_topics
    noun = 'martus' 'girl'

    adjective = 'florence' 'waving'

    prop891 = true

    sdesc = "waving girl"

    adesc = { return self.thedesc; }

    prop1011 = 1

    prop807 = {
        if (self.prop1011 == 1) {
            "The old man's face softens still further.  \"Aye, Florence Martus.  I was a lad of fourteen, bound for home from my first voyage, when I saw her.  She was an old woman then.\"  The old man's thin lips curve into a wry smile.  \"Hah!  But not so old as I am now, eh?\"  ";
            obj20.prop484 = ['interested'];
        } else if (self.prop1011 == 2) {
            "The old man continues his story.  \"Poor Flo lived a lonely life on Elba Island with her brother the lighthouse keeper until she gave her heart to a sailing man.  He promised to wed her after the next voyage, but that sailing man, he never made it home again.\"  The thin lips turn down in a sympathetic frown.  \"But Flo, she waited for him.  Every sailing ship sailed into Savannah river, Flo was there to greet it.\"  ";
            obj20.prop484 = ['melancholic'];
        } else if (self.prop1011 == 3) {
            "He sucks in a breath through clenched teeth.  \"She'd been at it onto forty-four years when I came along.  I was just a pup, and she in her last year before retirement.  She would've been sixty, sixty-five by then, but you could hardly tell it.  She had a... grace, and nobility that defied her age.  A beauty, even.  Seems to me it was the purity and duration of her love for that man that sustained her.\"  ";
            obj20.prop484 = ['respectful'];
        } else if (self.prop1011 == 4) {
            "\"All I know for sure's that she brought happiness to thousands of sailors that came into Savannah port.\"  The old man looks respectfully towards the river, hidden beyond the contours of Tybee Island.  \"I guess, in a way, she loved all of us.  And we sure loved her.  She never did marry, but maybe she had something even better.\"  Finally, he turns back to the sea as a single, fat tear rolls down one chiselled cheek.  ";
            obj20.prop484 = ['admiring'];
        } else if (self.prop1011 > 4) {
            "The old man looks mistily out to sea, but otherwise fails to respond.  ";
        }
        ++self.prop1011;
    }

    prop505 = [obj305_the_old_man, obj222_the_vendor]

    prop808 = {
        "\"She was the girl who stood by the river waving all the sailing ships in.  Kind of sad, really.  Spent better than half her life waiting for some sailor who promised to marry her and then ran off.  There's a statue of her down by River Street, if you haven't seen it.\"  ";
        obj20.prop484 = ['curious'];
    }
;

obj675_the_old_man: class63, class28
    noun = 'ghost' 'man' 'george' 'fisherman'

    adjective = 'old'

    locationOK = true

    location = {
        local local1 = fun227(Me);

        if (local1 == obj286___Damp_Sand__South_o || local1 == obj454___Shallow_Water__Sou || local1 == obj464___Deep_Water__South_ || local1 == obj287___Damp_Sand__North_o || local1 == obj452___Shallow_Water__Nor || local1 == obj489___Deep_Water__North_) {
            return Me.location;
        } else {
            return nil;
        }
    }

    sdesc = "the old man"

    thedesc = "the old man"

    adesc = "the old man"

    prop167 = "He's really just a dark blob at the end of the pier.   You can't make out much of anything from down here.  "

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = { return obj305_the_old_man.prop808; }

    prop807 = { return obj305_the_old_man.prop807; }
;

class class676: class33, class42
    adjective = 'old' 'man\'s'

    location = obj305_the_old_man

    prop293 = nil

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop1012 = "The iron creases fold into a small frown.   \"Sorry, youngster, can't spare that.\"  "

    prop807 = "He shrugs his cast iron shoulders.  \"Not much to say about it, youngster.\"  "

    prop131 = nil

    prop654 = [obj36_inspect, obj249_smell, obj38_tell, obj37, obj337_listen_to, obj101_look_in]

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (self.prop293) {
            if (find(self.prop654, arg2) == nil) {
                self.prop1017;
                exit;
            }
        } else {
            "You don't know of any such thing.  ";
            exit;
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = { self.dobjGen(arg1, arg2, arg3, arg4); }

    prop1017 = { "The old man spots you reaching for his <<self.sdesc>> and fires off a  smouldering glower that burns straight through the center of your forehead.  "; }
;

obj677_the_old_man: class59
    noun = 'ghost' 'man' 'george' 'fisherman'

    adjective = 'old'

    isHim = true

    sdesc = "the old man"

    thedesc = "the old man"

    adesc = "the old man"

    prop167 = "The old man has gone home for the evening.  "

    prop328 = obj305_the_old_man

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = { return obj305_the_old_man.prop808; }

    prop807 = { return obj305_the_old_man.prop807; }
;

obj678_burlap_sack: class74, class676
    noun = 'bag' 'sack'

    adjective = 'heavy' 'brown' 'old' 'burlap' 'man\'s'

    location = obj305_the_old_man

    sdesc = "burlap sack"

    prop167 = { "It's a heavy, brown, burlap sack.  "; }

    prop1012 = "He glances askew at the sack, as if reassuring himself of its presence.   \"Sorry, youngster, I'll be needing it to haul my catch.\"  "

    prop807 = "He nudges the sack with one heavy-toed boot.   \"I use it to haul my catch home.\"  "

    verDoAction26_look_in(arg1) = {
        if (obj673_pail.location != nil) {
            "It seems to be empty.  ";
        } else {
            "It seems to be full of fish.  ";
        }
    }

    prop181 = 0

    ioAction13_in(arg1, arg2) = { "The old man spots you trying to slip <<arg2.thedesc>> into his <<self.sdesc>>.   The withering glance he shoots you convince you to give up trying.  "; }
;

obj679_clothes: class676
    noun = 'pants' 'boots' 'shirt'

    prop509 = true

    location = obj305_the_old_man

    sdesc = "clothes"

    thedesc = "the old man's clothes"

    adesc = { return self.thedesc; }

    prop167 = { "The old man bears his clothes like a uniform, representing the lifetime of  discipline and service he has spent battling the sea.  "; }

    prop1012 = "He glances down at himself.   \"Don't think 'Relda would like that.  Nope, not a bit.\"  "
;

obj680_fishing_rod: class676
    noun = 'rod'

    adjective = 'fishing'

    location = obj305_the_old_man

    sdesc = "fishing rod"

    prop167 = { "It's a monster of a rod, at least as long as you are tall, with a heavy black  grip and a reel bigger than your fist.  "; }

    prop1012 = "He grips the rod, if possible, even more tightly.   \"Can't be givin' up my livelihood.\"  "

    prop807 = "He beams uncharacteristically.   \"'Relda and the kids picked it out for my birthday.\"  "
;

obj681_reel: class676
    noun = 'reel'

    adjective = 'fishing'

    location = obj305_the_old_man

    sdesc = "reel"

    prop167 = "It's a heavy looking black cylinder from which the fishing line originates.  "

    prop1012 = { return obj680_fishing_rod.prop1012; }

    prop807 = { return obj680_fishing_rod.prop807; }
;

obj682_line: class676
    noun = 'cord' 'line'

    adjective = 'fishing'

    location = obj305_the_old_man

    sdesc = "line"

    prop167 = "It looks like 40lb test.  "

    prop1012 = "He twangs the active line to check for tautness.   \"Sorry youngster, can't spare any line today.\"  "
;

obj683_tackle_box: class74, class676
    noun = 'lures' 'box' 'weights' 'bobs'

    adjective = 'tackle' 'fishing' 'bait'

    location = obj305_the_old_man

    sdesc = "tackle box"

    prop167 = { "The tackle box is a grown-up's toychest full of colorful lures, shiny bobs,  and dull metal weights.  "; }

    prop1012 = "He glances at the box as if reassuring himself of its presence.   \"Sorry youngster, can't spare any of my equipment.\"  "

    prop807 = "He glances at the box and beams uncharacteristically.   \"My grandkids got it for me last Christmas.\"  "

    verDoAction26_look_in(arg1) = {
        if (obj673_pail.location != nil) {
            self.prop167;
        } else {
            "It's closed.  ";
        }
    }

    prop181 = 0

    ioAction13_in(arg1, arg2) = { "The old man spots you trying to slip <<arg2.thedesc>> into his <<self.sdesc>>.   The withering glance he shoots you convince you to give up trying.  "; }
;

obj684_fish: class676
    noun = 'flounders' 'flounder' 'herrings' 'herring' 'grouper' 'fish'

    adjective = 'red'

    prop509 = true

    location = obj673_pail

    sdesc = "fish"

    prop167 = "A couple of flounder and some grouper, but mostly a bunch of red herring.  "

    prop1012 = "A hint of a smile graces the carven jaw.  \"Nope, don't think 'Relda  would care for that.\"  "

    prop807 = "He glances down at the fish in the pail.   \"That's today's catch.  'Relda'll cook 'em up nice.\"  "
;

class class685: class42
    prop1020 = true
;

obj686_paste: class42
    noun = 'paste'

    prop654 = [obj36_inspect, obj332_taste, obj249_smell, obj38_tell, obj37]

    dobjGen(arg1, arg2, arg3, arg4) = {
        if (find(self.prop654, arg2) == nil) {
            "It's just a thin layer of paste.  You can't do anything with it.  ";
            exit;
        }
    }

    iobjGen(arg1, arg2, arg3, arg4) = { self.dobjGen(arg1, arg2, arg3, arg4); }

    prop167 = "It's a thin, almost invisible layer of paste that used to be a shrimp.  "

    sdesc = "paste"

    prop524 = "You get down on your hands and knees and lick the thin layer of paste.  Yum.  "

    prop521 = "It smells like raw shrimp.  "

    location = nil

    prop525 = "Eww, it feels all squishy.  "
;

obj687_people: class529_topic_topics
    noun = 'child' 'woman' 'boy' 'children' 'joggers' 'people' 'couple' 'strollers' 'girl'

    adjective = 'young' 'elderly' 'person'

    prop891 = true

    sdesc = "people"

    prop1017 = {
        local local1 = fun227(Me);

        if (obj222_the_vendor.location == local1) {
            "Currently the pavilion is empty, but for the vendor.  ";
        } else if (obj305_the_old_man.location == local1) {
            "Currently there's no one here at the end of the pier but the old man.  ";
        } else if (obj688_dinghy.location == local1) {
            "Currently there's no one here but the two approaching brigands.  ";
        } else if (isclass(local1, obj216)) {
            "No one is in the water with you.  ";
        } else {
            "Though there are a few people strolling the area, no one is in the  immediate vicinity just now.  ";
        }
    }

    prop808 = { "The vendor's jaw sets in a satisfied sort of way.   \"A lot of nice people here in Savannah.  A lot of nice people.  You know, it really is the people that make a place worth living in.  \"  "; }

    prop807 = { "The old man's creases fold into a wistful sort of expression.   \"Can't help you there youngster.  Seems most of the people I know are singin'  with the angels now.  'Spect I'll be joinin' 'em soon enough.\"  "; }

    prop505 = [obj222_the_vendor, obj305_the_old_man]
;

obj688_dinghy: class63
    noun = 'dinghy' 'boat'

    adjective = 'row' 'wooden' 'wood'

    prop681 = true

    sdesc = "dinghy"

    prop167 = "It's a rough wooden row boat.  "

    location = nil
;

obj689_job: class529_topic_topics
    noun = 'job' 'jobs'

    sdesc = "job"

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = { return obj222_the_vendor.prop808; }

    prop807 = "The corners of his mouth creak upwards in a tiny smile.   \"Catching fish's what I do.  All I ever done.  All I ever wanted to do.\"  "
;

obj690_New_York: class529_topic_topics
    noun = 'york'

    adjective = 'new'

    sdesc = "New York"

    thedesc = { return self.sdesc; }

    adesc = { return self.sdesc; }

    prop891 = true

    prop808 = { "\"What about it?  I'm sick of the place.\"  "; }
;

obj691_Savannah: class529_topic_topics
    noun = 'savannah'

    sdesc = "Savannah"

    thedesc = { return self.sdesc; }

    adesc = { return self.sdesc; }

    prop891 = true

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = {
        "\"Beautiful city, isn't it?  Been here long?\"  ";
        fun226(['"So you know what I\'m talking about."  ', '"Well, you should stick around for awhile."  ', '"What, you don\'t want to tell me?"  ']);
    }

    prop807 = "\"The most beautiful dame I know.  After 'Relda, that is.\"  "
;

obj692_Esmerelda: class529_topic_topics
    noun = 'relda' '\'relda' 'esmerelda' 'wife'

    prop891 = true

    sdesc = "Esmerelda"

    thedesc = { return self.sdesc; }

    adesc = { return self.sdesc; }

    prop505 = [obj305_the_old_man]

    prop807 = { "He gazes wryly out to sea.  \"My one true lady love.  After the sea, that is.   Couldn't live without either of 'em.\"  "; }
;

obj693_kids: class529_topic_topics
    noun = 'grandkids' 'kids'

    adjective = 'grand'

    prop891 = true

    sdesc = "kids"

    thedesc = { return self.sdesc; }

    adesc = { return self.sdesc; }

    prop505 = [obj305_the_old_man]

    prop807 = { "The creases of his mouth fold into a stony smile.   \"My pride and joy.  They're the best thing I ever done.\"  "; }
;

obj694_ghosts: class529_topic_topics
    noun = 'ghosts'

    prop891 = true

    sdesc = "ghosts"

    thedesc = { return self.sdesc; }

    adesc = { return self.sdesc; }

    prop505 = [obj222_the_vendor, obj305_the_old_man]

    prop808 = "The vendor puts on a knowing expression.  \"Oh yeah, Savannah's full of  ghosts.  Personally, I don't believe in 'em, but they don't seem to care whether you  believe or not.  Most of them like to congregate in the Bonaventure Cemetary,  but you can also find them here and there around town.\"  "

    prop807 = { "The creases of his face fold down into a stony grimace.   \"Aye.  Ghosts all up and down these coasts.  Drowned at sea, a lot of 'em.   Plenty of pirate victims too, if you're to believe the old talk.  Also plenty of  dead and forgotten lovers.  Disrespectful to speak of them though, youngster.\"  "; }
;

fun695: function(arg1) {
    "\bYou can hear new sounds coming from around the bend.   The protesting creak of old wood is accompanied by soft, irregular splashes, and punctuated by the base tones of a grumbled conversation.  ";
    obj702_voices.moveInto(obj381___Grotto__);
    obj702_voices.prop891 = true;
    obj306_scruffy_looking_indi.prop1025 = '1';
    setfuse(&fun696, 2, Me);
    obj20.prop484 = ['nervous', 'nervous'];
}

fun696: function(arg1) {
    "\bA boat rows into sight from around the bend.  It's a small, wooden dinghy, rowed by two scruffy looking individuals.  With your vision blurred, you can't tell much more about them from here.  You can hear small snippets of their grumbled conversation, but not enough to make sense of it.  ";
    obj688_dinghy.moveInto(obj381___Grotto__);
    obj306_scruffy_looking_indi.prop1025 = '2';
    setfuse(&fun697, 1, Me);
    obj20.prop484 = ['alarmed'];
}

fun697: function(arg1) {
    "\bThe wooden dinghy scrapes up onto the thin shore, and the two men slowly clamber out.  Though they're quite close, their conversation is still garbled.  Their voices are deep and slurred, with a grating timbre that sends a chill crawling across your aching scalp.  They seem to be discussing the previous night's debaucheries. \n\t The heavier of the pair rubs a meaty hand through his matted hair and says,  \"Gar, oy still don't see why \(oy\) have to come collect t' new  recruit.  T'ain't enough I been t' cudgel man?\" \n\t \"Oh, shut yer stinkin' hole, McGintie.  I be just as smashed as you.   Cab'in says do, ye do.  Unless ye want yer throat cut here to ear.\"   The second speaker draws one hand across his throat in a quick  slashing motion.   ";
    obj306_scruffy_looking_indi.moveInto(obj381___Grotto__);
    obj306_scruffy_looking_indi.prop1025 = '3';
    setfuse(&fun698, 1, Me);
    obj20.prop484 = ['frightened'];
}

fun698: function(arg1) {
    "\bThe foul reek of boozy breath chokes you as the pair scuffle your  way.  They're close enough now that you can make them out in better detail.  It's ludicrous, but they seem to be dressed as... pirates.  Though groggy and filled with fear, you're struck by the sheer lunacy of the situation. It nevertheless seems frighteningly real when the pair come to stand over you and look down with vile, appraising eyes. \n\t \"Gar, it's awake, it is.  Feisty one, this,\" says the heavier man. \n\t The slender man nods agreement.   \"Aye, and let's get it back quick, 'fore my noggin explodes.\" ";
    obj306_scruffy_looking_indi.prop1025 = '4';
    setfuse(&fun699, 1, Me);
    obj20.prop484 = ['terrified'];
}

fun699: function(arg1) {
    local local1;

    "\bThe second speaker grabs you by the hair and starts dragging you over the rough ground towards the dinghy.  The cloud of alcoholic fumes surrounding the brigands brings a gorge to your throat.  You sputter and choke and fight to breathe, but the rope still binds your arms tightly behind you, restricting the passage of air to your lungs.  Just when you've decided you must vomit or die, your abductors heave you up, over the lip of the dinghy, and in.  You fall... \b ... and wake, back on the beach, coughing up sand as someone pounds forcefully on your back.  After a moment, your fit subsides and your throat seems to be clear, though your mouth is still full of grit. \n\t The pounding stops, and a kindly male voice speaks.  \"You alright?   Can you breathe?\" \b You look around to find the elderly couple you've seen strolling the beach, looking down at you concernedly. \n\t \"We heard you shout,\" says the woman.  Seeing the look of confusion on your face, she says \"When the sand fell in on you.\" \n\t \"We pulled you out,\" says the man.  \"What were you doing, digging so deeply, anyway?\" \n\t \"Oh, it doesn't matter,\" says she.  \"What's important is that you're all right.\"  She looks into your eyes for any sign of lasting damage.  \"You are all right, my dear?\" \n\t You nod your head, yes.  \"Thank you.\"  The words burn in your throat, but your breath is returning to normal. \n\t \"Would you like us to help you home, or call anyone for you?\" \n\t You shake your head in the negative.  \"Thanks, I'll be fine.\" \n\t \"Well, all right, dear.  But do try to be more careful!\"  And with that, the elderly couple strolls away to the east, throwing an occasional concerned glance back your way. \b Thank goodness, all the pain and grogginess you felt lying in the grotto  has disappeared as if it never was.  Nevertheless, all the digging and  the subsequent near burial has left you winded.   You rest for a moment, taking stock of... what?  Was it a vision?  Past life experience?  Suddenly, the word 'shanghaied' pops into your head.  You're reminded of your visit to Savannah's famed Pirate House.  According to city history, honest-to-goodness pirates frequented  the place in the buccaneering days of Savannah's past, largely for  convenient access to the caves beneath the tavern.  These underground  caverns connected the Pirate House to nearby River Street.  The  brigands frequently took advantage of these caverns in order to  discreetly carry drunken 'new recruits' out to their ships.  The hapless  abductees would later wake to find themselves miles from shore, with  no recourse but to join the ship's crew. \b Of course, that still doesn't begin to explain your strange experience.   It's reminded you that the true \"treasures\" are life and freedom. But suddenly, you recall frighteningly similar nightmares where you were  locked into eternal servitude by your slavish job.  The realization jolts you  back to your ongoing internal debate.   ";
    fun12(Me);
    obj346.prop1032;
    obj700_coarse_rope.moveInto(nil);
    Me.prop976 = true;
    obj306_scruffy_looking_indi.prop1025 = nil;
    Me.moveInto(obj437___Under_Pavilion__);
    if (fun4(obj437___Under_Pavilion__.contents)) {
        local1 = obj20.prop1033;
        if (local1) {
            obj20.prop1033 = nil;
        }
        "\b";
        obj437___Under_Pavilion__.prop151(nil);
        if (local1) {
            obj20.prop1033 = true;
        }
    }
    if (obj426_shrimp.prop179(Me)) {
        notify(obj426_shrimp, &prop901, 0);
    }
    if (obj436_conch_shell.prop179(Me)) {
        notify(obj436_conch_shell, &prop901, 0);
    }
    obj20.prop484 = ['befuddled', 'befuddled', 'confused', 'confused'];
}

obj700_coarse_rope: class33
    noun = 'rope'

    adjective = 'thick' 'coarse'

    prop681 = true

    location = nil

    sdesc = "coarse rope"

    prop167 = "It passes around your arms and chest, binding you tightly.  It's too  close for you to focus on it clearly, but you can feel its coarse weave  against your skin.  "

    prop525 = "You can feel its coarse weave against your skin.  "
;

obj701_grotto: class33
    noun = 'shore' 'walls' 'stone' 'ceiling' 'puddles' 'cave' 'grotto' 'cove'

    prop681 = true

    location = obj381___Grotto__

    sdesc = "grotto"

    prop167 = {
        "You let your eyes wander around the room, but it's difficult to  focus on any specific details with your blurred vision.  ";
        obj381___Grotto__.prop167;
    }

    prop521 = { return obj381___Grotto__.prop521; }

    prop527 = { return obj381___Grotto__.prop527; }
;

obj702_voices: class529_topic_topics
    noun = 'voice' 'sound' 'voices' 'conversation' 'sounds'

    prop681 = true

    prop509 = true

    location = nil

    sdesc = "voices"

    prop167 = "You can hear a grumbled conversation.  "

    prop1017 = "They're just voices, not something tangible.  "

    verDoAction115_listen_to(arg1) = { }

    doAction115_listen_to(arg1) = { obj381___Grotto__.prop527; }
;

obj703_oar_paddles_paddle_o: class63
    noun = 'oar' 'paddles' 'paddle' 'oars'

    adjective = 'wooden' 'wood'

    prop681 = true

    prop509 = true

    location = obj688_dinghy

    prop167 = {
        if (obj306_scruffy_looking_indi.location == obj688_dinghy) {
            "You can't see anything unusual about them from here.  ";
        } else {
            "They're stowed away in the dinghy.  ";
        }
    }
;

obj704: class170
    verb = 'instructions'

    action(arg1) = {
        self.prop1034(arg1);
        abort;
    }

    prop1034(arg1) = {
        local local1;

        "The instructions are long.  If you want to capture this information to a file (so that you can print it out, for example), answer NO below, then use the SCRIPT command (just type SCRIPT, then answer the question asking you for a filename), then enter the INSTRUCTIONS command again. ";
      label471319:
        "\bDo you want to see the instructions now? (Y is affirmative) >";
        local1 = yorn();
        if (local1 == 1) {
        } else if (local1 == 0) {
            return;
        }
        goto label471319;
        "\b\b HOW TO PLAY \b In an adventure game, you play by typing commands that describe what you want to do.  Unfortunately, the game isn't as smart as you are, so it can't understand nearly as many sentences as a person could.  In this section, we'll describe most of the types of commands that you will need to use while playing the game. \b Note that we've tried to design this game so that you won't need to think of any unusual words or phrases that aren't directly mentioned by the game.  We've especially tried to avoid making you guess a strange verb or an unusal way of phrasing a commands. \b Each time you see the prompt, >, you type a command.  Your command should be a simple imperative sentence, or a series of imperatives separated by periods.  Press the RETURN (or ENTER) key when you are done typing your command; the game doesn't start interpreting the command until you press RETURN. \b You can use capital or small letters in any mixture.  You can use words such as THE and AN when they're appropriate, but you can omit them if you prefer. You can abbreviate any word to six or more letters, but the game will pay attention to all of the letters you type.  For example, you could refer to a FLASHLIGHT with the words FLASHL, FLASHLIG, and so forth, but not with FLASHSDF. \b\b THE ENVIRONMENT \b The beach environment of \(Sunset Over Savannah\) was designed to be  as realistic and permissive as possible, given the limits of game size and speed.   While you're on the beach, feel free to go swimming, or build a sand castle, or  dig for buried treasure, or dive off the pier, or do anything else you can think of. \b\b TRAVEL \b At any time during the game, you are in a location.  The game describes your location when you first enter, and again any time you type LOOK.  In a given location, you can reach anything described, so you don't need to type commands to move about within a location. \b You move from place to place in the game by typing the direction you want to go.  The game will always tell you the directions that you can go from a location, although it usually doesn't tell you what you will find when you go there.  You will probably find it helpful to make a map as you explore the game.  The directions the game recognizes are NORTH, SOUTH, EAST, WEST, NORTHEAST, SOUTHEAST, UP, and DOWN.  You can abbreviate these to N, S, E, W, NE, SE, NW, SW, U, and D.  In some locations you can also use IN and OUT.  When in the water,  you can also type the word SWIM (i.e. SWIM EAST ) before most of these  directions, though use of SWIM is optional. \b Generally, backtracking will take you back to where you started.  For example, if you start off in the pavilion, go east onto the pier, then go west, you will be back in the pavilion. \b\b OBSTACLES, BOUNDARIES, AND FULL HANDS \b Sometimes when you try to travel, you'll find your way obstructed by obstacles  or locked doors, or be informed that you can't proceed while carrying certain  items, or find yourself turned back the way you came.   \b The first two instances usually indicate a puzzle to be solved.  The beach  environment in \(Sunset Over Savannah\) was designed to be fairly realistic,  so it tries to behave as logically as it can.  For example, you can't climb or  swim with your hands full, or hold your breath indefinitely, or submerge while  carrying a very buoyant item, etc.   \b When you find yourself turned back the way you came, it usually means that  you've attempted to leave the confines of the game.  While \(Sunset Over  Savannah\) does try to behave like a real beach, it only encompasses a small  geographic area.   \b\b OBJECTS \b In the game, you will find many objects that you can carry or otherwise manipulate.  When you want to do something with an object, type a simple command that tells the game what you want to do; be explicit.  For example, you could type READ THE PLAQUE or OPEN THE BOILER.  Most of the objects  in the game have fairly obvious uses; you shouldn't have to think of any  obscure or unrelated words to manipulate the objects. \b You generally don't have to specify exactly where you want to put an object that you wish to carry; you can just type TAKE (followed by the object's name) to carry an object.  We didn't think it was particularly interesting to force you to specify which object you wish to put in your left pocket, which you wish to carry in your right hand, and so forth.  However, there is a limit to how many objects you can carry at once, and to how much weight you can handle.  You can carry more objects (but not more weight, of course) by putting some items inside containers (for example, you may be able to put several objects into a box, and carry the box), since this reduces the number of objects you actually have to juggle at once.   \b Some basic verbs that you will use frequently are TAKE (to pick up an object), DROP (to drop an object), OPEN and CLOSE, and EXAMINE (which you can abbreviate to X).  You can PUT an object IN, ON, UNDER, or BEHIND another object when appropriate.  The game recognizes many other verbs as well.  We tried to make all of the verbs obvious; if you find a knob, you will be able to TURN it, and if you find a button, you will be able to PUSH it.  By the same token, you probably won't need to turn the button or push the knob. \b Some examples of commands that the game recognizes are shown below.  These aren't necessarily commands that you'll ever type while playing, but they illustrate some of the verbs and sentence formats that you may use. \b \n\t	GO NORTH \n\t	NORTH \n\t	N \n\t	UP \n\t	TAKE THE SHRIMP \n\t	PUT THE SHRIMP INTO THE BOILER \n\t	CLOSE BOILER \n\t	LOOK AT BOILER \n\t	TAKE SHRIMP OUT OF BOILER \n\t	LOOK IN BOILER \n\t	WEAR THE PLASTIC GOGGLES \n\t	TAKE OFF GOGGLES \n\t	CLOSE BOILER \n\t	TURN ON THE BOILER \n\t	POUR WATER INTO BUCKET \n\t	FILL BOTTLE WITH WATER \n\t	FILL BOTTLE FROM OCEAN \n\t	PUT SAND INTO BOTTLE \n\t	FILL BOTTLE WITH SAND \n\t	FILL BOTTLE FROM BEACH \n\t	LOOK UNDER BIN \n\t	SEARCH BIN \n\t	TURN KNOB \n\t	EAT SHRIMP \n\t	DRINK WATER \n\t	THROW STAVE AT OLD MAN \n\t	HIT GULLS WITH BRICK \n\t	READ PLAQUE \n\t	LOOK THROUGH WINDOW \n\t	JUMP THROUGH WINDOW \n\t	THROW ROCK THROUGH WINDOW \n\t	STAND UP \n\t	UNLOCK DOOR WITH KEY \n\t	TIE THE ROPE TO MY WAIST \n\t	TIE ROPE TO RAILING \n\t	TAKE BOTTLE FROM BARREL \n\t	CLIMB UP THE RAFTERS \n\t	TURN THE KNOB \n\t	JUMP \n\t	JUMP OFF PIER \n\t	JUMP OVER RAILING \n\t	JUMP INTO WATER \n\t	GET IN THE BELL \n\t	GET OUT OF THE BELL \n\t	GET ON THE COUNTER \n\t	GIVE SHRIMP TO OLD MAN \n\t	ASK VENDOR ABOUT SNACKS \n\t	SHOW GOGGLES TO VENDOR \n\t	TELL VENDOR ABOUT HOTEL \n\t	PILE SAND AGAINST PAVILION \n\t	SIFT SAND WITH SIEVE \n\t	PRY LOCK WITH ROCK \n\t	 \n\t \b\b OTHER CHARACTERS \b You may encounter other characters in the game.  You can interact in certain ways with these characters.  For example, you can GIVE or SHOW things to them, and you could try to attack them.  In addition, you can ask and tell characters about things: \b \t	ASK VENDOR ABOUT PRETZELS\n \t	TELL VENDOR ABOUT OLD MAN \b You can also SAY things to characters, which gives you the freedom to  refer to abstract concepts, offer greetings, etc.  It's important that you  put any words you want to SAY in double quotes.  For example: \b \t	SAY \"HELLO\" TO VENDOR \t	SAY \"GOOD EVENING\" TO OLD MAN \b * TIP FOR BEGINNERS When you find the old man, try the following command.  It's not a very  obvious thing to do, but it's an old in-joke among experienced adventurers,  and in this game, it will get you an interesting response: \b \t	SAY \"HELLO, SAILOR\" TO OLD MAN \b You can also tell a character to do something.  To do this, type the character's name, then a comma, then a command that you want the character to perform.  You can type several commands for the character all on the same line by separating the commands with periods.  For example: \b \t	VENDOR, EMPTY BOILER. GIVE ME THE KEY. GO NORTH. \b Of course, you shouldn't expect that characters will always follow your instructions; most characters have minds of their own, and won't automatically do what you ask. \b\b TIME \b Time passes only in response to commands you type.  Nothing happens while the game is waiting for you to type something.  Each turn takes about the same amount of time.  If you want to let some game time pass, because you think something is about to happen, you can type WAIT (or just Z). \b Because time in Savannah is particularly fluid, you don't have to worry about  the sun setting before you're ready to go home.  All of the game's events occur  within a finite, but indeterminable amount of time, and you won't ever run out  of time before completing the game. \b\b SCORE \b While most games of this type assign you a numerical score as you progress,  \(Sunset Over Savannah\) tracks your emotional and physical state, instead.   Your center, or core state begins at 'conflicted', and permanent changes occur  as major puzzles are solved.  Certain lesser events can temporarily alter your  emotions for better or worse, but they'll always return to center within a few  turns.  There are no good or bad emotions - every experience is a part of the  game.  You can type SCORE at any time to see where you are in the game. If you'd like to check on the state of your physical well being, type EXAMINE MYSELF. \b\b REFERRING TO MULTIPLE OBJECTS \b You can usually use multiple objects in your sentences.  You separate the objects by the word AND or a comma.  For example: \b \n\t	TAKE THE SHRIMP, THE STAVE, AND THE ROPE \n\t	PUT SHRIMP AND WHITE STRAP IN BOTTLE \n\t	DROP BOTTLE AND CAN \b You can use the word ALL to refer to everything that is applicable to your command, and you can use EXCEPT (right after the word ALL) to exclude certain objects. \b \n\t	TAKE ALL \n\t	PUT ALL EXCEPT STAVE AND ROPE INTO BOTTLE \n\t	TAKE EVERYTHING OUT OF THE BOTTLE \n\t	TAKE ALL OFF COUNTER \b The word ALL refers to everything that makes sense for your command, excluding things inside containers that are used in the command.  For example, if you are carrying a bottle and a rope, and the bottle contains a shrimp, typing DROP ALL will drop only the bottle and the rope; the shrimp will remain in the bottle. \b\b PUTTING AND TAKING TIED OBJECTS \b Certain objects such as strings or ropes can be tied to other objects.  When you take  or drop an object that is tied to one or more objects, the attached object(s) will move  with it.  For instance: \b \n\t	TAKE STRING \n\t\tTaken, along with the stick and the can. \n\t	DROP STICK \n\t\tDropped, along with the can and the string. \b\b \"IT\" AND \"THEM\" \b You an use IT and THEM to refer to the last object or objects that you used in a command.  Some examples: \b \n\t	TAKE THE BOTTLE \n\t	OPEN IT \n\t	TAKE THE PARCHMENT AND THE CORK \n\t	PUT THEM ON THE COUNTER \b\b MULTIPLE COMMANDS ON A LINE \b You can put multiple commands on a single input line by separating the commands with periods or the word THEN, or with a comma or the word AND. Each command still counts as a separate turn.  For example: \b \n\t	TAKE THE SHRIMP AND PUT IT IN THE BOTTLE \n\t	TAKE BOTTLE. CLOSE IT. \n\t	UNLOCK THE DOOR WITH THE KEY. OPEN IT, AND THEN GO NORTH \b If the game doesn't understand one of the commands on the input line, it will tell you what it couldn't understand, and it will ignore the rest of the commands on the line. \b\b AMBIGUOUS COMMANDS \b If you type a command that leaves out some important information, the game will try to figure out what you mean anyway.  When the game can be reasonably sure about what you mean, because only one object would make sense with the command, the game will make an assumption about the missing information and act as though you had supplied it.  For example, \b \n\t	>TIE THE ROPE \n\t	(to the railing) \n\t	The rope is now tied to the railing.  The end of the \n\t	rope nearly reaches the floor of the beach below. \b If your command is ambiguous enough that the game doesn't feel safe making assumptions about what you meant, the game will ask you for more information. You can answer these questions by typing the missing information.  If you decide you didn't want to bother with the command after all, you can just type a new command; the game will ignore the question it asked.  For example: \b \n\t	>UNLOCK THE DOOR \n\t	With what? \b	 \n\t	>THE KEY \n\t	Which key do you mean, the steel key, or the brass key? \b	 \n\t	>STEEL \n\t	The door is now unlocked. \b\b UNKNOWN WORDS \b The game will sometimes use words in its descriptions that it doesn't understand in your commands.  For example, you may see a description such as, \"The planet's rings are visible as a thin arc high overhead, glimmering in the sunlight.\" If the game doesn't know words such as \"rings,\" you can assume that they're not needed to play the game; they're in the descriptions simply to make the story more interesting. For those objects that are important, the game recognizes many synonyms; if the game doesn't understand a word you use, or any of its common synonyms, you are probably trying something that is not necessary to continue the game.   \b\b SAVING AND RESTORING \b You can store a snapshot of the game's state in a disk file at any time. Later, if you want to go back to a point you were at earlier in the game, you can simply restore the position from the snapshot in the disk file. You can save your position as many times as you like, using different disk files for each position.  Saving the game also allows you to play the game over the course of many days, without having to start over from scratch each time you come back to the game. \b To save the game, type SAVE at any prompt.  The game will ask you for the name of a disk file to use to store the game state.  (You will have to specify a filename suitable for your computer system, and the disk must have enough space to store the game state.  The game will tell you if the game was not saved properly for some reason.)  You should give the file a name that does not exist on your disk.  If you save the game into a file that already exists, the data previously in that file will be destroyed. \b When you wish to restore a game, type RESTORE at the command prompt.  The game will ask you for the name of a disk file that you specified with a previous SAVE command.  After reading the disk file, the game state will be restored to exactly the position when you saved it. \b\b SPECIAL COMMANDS \b The game understands several special commands that you can use to control the game.  You can use these commands at any prompt. \b AGAIN or G:  Repeats your last command.  If your last input line was composed of several commands, only the last command on the line is repeated. \b CREDITS:  Displays a list of people who assisted in creation of the game. \b EXAMINE MYSELF:  Shows you any cuts or bruises you may have accumulated. \b EXITS: Displays a brief list of all exits available from the \(current\) location. \b EXITS ON: Displays a brief list of all available exits whenever \(any\) room  description is displayed.   \b EXITS OFF: Turns off exit descriptions. \b INSTRUCTIONS: Displays the list of instructions you are currently viewing. \b INVENTORY or I:  Shows the list of items you are carrying. \b LOOK or L:  Shows the full description of your location. \b OOPS:  Allows you to correct the spelling of a word in the last command. You can use OOPS when the game displays this complaint:  \"I don't know the word <word>.\"  Immediately after this message, you can type OOPS followed by the corrected spelling of the misspelled word.  You can only type one word after OOPS, so this command doesn't allow you to correct certain types of errors, such as when you run two words together without a spce. \b PHILOSOPHY:  Explains the author's thoughts on game design. \b QUIT:  Stops the game, and returns you to your operating system. \b REGISTER:  Explains how you can help the author if you like this game. \b RESTART:  Starts the game over from the beginning. \b RESTORE:  Restores a position previously saved with the SAVE command. \b SAVE:  Stores the current state of the game in a disk file, so that you can come back to the same place later (with the RESTORE command). \b SCORE:  Shows you your current emotional state and lists the milestones you've passed. \b SCRIPT:  Starts writing everything you see on the screen (your commands and the game's responses) to a disk file.  The game will ask you for a filename to be used for the transcript; you should select a filename that does not yet exist on your disk, because if you use an existing filename, data in the file will be destroyed.  Use the UNSCRIPT command to stop making the transcript. \b TERSE:  Tells the game that you wish to see only short descriptions of locations you have already seen when you enter them.  This is the default mode.  See also the VERBOSE command. \b UNDO:  Take back the last command.  This can be used multiple times to take back a series of commands in sequence.  The number of commands that you can undo at any given time varies, but you can generally undo over a hundred commands.   \b UNSCRIPT:  Turns off the transcript being made with the SCRIPT command. \b VERBOSE:  Tells the game to show you the full description of every location you enter, whether or not you have seen the description before.  By default, the game will show you the full description of a location only when you first enter it, and will show you the short description each time you enter the location thereafter.  Of course, you can get a full description at any time by typing LOOK.  See also the TERSE command. \b VERSION:  Shows you the current version of the game. \b WAIT or Z:  Causes game time to pass.  When the game is waiting for you to type command, no game time passes; you can use this command to wait for something to happen. \b\b COMMAND EDITING AND RECALL \b On most computer systems, the game has a special feature that allows you to use your keyboard's editing keys to modify an input line as you are typing it, and to recall commands that you have previously typed for editing and re-entry.  The specific keys you use vary depending on your system, and some systems don't support this feature at all; see the system-specific documentation for more information. \b While you are typing a command, the game allows you to go back and change part of the line without backspacing over the rest of the line to get there. Simply use your left and right cursor-arrow keys to move the cursor to any point in the command line.  The BACKSPACE key deletes a character to the left of the cursor, and the DELETE key deletes the character at which the cursor is located. \b You can insert new text at the cursor simply by typing the text.  You can press the RETURN (or ENTER) key with the cursor at any point in the line (the cursor need not be at the end of the command line). \b You can recall the previous command that you  entered by pressing the up cursor-arrow key; pressing the up-arrow key again recalls the command before that, and so forth.  Using the down cursor-arrow key reverses this process, until you get back to the original command that you were typing before you started pressing the up-arrow key. \b Once you have recalled a prior command, you can re-enter it by pressing the RETURN key.  In addition, you can edit the command, as described above, before entering the command. \b The exact number of commands the game retains depends on the lengths of the commands, but more than a hundred of the most recent commands are generally retained at any given time. \b\b REVIEW MODE \b Another special feature that the game supports on many computer systems is called \"review mode.\"  The game remembers text as it \"scrolls\" off the screen; by invoking recall mode, you can go back and look at text that is no longer visible on the screen.  On most systems, review mode is activated by pressing the function key F1. \b Once in review mode, the status line that is normally at the top of the screen will be replaced by the review mode help line.  This line shows the keystrokes you use to view previous screenfuls of text, and also shows you the key that exits review mode and resumes normal game play (this is generally the game key that you used to activate review mode). \b While in review mode, your screen becomes a window onto the text that the game has stored away.  When you first activate review mode, you are looking at the very bottom of this text, which is the screenful of text that was just displayed.  Use the up and down cursor-arrow keys to move the window up and down.  Pressing the up cursor-arrow key moves the window up one line, showing you one line of text that has scrolled off the screen.  Most systems also provide keys to move up and down by a full screenful (also called a \"page.\") \b To resume game play, press the same key that you used to activate review mode. \b The number of screenfuls of text that the game stores away for review depends on how much text is actually on each screen, since the game has a limit on the number of characters it can store, not on the number of lines.  Normally, more than twenty of the most recent screens of text are saved and available for review at any given time. ";
    }
;

obj705: class170
    verb = 'hints' 'help' 'hint'

    action(arg1) = {
        self.prop1036(arg1);
        abort;
    }

    prop1037 = {
        local local1, local2, local3;

        local3 = obj706_Hints.prop488;
        local2 = length(local3);
        clearscreen();
        local1 = 1;
      label492887:
        if (local1 <= local2) {
            if (local1 == local2) {
                "------------------------------\n";
            }
            say(local1);
            ") ";
            local3[local1].sdesc;
            "\n";
            ++local1;
            goto label492887;
        }
        "\b";
    }

    prop1036(arg1) = {
        local local1, local2, local3, local4, local5, local6, local7, local8, local9;

        local1 = obj706_Hints.prop488;
        local2 = length(local1);
        self.prop1037;
      label493024:
        if (1) {
            if (!local6) {
                "\nEnter a number from 1 to ";
                say(local2);
                ", or (E)xit: >";
            } else {
                "\nEnter a number from 1 to ";
                say(local2);
                ", or (E)xit: >";
            }
            local6 = true;
            local5 = lower(input());
            if (local5 == 'e' || local5 == 'exit') {
                clearscreen();
                Me.location.lookAround(true);
                abort;
            }
            local5 = cvtnum(local5);
            if (local5 < 1 || local5 > local2) {
                goto label493024;
            }
            clearscreen();
            "\(";
            local1[local5].sdesc;
            "\)";
          label493275:
            if (1) {
                local7 = length(local1[local5].prop488);
                if (local8 == -1) {
                    local8 = nil;
                } else if (local8 == nil) {
                    local8 = 1;
                }
                "\b";
                say(local8);
                "/";
                say(local7);
                ": ";
                say(local1[local5].prop488[local8]);
                "\b";
              label493394:
                if (1) {
                    if (!local6) {
                        if (local8 < local7) {
                            "\nType (N)ext, or (E)xit: >";
                        } else {
                            "\nNo more hints!  Type (E)xit: >";
                        }
                    } else if (local8 < local7) {
                        "\nType (N)ext, or (E)xit: >";
                    } else {
                        "\nNo more hints!  Type (E)xit: >";
                    }
                    local6 = true;
                    local9 = lower(input());
                    if (local8 < local7) {
                        if (local9 == 'n' || local9 == 'next') {
                            ++local8;
                            goto label493672;
                        }
                    }
                    if (local9 == 'e' || local9 == 'exit') {
                        self.prop1037;
                        local8 = -1;
                    } else {
                        goto label493394;
                    }
                }
              label493672:
                goto label493275;
            }
            goto label493024;
        }
    }
;

obj706_Hints: class708
    sdesc = "Hints"

    prop488 = [obj727_Getting_the_key_from, obj726_Getting_the_key_from, obj725_Getting_the_sieve, obj724_Getting_the_key_from, obj723_Getting_the_shiny_ob, obj722_Getting_a_glass_mite, obj721_Getting_a_mite_to_th, obj720_Getting_down_deep, obj719_Getting_better_eyewe, obj718_Getting_the_conch, obj717_Getting_the_crab_out, obj716_Getting_the_boiler_o, obj715_Getting_the_boiler_f, obj714_Getting_the_stave, obj713_Getting_on_the_enclo, obj712_Getting_the_maintena, obj711_Getting_treasure, obj710_Getting_a_shovel, obj709_What_are_my_goals_]
;

class class707: class40
;

class class708: class40
;

obj709_What_are_my_goals_: class707
    sdesc = "What are my goals?"

    prop1038 = 0

    prop488 = ['Building a fairy castle.  ', 'Rising to new heights.  ', 'Digging for buried treasure.  ', 'Finding beauty in unexpected places.  ', 'Joining the dance.  ', 'Setting magic awing.']
;

obj710_Getting_a_shovel: class707
    sdesc = "Getting a shovel"

    prop1038 = 0

    prop488 = ['Stop reading now if you haven\'t tried to climb up to the pavilion\'s canopy.', 'No shovel is available, but perhaps you could use something spade-like.', 'Like the spade-shaped shingles on the canopy.', 'One of them seems to be loose.', 'If only you had something with which to pry it.', 'But you can\'t carry anything while climbing to the canopy, either.', 'TIE ROPE TO CROWBAR and TIE ROPE TO ME, then PRY SHINGLE WITH CROWBAR.']
;

obj711_Getting_treasure: class707
    sdesc = "Getting treasure"

    prop1038 = 0

    prop488 = ['If you have the map, it will tell you in which direction the "treasure" lies.', 'Once you\'ve been told "It\'s right underfoot," start digging!', 'Looks like you need something better than your hands with which to dig.', '(See "Getting a shovel" if you haven\'t got one already.)', 'DIG WITH SHINGLE and then repeat four times.']
;

obj712_Getting_the_maintena: class707
    sdesc = "Getting the maintenance hatch open"

    prop1038 = 0

    prop488 = ['You can\'t open it from the rafters, so you\'ll have to open it while standing on the enclosure.', 'If only you had something long with which to push it open.', 'Even if you did, you can\'t carry anything while climbing up the benches.', 'However, you can tie things to yourself with the rope.', 'TIE ROPE TO STAVE and TIE ROPE TO ME, CLIMB BENCHES, OPEN HATCH WITH STAVE.']
;

obj713_Getting_on_the_enclo: class707
    sdesc = "Getting on the enclosure"

    prop1038 = 0

    prop488 = ['You can\'t reach the top without aid.  If only you had something to climb.', 'Hmm, those benches over there might be of help.', 'Perhaps you can move them over here.', 'PUSH BENCHES SOUTH.', 'Now if you could just get them stacked up.', 'STACK BENCHES.']
;

obj714_Getting_the_stave: class707
    sdesc = "Getting the stave"

    prop1038 = 0

    prop488 = ['Hmm, the third hoop on that trash barrel is loose.', 'If only you had something to pry it off with.', 'PRY THIRD HOOP WITH CROWBAR.']
;

obj715_Getting_the_boiler_f: class707
    sdesc = "Getting the boiler filled"

    prop1038 = 0

    prop488 = ['Using a bottle or can would take forever.  If only you had something larger.', 'By the time you\'ve caught the crab, the old man will be ready to go home.  Check his area for anything left behind.', 'FILL PAIL WITH WATER, then POUR PAIL INTO BOILER.']
;

obj716_Getting_the_boiler_o: class707
    sdesc = "Getting the boiler open"

    prop1038 = 0

    prop488 = ['Drat, but that clamp\'s on tight!  If only you had something to pry it off with.', 'PRY CLAMP WITH CROWBAR.']
;

obj717_Getting_the_crab_out: class707
    sdesc = "Getting the crab out of the conch"

    prop1038 = 0

    prop488 = ['How are crabs (and lobsters) usually prepared?', 'Besides with butter and lemon sauce, that is.', 'Usually, they\'re boiled.', 'With the boiler full and at full boil, PUT CRAB IN BOILER.']
;

obj718_Getting_the_conch: class707
    sdesc = "Getting the conch"

    prop1038 = 0

    prop488 = ['Presumably, you\'ve tried picking it up.', 'Hmm, perhaps if you had some way of luring the crab out of the fissure.', 'It might be interested in the shrimp.', 'But the crab won\'t come out if you\'re nearby, and the shrimp darts into the fissure if you release it.', 'If only you had some way to tether the the shrimp.', 'But if you tie it to something that sinks, the crab harvests it from the trap.', 'Perhaps if you tied the shrimp to something that would force the crab to follow it out of the fissure.', 'TIE STRAP TO SHRIMP, then TIE STRAP TO ANTIQUE BOTTLE, or SHINGLE, or STAVE  (if you use the stave, you\'ll have to drop it on the surface above the crab for this to work).   DROP SHRIMP, then SWIM UP.']
;

obj719_Getting_better_eyewe: class707
    sdesc = "Getting better eyewear"

    prop1038 = 0

    prop488 = ['Can\'t see once you\'ve jumped off the pier?  Obviously, you need something to aid your vision.', 'The cheap strap of the goggles will fall off every time.', 'You need something with a better strap.', 'Before jumping, WEAR MASK (see "Getting the shiny object" if you haven\'t found the mask).']
;

obj720_Getting_down_deep: class707
    sdesc = "Getting down deep"

    prop1038 = 0

    prop488 = ['You can\'t hold your breath long enough to swim down.  If only you had some faster way down.', 'You could jump off the pier.', 'But that doesn\'t get you very deep either.  Perhaps if you had something heavy to weight you down.', 'Like a brick.', 'While carrying a brick from the path, JUMP OFF PIER.']
;

obj721_Getting_a_mite_to_th: class707
    sdesc = "Getting a mite to the bottles"

    prop1038 = 0

    prop488 = ['The mite only stays in the bottle for 2 turns.  So you can\'t bring the mite to the storage room.', 'You\'ll have to bring the bottles closer to the mite.', 'PUSH GLASS CANISTER SOUTH then repeat.', 'Once you\'ve moved the bottles and captured a mite, the rest is easy.', 'PUT BOTTLE IN PILE.']
;

obj722_Getting_a_glass_mite: class707
    sdesc = "Getting a glass mite"

    prop1038 = 0

    prop488 = ['If you\'ve watched the mites, you\'ll know they can melt glass.', 'Unfortunately, they\'ll hop off the pop-top of a can.', 'Perhaps if you could prevent the mite from touching the bottom of the bottle.', 'FILL BOTTLE WITH WATER then PUT MITE IN BOTTLE.']
;

obj723_Getting_the_shiny_ob: class707
    sdesc = "Getting the shiny object"

    prop1038 = 0

    prop488 = ['If only you had a ladder.', 'Or some other large thing you could climb.', 'Like a big castle.', 'The glass mites could probably make a really big castle with the bottles in the storage room.', 'But you\'ll have to get the bottles in the right place.', 'See "Getting a glass mite\) and \(Getting a mite to the bottles\) for more hints.']
;

obj724_Getting_the_key_from: class707
    sdesc = "Getting the key from the trash"

    prop1038 = 0

    prop488 = ['You\'ll need something with which to sift through all that scattered trash.', 'The vendor left something lying out on the counter when he emptied the trash.', 'SIFT TRASH WITH SIEVE']
;

obj725_Getting_the_sieve: class707
    sdesc = "Getting the sieve"

    prop1038 = 0

    prop488 = ['After you\'ve bought the peanuts, the vendor will close shop.', 'Just wait until he leaves and then GET SIEVE.']
;

obj726_Getting_the_key_from: class707
    sdesc = "Getting the key from the boiler"

    prop1038 = 0

    prop488 = ['Putting your hand in boiling water is usually a bad idea.', 'If you had the sieve, you might try taking it with that.', 'But the vendor won\'t let you take the sieve.', 'Just wait for the vendor to empty the boiler, and watch what happens.']
;

obj727_Getting_the_key_from: class707
    sdesc = "Getting the key from the vendor"

    prop1038 = 0

    prop488 = ['The vendor won\'t give it to you, but perhaps if you buy something he\'ll be more forthcoming.', 'Just buy some peanuts, and watch what happens.']
;

obj728_Goals_rewards: class708
    sdesc = "Goals/rewards"
;

// unknown chunk type FST

// unknown chunk type INH

formatstring 'you' prop112;
formatstring 'your' prop113;
formatstring 'you\'re' prop114;
formatstring 'youm' prop115;
formatstring 'you\'ve' prop116;
formatstring 's' prop117;
formatstring 'es' prop118;
formatstring 'have' prop119;
formatstring 'do' prop120;
formatstring 'are' prop121;
formatstring 'me' prop122;


compoundWord 'on' 'to' 'onto';
compoundWord 'in' 'to' 'into';
compoundWord 'in' 'between' 'inbetween';
compoundWord 'down' 'in' 'downin';
compoundWord 'down' 'on' 'downon';
compoundWord 'up' 'on' 'upon';
compoundWord 'out' 'of' 'outof';
compoundWord 'off' 'of' 'offof';

specialWords
    'of',
    'and',
    'then',
    'all' = 'everything',
    'both',
    'but' = 'except',
    'one',
    'ones',
    'it' = 'there',
    'them',
    'him',
    'her',
    'any' = 'either';

