package com.company.assembleegameclient.util
{
   import dorepoji.Kos;
   import aaa.RotmgParameters.RotmgParameters;
   import dorepoji.Mobu;
   import com.company.util.AssetLibrary;
   import kabam.rotmg.assets.Zewiciciq;
   import flash.display.BitmapData;
   import dorepoji.Kadido;
   import flash.utils.ByteArray;
   import com.company.assembleegameclient.engine3d.Wucazad;
   import pufupav.Vuqidytep;
   import kabam.rotmg.assets.Bulamelu;
   import com.company.assembleegameclient.map.Qemujy;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Focu;


   public class Wopacycu extends Object
   {
      public function Wopacycu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wororad=new Zywywi();
         super();
         return;
      }

      public var wororad:Kos;

      public function load() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fedab();
         this.butudys();
         this.gymad();
         this.qip();
         this.gonowep();
         this.qugovavibu();
         this.husur();
         this.sajiz();
         RotmgParameters.load();
         this.wororad.load();
         Mobu.load();
         return;
      }

      private function fedab() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         AssetLibrary.medom("lofiChar8x8",new Zewiciciq.lofiCharEmbed_().bitmapData,8,8);
         AssetLibrary.medom("lofiChar16x8",new Zewiciciq.lofiCharEmbed_().bitmapData,16,8);
         AssetLibrary.medom("lofiChar16x16",new Zewiciciq.lofiCharEmbed_().bitmapData,16,16);
         AssetLibrary.medom("lofiChar28x8",new Zewiciciq.lofiChar2Embed_().bitmapData,8,8);
         AssetLibrary.medom("lofiChar216x8",new Zewiciciq.lofiChar2Embed_().bitmapData,16,8);
         AssetLibrary.medom("lofiChar216x16",new Zewiciciq.lofiChar2Embed_().bitmapData,16,16);
         AssetLibrary.medom("lofiCharBig",new Zewiciciq.lofiCharBigEmbed_().bitmapData,16,16);
         AssetLibrary.medom("lofiEnvironment",new Zewiciciq.lofiEnvironmentEmbed_().bitmapData,8,8);
         AssetLibrary.medom("lofiEnvironment2",new Zewiciciq.lofiEnvironment2Embed_().bitmapData,8,8);
         AssetLibrary.medom("lofiEnvironment3",new Zewiciciq.lofiEnvironment3Embed_().bitmapData,8,8);
         AssetLibrary.medom("lofiInterface",new Zewiciciq.lofiInterfaceEmbed_().bitmapData,8,8);
         AssetLibrary.medom("redLootBag",new Zewiciciq.redLootBagEmbed_().bitmapData,8,8);
         AssetLibrary.medom("lofiInterfaceBig",new Zewiciciq.lofiInterfaceBigEmbed_().bitmapData,16,16);
         AssetLibrary.medom("lofiInterface2",new Zewiciciq.lofiInterface2Embed_().bitmapData,8,8);
         AssetLibrary.medom("lofiObj",new Zewiciciq.lofiObjEmbed_().bitmapData,8,8);
         AssetLibrary.medom("lofiObj2",new Zewiciciq.lofiObj2Embed_().bitmapData,8,8);
         AssetLibrary.medom("lofiObj3",new Zewiciciq.lofiObj3Embed_().bitmapData,8,8);
         AssetLibrary.medom("lofiObj4",new Zewiciciq.lofiObj4Embed_().bitmapData,8,8);
         AssetLibrary.medom("lofiObj5",new Zewiciciq.lofiObj5Embed_().bitmapData,8,8);
         AssetLibrary.medom("lofiObj6",new Zewiciciq.lofiObj6Embed_().bitmapData,8,8);
         AssetLibrary.medom("lofiObjBig",new Zewiciciq.lofiObjBigEmbed_().bitmapData,16,16);
         AssetLibrary.medom("lofiObj40x40",new Zewiciciq.lofiObj40x40Embed_().bitmapData,40,40);
         AssetLibrary.medom("lofiProjs",new Zewiciciq.lofiProjsEmbed_().bitmapData,8,8);
         AssetLibrary.medom("lofiParticlesShocker",new Zewiciciq.lofiParticlesShockerEmbed_().bitmapData,16,16);
         AssetLibrary.medom("lofiProjsBig",new Zewiciciq.lofiProjsBigEmbed_().bitmapData,16,16);
         AssetLibrary.medom("lofiParts",new Zewiciciq.lofiPartsEmbed_().bitmapData,8,8);
         AssetLibrary.medom("stars",new Zewiciciq.starsEmbed_().bitmapData,5,5);
         AssetLibrary.medom("textile4x4",new Zewiciciq.textile4x4Embed_().bitmapData,4,4);
         AssetLibrary.medom("textile5x5",new Zewiciciq.textile5x5Embed_().bitmapData,5,5);
         AssetLibrary.medom("textile9x9",new Zewiciciq.textile9x9Embed_().bitmapData,9,9);
         AssetLibrary.medom("textile10x10",new Zewiciciq.textile10x10Embed_().bitmapData,10,10);
         AssetLibrary.medom("inner_mask",new Zewiciciq.innerMaskEmbed_().bitmapData,4,4);
         AssetLibrary.medom("sides_mask",new Zewiciciq.sidesMaskEmbed_().bitmapData,4,4);
         AssetLibrary.medom("outer_mask",new Zewiciciq.outerMaskEmbed_().bitmapData,4,4);
         AssetLibrary.medom("innerP1_mask",new Zewiciciq.innerP1MaskEmbed_().bitmapData,4,4);
         AssetLibrary.medom("innerP2_mask",new Zewiciciq.innerP2MaskEmbed_().bitmapData,4,4);
         AssetLibrary.medom("invisible",new BitmapData(8,8,true,0),8,8);
         return;
      }

      private function butudys() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Hekisona.add("chars8x8rBeach",new Zewiciciq.chars8x8rBeachEmbed_().bitmapData,null,8,8,56,8,Jiqefatok.RIGHT);
         Hekisona.add("chars8x8dBeach",new Zewiciciq.chars8x8dBeachEmbed_().bitmapData,null,8,8,56,8,Jiqefatok.DOWN);
         Hekisona.add("chars8x8rLow1",new Zewiciciq.chars8x8rLow1Embed_().bitmapData,null,8,8,56,8,Jiqefatok.RIGHT);
         Hekisona.add("chars8x8rLow2",new Zewiciciq.chars8x8rLow2Embed_().bitmapData,null,8,8,56,8,Jiqefatok.RIGHT);
         Hekisona.add("chars8x8rMid",new Zewiciciq.chars8x8rMidEmbed_().bitmapData,null,8,8,56,8,Jiqefatok.RIGHT);
         Hekisona.add("chars8x8rMid2",new Zewiciciq.chars8x8rMid2Embed_().bitmapData,null,8,8,56,8,Jiqefatok.RIGHT);
         Hekisona.add("chars8x8rHigh",new Zewiciciq.chars8x8rHighEmbed_().bitmapData,null,8,8,56,8,Jiqefatok.RIGHT);
         Hekisona.add("chars8x8rHero1",new Zewiciciq.chars8x8rHero1Embed_().bitmapData,null,8,8,56,8,Jiqefatok.RIGHT);
         Hekisona.add("chars8x8rHero2",new Zewiciciq.chars8x8rHero2Embed_().bitmapData,null,8,8,56,8,Jiqefatok.RIGHT);
         Hekisona.add("chars8x8dHero1",new Zewiciciq.chars8x8dHero1Embed_().bitmapData,null,8,8,56,8,Jiqefatok.DOWN);
         Hekisona.add("chars16x16dMountains1",new Zewiciciq.chars16x16dMountains1Embed_().bitmapData,null,16,16,112,16,Jiqefatok.DOWN);
         Hekisona.add("chars16x16dMountains2",new Zewiciciq.chars16x16dMountains2Embed_().bitmapData,null,16,16,112,16,Jiqefatok.DOWN);
         Hekisona.add("chars8x8dEncounters",new Zewiciciq.chars8x8dEncountersEmbed_().bitmapData,null,8,8,56,8,Jiqefatok.DOWN);
         Hekisona.add("chars8x8rEncounters",new Zewiciciq.chars8x8rEncountersEmbed_().bitmapData,null,8,8,56,8,Jiqefatok.RIGHT);
         Hekisona.add("chars16x8dEncounters",new Zewiciciq.chars16x8dEncountersEmbed_().bitmapData,null,16,8,112,8,Jiqefatok.DOWN);
         Hekisona.add("chars16x8rEncounters",new Zewiciciq.chars16x8rEncountersEmbed_().bitmapData,null,16,8,112,8,Jiqefatok.DOWN);
         Hekisona.add("chars16x16dEncounters",new Zewiciciq.chars16x16dEncountersEmbed_().bitmapData,null,16,16,112,16,Jiqefatok.DOWN);
         Hekisona.add("chars16x16dEncounters2",new Zewiciciq.chars16x16dEncounters2Embed_().bitmapData,null,16,16,112,16,Jiqefatok.DOWN);
         Hekisona.add("chars16x16rEncounters",new Zewiciciq.chars16x16rEncountersEmbed_().bitmapData,null,16,16,112,16,Jiqefatok.RIGHT);
         Hekisona.add("players",new Zewiciciq.playersEmbed_().bitmapData,new Zewiciciq.playersMaskEmbed_().bitmapData,8,8,56,24,Jiqefatok.RIGHT);
         Hekisona.add("playerskins",new Zewiciciq.playersSkinsEmbed_().bitmapData,new Zewiciciq.playersSkinsMaskEmbed_().bitmapData,8,8,56,24,Jiqefatok.RIGHT);
         Hekisona.add("chars8x8rPets1",new Zewiciciq.chars8x8rPets1Embed_().bitmapData,new Zewiciciq.chars8x8rPets1MaskEmbed_().bitmapData,8,8,56,8,Jiqefatok.RIGHT);
         Hekisona.add("petsDivine",new Zewiciciq.petsDivineEmbed_().bitmapData,null,16,16,112,16,Jiqefatok.RIGHT);
         return;
      }

      private function gymad() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Kadido.load("button_click");
         Kadido.load("death_screen");
         Kadido.load("enter_realm");
         Kadido.load("error");
         Kadido.load("inventory_move_item");
         Kadido.load("level_up");
         Kadido.load("loot_appears");
         Kadido.load("no_mana");
         Kadido.load("use_key");
         Kadido.load("use_potion");
         return;
      }

      private function qip() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:String = null;
         var _loc2_:ByteArray = null;
         var _loc3_:String = null;
         for (_loc1_ in Zewiciciq.pejez)
         {
            _loc2_=Zewiciciq.pejez[_loc1_];
            _loc3_=_loc2_.readUTFBytes(_loc2_.length);
            Wucazad.bisyme(_loc1_,_loc3_);
         }
         return;
      }

      private function gonowep() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:XML = XML(new Zewiciciq.particlesEmbed());
         Vuqidytep.weniti(_loc1_);
         return;
      }

      private function qugovavibu() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = undefined;
         for each (_loc1_ in Bulamelu.wog)
         {
            Qemujy.weniti(XML(_loc1_));
         }
         return;
      }

      private function husur() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = undefined;
         for each (_loc1_ in Bulamelu.lypuze)
         {
            ObjectLibrary.weniti(XML(_loc1_));
         }
         return;
      }

      private function sajiz() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = undefined;
         for each (_loc1_ in Bulamelu.jazenezyg)
         {
            Focu.weniti(XML(_loc1_));
         }
         return;
      }
   }

}