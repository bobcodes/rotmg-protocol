package com.company.assembleegameclient.objects
{
   import dicyl.Munif;
   import fanij.Cun;
   import com.company.assembleegameclient.util.Jiqefatok;
   import fanij.Namejaja;
   import mavew.Qyryl;
   import mavew.Qyrola;
   import komi.Vibemod;
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import horitu.PetPanel;
   import com.company.assembleegameclient.util.Kebinuhi;
   import com.company.assembleegameclient.util.Hekisona;
   import sijizoh.Duq;


   public class Pet extends GameObject implements Gim
   {
      public function Pet(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         bura=true;
         this.kigenyp=Duq.pamazo().getInstance(Munif);
         this.cybeco=Duq.pamazo().getInstance(Namejaja);
         return;
      }

      private var kigenyp:Munif;

      public var tutobasu:Cun;

      public var skin:Jiqefatok;

      private var zenaf:Boolean;

      private var cybeco:Namejaja;

      public function getTooltip() : Qyryl {
         var _loc1_:Qyryl = new Qyrola(3552822,10197915,Vibemod.tyr,Vibemod.maciroli,200);
         return _loc1_;
      }

      public function getPanel(param1:GameSprite) : Panel {
         return new PetPanel(param1,this.tutobasu);
      }

      public function qymido(param1:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Kebinuhi = null;
         var _loc2_:XML = ObjectLibrary.jesycegoc(ObjectLibrary.ryqovol(param1));
         var _loc3_:String = _loc2_.AnimatedTexture.File;
         var _loc4_:int = _loc2_.AnimatedTexture.Index;
         this.skin=Hekisona.woseku(_loc3_,_loc4_);
         _loc5_=this.skin.imageFromAngle(0,Jiqefatok.radev,0);
         bisyfewyt=this.skin;
         texture_=_loc5_.image_;
         mask_=_loc5_.mask_;
         this.zenaf=true;
         return;
      }
   }

}