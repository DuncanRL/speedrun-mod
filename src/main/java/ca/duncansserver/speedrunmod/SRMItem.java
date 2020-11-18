package ca.duncansserver.speedrunmod;

import com.mojang.brigadier.StringReader;
import com.mojang.brigadier.exceptions.CommandSyntaxException;

import net.minecraft.command.arguments.ItemStackArgumentType;
import net.minecraft.item.ItemStack;

public class SRMItem {

    private ItemStack itemStack;
    private boolean nullity = false;

    public SRMItem(String item) throws CommandSyntaxException {

        String[] wordlist = item.split(" ");
        int count = Integer.parseInt(wordlist[wordlist.length-1]);
        String itemNoCount = item.substring(1,item.length()-Integer.toString(count).length()-1);
        itemStack = new ItemStackArgumentType().parse(new StringReader(itemNoCount)).createStack(count,false);
    }

    public SRMItem(ItemStack itemStack) {
        if (itemStack != null && itemStack.getCount() > 0) {
            this.itemStack = itemStack;
        } else {
            nullity = true;
        }
    }

    public boolean isNull() {
        return nullity;
    }

    public int getCount() {
        return itemStack.getCount();
    }

    public ItemStack getItemStack() {
        return itemStack;
    }

    public String toString() {
        String theTag = "";
        if(itemStack.getTag() != null){
            theTag = itemStack.getTag().toString();
        }
        return itemStack.getItem().toString() + theTag + " " + getCount();
    }

}
