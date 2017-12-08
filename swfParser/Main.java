package swfParser;

import swfParser.as3.AS3Parser;
import swfParser.as3.rules.*;
import swfParser.net.FileDownloader;
import swfParser.swf.SwfParser;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

/**
 * Created by Uther on 03.09.2016.
 */
public class Main {
    public static void main(String[] args) {
        System.out.println("parsing code...");
        System.out.println();
        AS3Parser as3Parser = new AS3Parser();

        as3Parser.addRule(new UserDeathMessagesRule());
        as3Parser.addRule(new ShipRemoveMessageRule());
        as3Parser.addRule(new ShipInitMessageRule());
        as3Parser.addRule(new TeleportMessageRule());
        as3Parser.addRule(new AttackInfoMessageRule());
        as3Parser.addRule(new UseActionItemTargetMessage());
        as3Parser.addRule(new HeartbeatMessageRule());
        as3Parser.addRule(new MoveMessageRule());
        as3Parser.addRule(new CannonAttackMessageRule());
        as3Parser.addRule(new LoginMessageRule());
        as3Parser.addRule(new RepairMessageRule());
        as3Parser.addRule(new MapChangeMessageRule());
        as3Parser.addRule(new ChangeAmmunitionMessageRule());
        as3Parser.addRule(new StandardRepairMessageRule());
        as3Parser.addRule(new LogoutMessageRule());
        as3Parser.addRule(new AllIdsRule());
        as3Parser.addRule(new AmsUpdateMessageRule());
        as3Parser.addRule(new RouteUpdateMessage());
        as3Parser.addRule(new UserInitMessageRule());
        as3Parser.addRule(new CannonAbortAttackMessageRule());
        as3Parser.addRule(new UseActionItemMessage());
        as3Parser.addRule(new MinigameLeaveMessageRule());
        as3Parser.addRule(new GroupInviteMessageRule());
        as3Parser.addRule(new MapChangeAskMessageRule());
        as3Parser.addRule(new EmergencyRepairMessageRule());
        as3Parser.process();
        System.out.println("Done...");
    }


   private static void download(){

     Scanner scanner = new Scanner(System.in);
     System.out.print("Main hash: ");
     String cv = scanner.nextLine();
       System.out.println("Downloading latest SeafightMain.swf...");
     try {
      FileDownloader.download("http://seafight-14.level3.bpcdn.net/client/SeafightMain.swf?__cv=" + cv,"SeafightMain.swf"); // looks like cv is needed to not get a trash Main.swf
     } catch (IOException e) {
      System.out.println("Error: Downloading. " + e.getMessage());
     }
   
     System.out.println("Downloading complete.");
   }

   private static void deobfuscate(){
    System.out.println("Reading SeafightMain.swf");
        /*parsing the file*/
    SwfParser parser = new SwfParser();
    parser.readSwf("SeafightMain.swf");
    System.out.println("Deobfuscating...");
    parser.deobfuscate();
   }



}
