package com.company.assembleegameclient.util
{
   import vozireni.Visi;
   import aaa.rotmg.config.UserConfig;
   import vozireni.Nenypeful;
   import com.company.util.AssetLibrary;
   import kabam.rotmg.assets.Tomuja;
   import flash.display.BitmapData;
   import vozireni.Pozunubu;
   import flash.utils.ByteArray;
   import com.company.assembleegameclient.engine3d.Hivehihil;
   import moryzis.Jona;
   import kabam.rotmg.assets.Cibukaz;
   import com.company.assembleegameclient.map.Qezab;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Vehulumes;


   public class Fahun extends Object
   {
      public function Fahun() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zadafoja=new Wyt();
         super();
         return;
      }

      public var zadafoja:Visi;

      public function load() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sajoqu();
         this.jawe();
         this.weduqyv();
         this.qinocudy();
         this.zamijili();
         this.belunudeg();
         this.bocu();
         this.mafugeqad();
         UserConfig.load();
         this.zadafoja.load();
         Nenypeful.load();
         return;
      }

      private function sajoqu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         AssetLibrary.qovom("lofiChar8x8",new Tomuja.lofiCharEmbed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiChar16x8",new Tomuja.lofiCharEmbed_().bitmapData,16,8);
         AssetLibrary.qovom("lofiChar16x16",new Tomuja.lofiCharEmbed_().bitmapData,16,16);
         AssetLibrary.qovom("lofiChar28x8",new Tomuja.lofiChar2Embed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiChar216x8",new Tomuja.lofiChar2Embed_().bitmapData,16,8);
         AssetLibrary.qovom("lofiChar216x16",new Tomuja.lofiChar2Embed_().bitmapData,16,16);
         AssetLibrary.qovom("lofiCharBig",new Tomuja.lofiCharBigEmbed_().bitmapData,16,16);
         AssetLibrary.qovom("lofiEnvironment",new Tomuja.lofiEnvironmentEmbed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiEnvironment2",new Tomuja.lofiEnvironment2Embed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiEnvironment3",new Tomuja.lofiEnvironment3Embed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiInterface",new Tomuja.lofiInterfaceEmbed_().bitmapData,8,8);
         AssetLibrary.qovom("redLootBag",new Tomuja.redLootBagEmbed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiInterfaceBig",new Tomuja.lofiInterfaceBigEmbed_().bitmapData,16,16);
         AssetLibrary.qovom("lofiInterface2",new Tomuja.lofiInterface2Embed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiObj",new Tomuja.lofiObjEmbed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiObj2",new Tomuja.lofiObj2Embed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiObj3",new Tomuja.lofiObj3Embed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiObj4",new Tomuja.lofiObj4Embed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiObj5",new Tomuja.lofiObj5Embed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiObj6",new Tomuja.lofiObj6Embed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiObjBig",new Tomuja.lofiObjBigEmbed_().bitmapData,16,16);
         AssetLibrary.qovom("lofiObj40x40",new Tomuja.lofiObj40x40Embed_().bitmapData,40,40);
         AssetLibrary.qovom("lofiProjs",new Tomuja.lofiProjsEmbed_().bitmapData,8,8);
         AssetLibrary.qovom("lofiParticlesShocker",new Tomuja.lofiParticlesShockerEmbed_().bitmapData,16,16);
         AssetLibrary.qovom("lofiProjsBig",new Tomuja.lofiProjsBigEmbed_().bitmapData,16,16);
         AssetLibrary.qovom("lofiParts",new Tomuja.lofiPartsEmbed_().bitmapData,8,8);
         AssetLibrary.qovom("stars",new Tomuja.starsEmbed_().bitmapData,5,5);
         AssetLibrary.qovom("textile4x4",new Tomuja.textile4x4Embed_().bitmapData,4,4);
         AssetLibrary.qovom("textile5x5",new Tomuja.textile5x5Embed_().bitmapData,5,5);
         AssetLibrary.qovom("textile9x9",new Tomuja.textile9x9Embed_().bitmapData,9,9);
         AssetLibrary.qovom("textile10x10",new Tomuja.textile10x10Embed_().bitmapData,10,10);
         AssetLibrary.qovom("inner_mask",new Tomuja.innerMaskEmbed_().bitmapData,4,4);
         AssetLibrary.qovom("sides_mask",new Tomuja.sidesMaskEmbed_().bitmapData,4,4);
         AssetLibrary.qovom("outer_mask",new Tomuja.outerMaskEmbed_().bitmapData,4,4);
         AssetLibrary.qovom("innerP1_mask",new Tomuja.innerP1MaskEmbed_().bitmapData,4,4);
         AssetLibrary.qovom("innerP2_mask",new Tomuja.innerP2MaskEmbed_().bitmapData,4,4);
         AssetLibrary.qovom("invisible",new BitmapData(8,8,true,0),8,8);
         return;
      }

      private function jawe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Jutot.add("chars8x8rBeach",new Tomuja.chars8x8rBeachEmbed_().bitmapData,null,8,8,56,8,Zuwomuguk.RIGHT);
         Jutot.add("chars8x8dBeach",new Tomuja.chars8x8dBeachEmbed_().bitmapData,null,8,8,56,8,Zuwomuguk.DOWN);
         Jutot.add("chars8x8rLow1",new Tomuja.chars8x8rLow1Embed_().bitmapData,null,8,8,56,8,Zuwomuguk.RIGHT);
         Jutot.add("chars8x8rLow2",new Tomuja.chars8x8rLow2Embed_().bitmapData,null,8,8,56,8,Zuwomuguk.RIGHT);
         Jutot.add("chars8x8rMid",new Tomuja.chars8x8rMidEmbed_().bitmapData,null,8,8,56,8,Zuwomuguk.RIGHT);
         Jutot.add("chars8x8rMid2",new Tomuja.chars8x8rMid2Embed_().bitmapData,null,8,8,56,8,Zuwomuguk.RIGHT);
         Jutot.add("chars8x8rHigh",new Tomuja.chars8x8rHighEmbed_().bitmapData,null,8,8,56,8,Zuwomuguk.RIGHT);
         Jutot.add("chars8x8rHero1",new Tomuja.chars8x8rHero1Embed_().bitmapData,null,8,8,56,8,Zuwomuguk.RIGHT);
         Jutot.add("chars8x8rHero2",new Tomuja.chars8x8rHero2Embed_().bitmapData,null,8,8,56,8,Zuwomuguk.RIGHT);
         Jutot.add("chars8x8dHero1",new Tomuja.chars8x8dHero1Embed_().bitmapData,null,8,8,56,8,Zuwomuguk.DOWN);
         Jutot.add("chars16x16dMountains1",new Tomuja.chars16x16dMountains1Embed_().bitmapData,null,16,16,112,16,Zuwomuguk.DOWN);
         Jutot.add("chars16x16dMountains2",new Tomuja.chars16x16dMountains2Embed_().bitmapData,null,16,16,112,16,Zuwomuguk.DOWN);
         Jutot.add("chars8x8dEncounters",new Tomuja.chars8x8dEncountersEmbed_().bitmapData,null,8,8,56,8,Zuwomuguk.DOWN);
         Jutot.add("chars8x8rEncounters",new Tomuja.chars8x8rEncountersEmbed_().bitmapData,null,8,8,56,8,Zuwomuguk.RIGHT);
         Jutot.add("chars16x8dEncounters",new Tomuja.chars16x8dEncountersEmbed_().bitmapData,null,16,8,112,8,Zuwomuguk.DOWN);
         Jutot.add("chars16x8rEncounters",new Tomuja.chars16x8rEncountersEmbed_().bitmapData,null,16,8,112,8,Zuwomuguk.DOWN);
         Jutot.add("chars16x16dEncounters",new Tomuja.chars16x16dEncountersEmbed_().bitmapData,null,16,16,112,16,Zuwomuguk.DOWN);
         Jutot.add("chars16x16dEncounters2",new Tomuja.chars16x16dEncounters2Embed_().bitmapData,null,16,16,112,16,Zuwomuguk.DOWN);
         Jutot.add("chars16x16rEncounters",new Tomuja.chars16x16rEncountersEmbed_().bitmapData,null,16,16,112,16,Zuwomuguk.RIGHT);
         Jutot.add("players",new Tomuja.playersEmbed_().bitmapData,new Tomuja.playersMaskEmbed_().bitmapData,8,8,56,24,Zuwomuguk.RIGHT);
         Jutot.add("playerskins",new Tomuja.playersSkinsEmbed_().bitmapData,new Tomuja.playersSkinsMaskEmbed_().bitmapData,8,8,56,24,Zuwomuguk.RIGHT);
         Jutot.add("chars8x8rPets1",new Tomuja.chars8x8rPets1Embed_().bitmapData,new Tomuja.chars8x8rPets1MaskEmbed_().bitmapData,8,8,56,8,Zuwomuguk.RIGHT);
         Jutot.add("petsDivine",new Tomuja.petsDivineEmbed_().bitmapData,null,16,16,112,16,Zuwomuguk.RIGHT);
         return;
      }

      private function weduqyv() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Pozunubu.load("button_click");
         Pozunubu.load("death_screen");
         Pozunubu.load("enter_realm");
         Pozunubu.load("error");
         Pozunubu.load("inventory_move_item");
         Pozunubu.load("level_up");
         Pozunubu.load("loot_appears");
         Pozunubu.load("no_mana");
         Pozunubu.load("use_key");
         Pozunubu.load("use_potion");
         return;
      }

      private function qinocudy() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:String = null;
         var _loc2_:ByteArray = null;
         var _loc3_:String = null;
         for (_loc1_ in Tomuja.sim)
         {
            _loc2_=Tomuja.sim[_loc1_];
            _loc3_=_loc2_.readUTFBytes(_loc2_.length);
            Hivehihil.zuvoqij(_loc1_,_loc3_);
         }
         return;
      }

      private function zamijili() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:XML = XML(new Tomuja.particlesEmbed());
         Jona.vyce(_loc1_);
         return;
      }

      private function belunudeg() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = undefined;
         for each (_loc1_ in Cibukaz.baga)
         {
            Qezab.vyce(XML(_loc1_));
         }
         return;
      }

      private function bocu() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = undefined;
         for each (_loc1_ in Cibukaz.mabivufyn)
         {
            ObjectLibrary.vyce(XML(_loc1_));
         }
         return;
      }

      private function mafugeqad() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = undefined;
         for each (_loc1_ in Cibukaz.nor)
         {
            Vehulumes.vyce(XML(_loc1_));
         }
         return;
      }
   }

}