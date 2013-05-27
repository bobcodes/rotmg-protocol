package com.company.assembleegameclient.objects
{
   import zubamyki.Wybuhehuf;
   import zoroc.Bezuco;
   import com.company.assembleegameclient.util.Zuwomuguk;
   import zoroc.Gecezyw;
   import povopito.Ryduwi;
   import povopito.Jodehozut;
   import aaa.rotmg.i18n.I18nKeys;
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import buzok.PetPanel;
   import com.company.assembleegameclient.util.Biloqu;
   import com.company.assembleegameclient.util.Jutot;
   import jag.Giq;


   public class Pet extends GameObject implements Putafyhil
   {
      public function Pet(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         tar=true;
         this.noqi=Giq.kid().getInstance(Wybuhehuf);
         this.duqa=Giq.kid().getInstance(Gecezyw);
         return;
      }

      private var noqi:Wybuhehuf;

      public var qocuseho:Bezuco;

      public var skin:Zuwomuguk;

      private var tijusu:Boolean;

      private var duqa:Gecezyw;

      public function getTooltip() : Ryduwi {
         var _loc1_:Ryduwi = new Jodehozut(3552822,10197915,I18nKeys.hafu,I18nKeys.nibylahe,200);
         return _loc1_;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         return new PetPanel(param1,this.qocuseho);
      }

      public function zepipy(param1:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Biloqu = null;
         var _loc2_:XML = ObjectLibrary.faviqykef(ObjectLibrary.pelek(param1));
         var _loc3_:String = _loc2_.AnimatedTexture.File;
         var _loc4_:int = _loc2_.AnimatedTexture.Index;
         this.skin=Jutot.fyh(_loc3_,_loc4_);
         _loc5_=this.skin.imageFromAngle(0,Zuwomuguk.pazyladar,0);
         saqizy=this.skin;
         texture_=_loc5_.image_;
         mask_=_loc5_.mask_;
         this.tijusu=true;
         return;
      }
   }

}