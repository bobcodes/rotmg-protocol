package com.company.assembleegameclient.util
{
[CLASS43]   import gawulu.Kolymivyv;
   import aaa.Parameters;
   import gawulu.Jel;
   import com.company.util.AssetLibrary;
   import kabam.rotmg.assets.Ceny;
   import flash.display.BitmapData;
   import gawulu.Cuqicyh;
   import flash.utils.ByteArray;
   import com.company.assembleegameclient.engine3d.Pyhotuni;
   import mejowozy.Kez;
   import kabam.rotmg.assets.Pyt;
   import com.company.assembleegameclient.map.Lakum;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Vin;


   public class Pukyqy extends Object
   {
      public function Pukyqy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zazycig=new Ruse();
         super();
         return;
      }

      public var zazycig:Kolymivyv;

      public function load() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gofy();
         this.qylepyz();
         this.guw();
         this.duryni();
         this.fekidoru();
         this.cedifudi();
         this.guqeqig();
         this.guhypuwu();
         Parameters.load();
         this.zazycig.load();
         Jel.load();
         return;
      }

      private function gofy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         AssetLibrary.caqil("lofiChar8x8",new Ceny.lofiCharEmbed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiChar16x8",new Ceny.lofiCharEmbed_().bitmapData,16,8);
         AssetLibrary.caqil("lofiChar16x16",new Ceny.lofiCharEmbed_().bitmapData,16,16);
         AssetLibrary.caqil("lofiChar28x8",new Ceny.lofiChar2Embed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiChar216x8",new Ceny.lofiChar2Embed_().bitmapData,16,8);
         AssetLibrary.caqil("lofiChar216x16",new Ceny.lofiChar2Embed_().bitmapData,16,16);
         AssetLibrary.caqil("lofiCharBig",new Ceny.lofiCharBigEmbed_().bitmapData,16,16);
         AssetLibrary.caqil("lofiEnvironment",new Ceny.lofiEnvironmentEmbed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiEnvironment2",new Ceny.lofiEnvironment2Embed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiEnvironment3",new Ceny.lofiEnvironment3Embed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiInterface",new Ceny.lofiInterfaceEmbed_().bitmapData,8,8);
         AssetLibrary.caqil("redLootBag",new Ceny.redLootBagEmbed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiInterfaceBig",new Ceny.lofiInterfaceBigEmbed_().bitmapData,16,16);
         AssetLibrary.caqil("lofiInterface2",new Ceny.lofiInterface2Embed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiObj",new Ceny.lofiObjEmbed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiObj2",new Ceny.lofiObj2Embed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiObj3",new Ceny.lofiObj3Embed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiObj4",new Ceny.lofiObj4Embed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiObj5",new Ceny.lofiObj5Embed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiObj6",new Ceny.lofiObj6Embed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiObjBig",new Ceny.lofiObjBigEmbed_().bitmapData,16,16);
         AssetLibrary.caqil("lofiObj40x40",new Ceny.lofiObj40x40Embed_().bitmapData,40,40);
         AssetLibrary.caqil("lofiProjs",new Ceny.lofiProjsEmbed_().bitmapData,8,8);
         AssetLibrary.caqil("lofiParticlesShocker",new Ceny.lofiParticlesShockerEmbed_().bitmapData,16,16);
         AssetLibrary.caqil("lofiProjsBig",new Ceny.lofiProjsBigEmbed_().bitmapData,16,16);
         AssetLibrary.caqil("lofiParts",new Ceny.lofiPartsEmbed_().bitmapData,8,8);
         AssetLibrary.caqil("stars",new Ceny.starsEmbed_().bitmapData,5,5);
         AssetLibrary.caqil("textile4x4",new Ceny.textile4x4Embed_().bitmapData,4,4);
         AssetLibrary.caqil("textile5x5",new Ceny.textile5x5Embed_().bitmapData,5,5);
         AssetLibrary.caqil("textile9x9",new Ceny.textile9x9Embed_().bitmapData,9,9);
         AssetLibrary.caqil("textile10x10",new Ceny.textile10x10Embed_().bitmapData,10,10);
         AssetLibrary.caqil("inner_mask",new Ceny.innerMaskEmbed_().bitmapData,4,4);
         AssetLibrary.caqil("sides_mask",new Ceny.sidesMaskEmbed_().bitmapData,4,4);
         AssetLibrary.caqil("outer_mask",new Ceny.outerMaskEmbed_().bitmapData,4,4);
         AssetLibrary.caqil("innerP1_mask",new Ceny.innerP1MaskEmbed_().bitmapData,4,4);
         AssetLibrary.caqil("innerP2_mask",new Ceny.innerP2MaskEmbed_().bitmapData,4,4);
         AssetLibrary.caqil("invisible",new BitmapData(8,8,true,0),8,8);
         return;
      }

      private function qylepyz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Pecipaham.add("chars8x8rBeach",new Ceny.chars8x8rBeachEmbed_().bitmapData,null,8,8,56,8,Huroj.RIGHT);
         Pecipaham.add("chars8x8dBeach",new Ceny.chars8x8dBeachEmbed_().bitmapData,null,8,8,56,8,Huroj.DOWN);
         Pecipaham.add("chars8x8rLow1",new Ceny.chars8x8rLow1Embed_().bitmapData,null,8,8,56,8,Huroj.RIGHT);
         Pecipaham.add("chars8x8rLow2",new Ceny.chars8x8rLow2Embed_().bitmapData,null,8,8,56,8,Huroj.RIGHT);
         Pecipaham.add("chars8x8rMid",new Ceny.chars8x8rMidEmbed_().bitmapData,null,8,8,56,8,Huroj.RIGHT);
         Pecipaham.add("chars8x8rMid2",new Ceny.chars8x8rMid2Embed_().bitmapData,null,8,8,56,8,Huroj.RIGHT);
         Pecipaham.add("chars8x8rHigh",new Ceny.chars8x8rHighEmbed_().bitmapData,null,8,8,56,8,Huroj.RIGHT);
         Pecipaham.add("chars8x8rHero1",new Ceny.chars8x8rHero1Embed_().bitmapData,null,8,8,56,8,Huroj.RIGHT);
         Pecipaham.add("chars8x8rHero2",new Ceny.chars8x8rHero2Embed_().bitmapData,null,8,8,56,8,Huroj.RIGHT);
         Pecipaham.add("chars8x8dHero1",new Ceny.chars8x8dHero1Embed_().bitmapData,null,8,8,56,8,Huroj.DOWN);
         Pecipaham.add("chars16x16dMountains1",new Ceny.chars16x16dMountains1Embed_().bitmapData,null,16,16,112,16,Huroj.DOWN);
         Pecipaham.add("chars16x16dMountains2",new Ceny.chars16x16dMountains2Embed_().bitmapData,null,16,16,112,16,Huroj.DOWN);
         Pecipaham.add("chars8x8dEncounters",new Ceny.chars8x8dEncountersEmbed_().bitmapData,null,8,8,56,8,Huroj.DOWN);
         Pecipaham.add("chars8x8rEncounters",new Ceny.chars8x8rEncountersEmbed_().bitmapData,null,8,8,56,8,Huroj.RIGHT);
         Pecipaham.add("chars16x8dEncounters",new Ceny.chars16x8dEncountersEmbed_().bitmapData,null,16,8,112,8,Huroj.DOWN);
         Pecipaham.add("chars16x8rEncounters",new Ceny.chars16x8rEncountersEmbed_().bitmapData,null,16,8,112,8,Huroj.DOWN);
         Pecipaham.add("chars16x16dEncounters",new Ceny.chars16x16dEncountersEmbed_().bitmapData,null,16,16,112,16,Huroj.DOWN);
         Pecipaham.add("chars16x16dEncounters2",new Ceny.chars16x16dEncounters2Embed_().bitmapData,null,16,16,112,16,Huroj.DOWN);
         Pecipaham.add("chars16x16rEncounters",new Ceny.chars16x16rEncountersEmbed_().bitmapData,null,16,16,112,16,Huroj.RIGHT);
         Pecipaham.add("players",new Ceny.playersEmbed_().bitmapData,new Ceny.playersMaskEmbed_().bitmapData,8,8,56,24,Huroj.RIGHT);
         Pecipaham.add("playerskins",new Ceny.playersSkinsEmbed_().bitmapData,new Ceny.playersSkinsMaskEmbed_().bitmapData,8,8,56,24,Huroj.RIGHT);
         Pecipaham.add("chars8x8rPets1",new Ceny.chars8x8rPets1Embed_().bitmapData,new Ceny.chars8x8rPets1MaskEmbed_().bitmapData,8,8,56,8,Huroj.RIGHT);
         Pecipaham.add("petsDivine",new Ceny.petsDivineEmbed_().bitmapData,null,16,16,112,16,Huroj.RIGHT);
         return;
      }

      private function guw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Cuqicyh.load("button_click");
         Cuqicyh.load("death_screen");
         Cuqicyh.load("enter_realm");
         Cuqicyh.load("error");
         Cuqicyh.load("inventory_move_item");
         Cuqicyh.load("level_up");
         Cuqicyh.load("loot_appears");
         Cuqicyh.load("no_mana");
         Cuqicyh.load("use_key");
         Cuqicyh.load("use_potion");
         return;
      }

      private function duryni() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:String = null;
         var _loc2_:ByteArray = null;
         var _loc3_:String = null;
         for (_loc1_ in Ceny.linolize)
         {
            _loc2_=Ceny.linolize[_loc1_];
            _loc3_=_loc2_.readUTFBytes(_loc2_.length);
            Pyhotuni.lucatoqi(_loc1_,_loc3_);
         }
         return;
      }

      private function fekidoru() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:XML = XML(new Ceny.particlesEmbed());
         Kez.dyzicy(_loc1_);
         return;
      }

      private function cedifudi() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = undefined;
         for each (_loc1_ in Pyt.jefyw)
         {
            Lakum.dyzicy(XML(_loc1_));
         }
         return;
      }

      private function guqeqig() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = undefined;
         for each (_loc1_ in Pyt.govif)
         {
            ObjectLibrary.dyzicy(XML(_loc1_));
         }
         return;
      }

      private function guhypuwu() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = undefined;
         for each (_loc1_ in Pyt.loqiminih)
         {
            Vin.dyzicy(XML(_loc1_));
         }
         return;
      }
   }
[/CLASS]
}