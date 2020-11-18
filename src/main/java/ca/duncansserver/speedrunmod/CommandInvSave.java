package ca.duncansserver.speedrunmod;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import com.mojang.brigadier.CommandDispatcher;
import com.mojang.brigadier.arguments.StringArgumentType;
import com.mojang.brigadier.builder.LiteralArgumentBuilder;
import com.mojang.brigadier.context.CommandContext;
import com.mojang.brigadier.exceptions.CommandSyntaxException;

import net.minecraft.entity.player.PlayerInventory;
import net.minecraft.item.ItemStack;
import net.minecraft.server.command.CommandManager;
import net.minecraft.server.command.ServerCommandSource;
import net.minecraft.server.network.ServerPlayerEntity;
import net.minecraft.text.LiteralText;

public class CommandInvSave {

    public static void register(CommandDispatcher<ServerCommandSource> dispatcher) {
        LiteralArgumentBuilder<ServerCommandSource> literal = CommandManager.literal("invsave");

        literal.then(CommandManager.argument("Preset", StringArgumentType.greedyString())
                .executes(context -> execute(context)));

        dispatcher.register(literal);

    }

    public static int execute(CommandContext<ServerCommandSource> context) throws CommandSyntaxException {

        ServerPlayerEntity player = context.getSource().getPlayer();
        String presetName = StringArgumentType.getString(context, "Preset");

        PlayerInventory inv = player.inventory;

        SRMItem[] playerItems = new SRMItem[36];
        SRMItem offhand = new SRMItem(inv.offHand.get(0));
        SRMItem boots = new SRMItem(inv.armor.get(0));
        SRMItem leggings = new SRMItem(inv.armor.get(1));
        SRMItem chestplate = new SRMItem(inv.armor.get(2));
        SRMItem helmet = new SRMItem(inv.armor.get(3));

        for (int i = 0; i < 36; i++) {
            ItemStack currentItem = inv.main.get(i);
            if (currentItem.getCount() > 0) {
                playerItems[i] = new SRMItem(currentItem);
            }
        }

        String toSave = "";

        if (!offhand.isNull()) {
            toSave += "offhand " + offhand + "\n";
        }
        if (!boots.isNull()) {
            toSave += "boots " + boots + "\n";
        }
        if (!leggings.isNull()) {
            toSave += "leggings " + leggings + "\n";
        }
        if (!chestplate.isNull()) {
            toSave += "chestplate " + chestplate + "\n";
        }
        if (!helmet.isNull()) {
            toSave += "helmet " + helmet + "\n";
        }

        for (int i = 0; i < 35; i++) {
            if (playerItems[i] != null) {
                toSave += i + " " + playerItems[i] + "\n";
            }
        }

        try {

            File presetFile = new File("presets\\" + presetName + ".txt");

            if(presetFile.createNewFile()){
                System.out.println("Preset File created.");
            } else {
                System.out.println("Preset File already exists, overwriting.");
            }

            FileWriter presetFileWriter = new FileWriter(presetFile);
            presetFileWriter.write(toSave);
            presetFileWriter.close();
            
            player.sendSystemMessage(new LiteralText("File saved to "+presetName+".txt"), player.getUuid());

        } catch (IOException e) {
            e.printStackTrace();
        }

        return 1;
    }

}