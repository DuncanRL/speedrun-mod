package ca.duncansserver.speedrunmod;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

import com.mojang.brigadier.CommandDispatcher;
import com.mojang.brigadier.arguments.StringArgumentType;
import com.mojang.brigadier.builder.LiteralArgumentBuilder;
import com.mojang.brigadier.context.CommandContext;
import com.mojang.brigadier.exceptions.CommandSyntaxException;

import net.minecraft.entity.player.PlayerInventory;
import net.minecraft.server.command.CommandManager;
import net.minecraft.server.command.ServerCommandSource;
import net.minecraft.server.network.ServerPlayerEntity;
import net.minecraft.text.LiteralText;

public class CommandInvLoad {

    public static void register(CommandDispatcher<ServerCommandSource> dispatcher) {
        LiteralArgumentBuilder<ServerCommandSource> literal = CommandManager.literal("invload");

        literal.then(CommandManager.argument("Preset", StringArgumentType.greedyString())
                .executes(context -> execute(context)));

        dispatcher.register(literal);

    }

    public static int execute(CommandContext<ServerCommandSource> context) throws CommandSyntaxException {

        ServerPlayerEntity player = context.getSource().getPlayer();
        String presetName = StringArgumentType.getString(context, "Preset");

        try {
            SRMItem[] loadedItems = new SRMItem[36];
            SRMItem boots = null;
            SRMItem leggings = null;
            SRMItem chestplate = null;
            SRMItem helmet = null;
            SRMItem offhand = null;

            PlayerInventory inv = player.inventory;

            File itemfile = new File("presets\\" + presetName + ".txt");
            Scanner itemReader = new Scanner(itemfile);
            while (itemReader.hasNext()) {

                String type = itemReader.next();

                if (type.equals("boots")) {
                    boots = new SRMItem(itemReader.nextLine());
                } else if (type.equals("leggings")) {
                    leggings = new SRMItem(itemReader.nextLine());
                } else if (type.equals("chestplate")) {
                    chestplate = new SRMItem(itemReader.nextLine());
                } else if (type.equals("helmet")) {
                    helmet = new SRMItem(itemReader.nextLine());
                } else if (type.equals("offhand")) {
                    offhand = new SRMItem(itemReader.nextLine());
                } else {
                    loadedItems[Integer.parseInt(type)] = new SRMItem(itemReader.nextLine());
                }

            }
            itemReader.close();
            player.inventory.clear();
            for (int i = 0; i < 35; i++) {
                if (loadedItems[i] != null) {
                    inv.main.set(i, loadedItems[i].getItemStack());
                }
            }
            if (boots != null) {
                inv.armor.set(0, boots.getItemStack());
            }
            if (leggings != null) {
                inv.armor.set(1, leggings.getItemStack());
            }
            if (chestplate != null) {
                inv.armor.set(2, chestplate.getItemStack());
            }
            if (helmet != null) {
                inv.armor.set(3, helmet.getItemStack());
            }
            if (offhand != null) {
                inv.offHand.set(0, offhand.getItemStack());
            }

        } catch (FileNotFoundException e) {
            player.sendSystemMessage(new LiteralText("Preset "+presetName+".txt not found!"), player.getUuid());
        }

        return 1;
    }

}