package com.company.assembleegameclient.objects
{
[CLASS1096]   import tusidywuq.Vyle;
   import qypupet.Vuravipyg;
   import com.company.assembleegameclient.util.Huroj;
   import qypupet.Tuhyfutos;
   import pigeguwo.Jazyv;
   import pigeguwo.Mefu;
   import haqakel.Kefyfa;
   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import wynuqehej.PetPanel;
   import com.company.assembleegameclient.util.Gejugut;
   import com.company.assembleegameclient.util.Pecipaham;
   import jutesesel.Qibigagal;


   public class Pet extends GameObject implements Gofa
   {
      public function Pet(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         wywag=true;
         this.wezibijad=Qibigagal.husuha().getInstance(Vyle);
         this.lycufasoc=Qibigagal.husuha().getInstance(Tuhyfutos);
         return;
      }

      private var wezibijad:Vyle;

      public var wakutehe:Vuravipyg;

      public var skin:Huroj;

      private var pimijaz:Boolean;

      private var lycufasoc:Tuhyfutos;

      public function getTooltip() : Jazyv {
         var _loc1_:Jazyv = new Mefu(3552822,10197915,Kefyfa.zyva,Kefyfa.tobavi,200);
         return _loc1_;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new PetPanel(param1,this.wakutehe);
      }

      public function rug(param1:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Gejugut = null;
         var _loc2_:XML = ObjectLibrary.bisera(ObjectLibrary.peboda(param1));
         var _loc3_:String = _loc2_.AnimatedTexture.File;
         var _loc4_:int = _loc2_.AnimatedTexture.Index;
         this.skin=Pecipaham.jujagikan(_loc3_,_loc4_);
         _loc5_=this.skin.imageFromAngle(0,Huroj.wyqel,0);
         haci=this.skin;
         texture_=_loc5_.image_;
         mask_=_loc5_.mask_;
         this.pimijaz=true;
         return;
      }
   }
[/CLASS]
}