package ca.duncansserver.speedrunmod;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class PresetHelper {

    public static Logger LOGGER = LogManager.getLogger();

    public static final String MOD_ID = "duncansspeedrunmod";
    public static final String MOD_NAME = "Duncan's Speedrun Mod";

    public static void checkDefaults() {

        try {
            Files.createDirectory(Paths.get("presets"));
            
            srm.log(Level.INFO, "Presets folder missing, generating defaults.");

            String fileStringBastion = "offhand bread 32\nboots golden_boots{Damage:0} 1\n0 stone_sword{Damage:0} 1\n1 stone_pickaxe{Damage:0} 1\n2 stone_shovel{Damage:0} 1\n3 stone_axe{Damage:0} 1\n4 water_bucket 1\n5 flint_and_steel{Damage:0} 1\n6 oak_boat 1\n7 shield{Damage:0} 1\n8 golden_apple 2\n9 cobblestone 32\n10 tnt 2\n11 oak_button 2\n12 iron_pickaxe{Damage:0} 1\n";
            String fileStringBed = "0 white_bed 1\n1 blue_bed 1\n2 black_bed 1\n3 brown_bed 1\n4 cyan_bed 1\n5 gray_bed 1\n6 green_bed 1\n7 light_blue_bed 1\n8 light_gray_bed 1\n9 command_block{oc:2,display:{Lore:['\"(Drop or Click)\"'],Name:'{\"text\":\"Reset\",\"italic\": false,\"color\": \"red\"}'}} 1\n10 command_block{oc:1,display:{Lore:['\"(Drop or Click)\"'],Name:'{\"text\":\"Toggle Crystals\",\"italic\": false,\"color\": \"green\"}'}} 1\n11 command_block{oc:3,display:{Lore:['\"(Drop or Click)\"'],Name:'{\"text\":\"Toggle Slab\",\"italic\": false,\"color\": \"green\"}'}} 1\n12 command_block{oc:4,display:{Lore:['\"(Drop or Click)\"'],Name:'{\"text\":\"Randomize Angle\",\"italic\": false,\"color\": \"green\"}'}} 1\n13 white_bed 1\n14 white_bed 1\n15 white_bed 1\n16 white_bed 1\n17 white_bed 1\n18 white_bed 1\n19 white_bed 1\n20 white_bed 1\n21 white_bed 1\n22 white_bed 1\n23 white_bed 1\n24 white_bed 1\n25 white_bed 1\n26 white_bed 1\n";
            String fileStringEnd = "offhand bread 32\n0 stone_sword{Damage:0} 1\n1 stone_pickaxe{Damage:0} 1\n2 stone_shovel{Damage:0} 1\n3 stone_axe{Damage:0} 1\n4 cobblestone 64\n5 water_bucket 1\n6 flint_and_steel{Damage:0} 1\n7 bow{Damage:0} 1\n8 oak_boat 1\n9 shield{Damage:0} 1\n10 white_bed 1\n11 white_bed 1\n12 white_bed 1\n13 white_bed 1\n14 white_bed 1\n15 white_bed 1\n16 white_bed 1\n17 white_bed 1\n18 white_bed 1\n19 white_bed 1\n20 arrow 64\n";
            String fileStringEye = "offhand bread 32\n0 stone_sword{Damage:0} 1\n1 stone_pickaxe{Damage:0} 1\n2 stone_shovel{Damage:0} 1\n3 stone_axe{Damage:0} 1\n4 cobblestone 64\n5 water_bucket 1\n6 flint_and_steel{Damage:0} 1\n7 bow{Damage:0} 1\n8 ender_pearl 14\n9 blaze_rod 7\n10 oak_boat 1\n11 shield{Damage:0} 1\n12 white_bed 1\n13 white_bed 1\n14 white_bed 1\n15 white_bed 1\n16 white_bed 1\n17 white_bed 1\n18 white_bed 1\n19 white_bed 1\n20 white_bed 1\n21 white_bed 1\n22 arrow 64\n";
            String fileStringFortress = "offhand bread 32\n0 stone_sword{Damage:0} 1\n1 stone_pickaxe{Damage:0} 1\n2 stone_shovel{Damage:0} 1\n3 stone_axe{Damage:0} 1\n4 water_bucket 1\n5 flint_and_steel{Damage:0} 1\n6 oak_boat 1\n7 shield{Damage:0} 1\n8 golden_apple 2\n9 cobblestone 32\n";
            String fileStringLava = "0 water_bucket 1\n1 stone_pickaxe{Damage:0} 1\n2 flint_and_steel{Damage:0} 1\n3 dirt 10\n4 stone_shovel{Damage:0} 1\n";
            String fileStringNether = "offhand bread 32\n0 stone_sword{Damage:0} 1\n1 stone_pickaxe{Damage:0} 1\n2 stone_shovel{Damage:0} 1\n3 stone_axe{Damage:0} 1\n4 water_bucket 1\n5 flint_and_steel{Damage:0} 1\n6 oak_boat 1\n7 shield{Damage:0} 1\n8 golden_apple 2\n";
            String fileStringStronghold = "offhand bread 32\n0 stone_sword{Damage:0} 1\n1 stone_pickaxe{Damage:0} 1\n2 stone_shovel{Damage:0} 1\n3 stone_axe{Damage:0} 1\n4 cobblestone 64\n5 water_bucket 1\n6 flint_and_steel{Damage:0} 1\n7 oak_boat 1\n8 shield{Damage:0} 1\n9 ender_eye 12\n10 bow{Damage:0} 1\n11 white_bed 1\n12 white_bed 1\n13 white_bed 1\n14 white_bed 1\n15 white_bed 1\n16 white_bed 1\n17 white_bed 1\n18 white_bed 1\n19 white_bed 1\n20 white_bed 1\n21 arrow 64\n";
            String fileStringTNT = "0 tnt 64\n1 dirt 64\n2 flint_and_steel{Damage:0} 1\n";
            String fileStringTrading = "0 stone_sword{Damage:0} 1\n1 stone_pickaxe{Damage:0} 1\n2 stone_shovel{Damage:0} 1\n3 stone_axe{Damage:0} 1\n4 fletching_table 2\n5 brewing_stand 1\n6 oak_log 64\n7 oak_log 64\n8 oak_log 64\n9 oak_log 64\n10 oak_log 64\n11 oak_log 64\n";

            File fileBastion = new File("presets/Bastion.txt");
            File fileBed = new File("presets/Bed.txt");
            File fileEnd = new File("presets/End.txt");
            File fileEye = new File("presets/Eye.txt");
            File fileFortress = new File("presets/Fortress.txt");
            File fileLava = new File("presets/Lava.txt");
            File fileNether = new File("presets/Nether.txt");
            File fileStronghold = new File("presets/Stronghold.txt");
            File fileTNT = new File("presets/TNT.txt");
            File fileTrading = new File("presets/Trading.txt");

            FileWriter fileWriterBastion = new FileWriter(fileBastion);
            FileWriter fileWriterBed = new FileWriter(fileBed);
            FileWriter fileWriterEnd = new FileWriter(fileEnd);
            FileWriter fileWriterEye = new FileWriter(fileEye);
            FileWriter fileWriterFortress = new FileWriter(fileFortress);
            FileWriter fileWriterLava = new FileWriter(fileLava);
            FileWriter fileWriterNether = new FileWriter(fileNether);
            FileWriter fileWriterStronghold = new FileWriter(fileStronghold);
            FileWriter fileWriterTNT = new FileWriter(fileTNT);
            FileWriter fileWriterTrading = new FileWriter(fileTrading);

            fileWriterBastion.write(fileStringBastion);
            fileWriterBed.write(fileStringBed);
            fileWriterEnd.write(fileStringEnd);
            fileWriterEye.write(fileStringEye);
            fileWriterFortress.write(fileStringFortress);
            fileWriterLava.write(fileStringLava);
            fileWriterNether.write(fileStringNether);
            fileWriterStronghold.write(fileStringStronghold);
            fileWriterTNT.write(fileStringTNT);
            fileWriterTrading.write(fileStringTrading);

            fileWriterBastion.close();
            fileWriterBed.close();
            fileWriterEnd.close();
            fileWriterEye.close();
            fileWriterFortress.close();
            fileWriterLava.close();
            fileWriterNether.close();
            fileWriterStronghold.close();
            fileWriterTNT.close();
            fileWriterTrading.close();

        } catch (IOException e) {
            srm.log(Level.INFO, "Presets folder already exists, won't create defaults.");
        }

    }

}
