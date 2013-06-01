package coh
{
   import vaqob.Panel;
   import movimet.Lufub;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import qucuqesif.Rasoqymi;
   import com.company.assembleegameclient.game.GameSprite;
   import nec.Sire;


   public class Lid extends Panel
   {
      public function Lid(param1:GameSprite, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1);
         this.objectType=param2;
         this.lupuguryb.setStringBuilder(new Sire().setParams(this.title));
         this.lupuguryb.x=48;
         this.lupuguryb.y=28;
         addChild(this.lupuguryb);
         this.recut=new Dogyqijec(16,this.hycicah);
         this.recut.textChanged.addOnce(this.joqucohik);
         addChild(this.recut);
         this.weryn=new Dogyqijec(16,this.lotorig);
         this.weryn.textChanged.addOnce(this.joqucohik);
         addChild(this.weryn);
         return;
      }

      private const lupuguryb:Lufub = Rasoqymi.tefyko(16777215,16,true);

      private var icon:Bitmap;

      private var title:String = "Pets.petInteractionPanelTitle";

      private var hycicah:String = "Pets.petInteractionPanelFusePetButton";

      private var lotorig:String = "Pets.petInteractionPanelFeedPetButton";

      private var objectType:int;

      var weryn:Dogyqijec;

      var recut:Dogyqijec;

      public function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.icon=Rasoqymi.vugyto(this.objectType);
         this.icon.x=-4;
         this.icon.y=-8;
         addChild(this.icon);
         return;
      }

      private function joqucohik() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.recut.x=WIDTH/4*3-this.recut.width/2;
         this.recut.y=HEIGHT-this.recut.height-4;
         this.weryn.x=WIDTH/4*1-this.weryn.width/2;
         this.weryn.y=HEIGHT-this.weryn.height-4;
         return;
      }
   }

}