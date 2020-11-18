package ca.duncansserver.speedrunmod;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.command.v1.CommandRegistrationCallback;

import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class srm implements ModInitializer {

    public static Logger LOGGER = LogManager.getLogger();

    public static final String MOD_ID = "duncansspeedrunmod";
    public static final String MOD_NAME = "Duncan's Speedrun Mod";

    @Override
    public void onInitialize() {
        log(Level.INFO, "Initializing");

        CommandRegistrationCallback.EVENT.register((dispatcher, dedicated) -> {
            CommandInvLoad.register(dispatcher);
        });
        CommandRegistrationCallback.EVENT.register((dispatcher, dedicated) -> {
            CommandInvSave.register(dispatcher);
        });

    }

    public static void log(Level level, String message) {
        LOGGER.log(level, "[" + MOD_NAME + "] " + message);
    }

}