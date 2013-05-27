package coh
{
   import vaqob.Panel;
   import movimet.Lufub;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import nec.Sire;
   import qucuqesif.Rasoqymi;
   import com.company.assembleegameclient.game.GameSprite;


   public class Razagi extends Panel
   {
      public function Razagi(param1:GameSprite, param2:uint) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.type=param2;
         super(param1);
         return;
      }

      private const lupuguryb:Lufub = Rasoqymi.tefyko(16777215,16,true);

      private var icon:Bitmap;

      var datevysez:Dogyqijec;

      var zemimu:Dogyqijec;

      private var title:String = "Pets.caretakerPanelTitle";

      private var kipu:String = "Pets.caretakerPanelButtonInfo";

      private var goqopikev:String = "Pets.caretakerPanelButtonUpgrade";

      var type:uint;

      private function vylolic() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.datevysez=new Dogyqijec(16,this.kipu);
         this.datevysez.textChanged.addOnce(this.joqucohik);
         addChild(this.datevysez);
         return;
      }

      private function nona() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.icon.x=-25;
         this.icon.y=-36;
         this.lupuguryb.setStringBuilder(new Sire().setParams(this.title));
         this.lupuguryb.x=48;
         this.lupuguryb.y=28;
         addChild(this.lupuguryb);
         return;
      }

      private function batesu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zemimu=new Dogyqijec(16,this.goqopikev);
         this.zemimu.textChanged.addOnce(this.joqucohik);
         addChild(this.zemimu);
         return;
      }

      public function init(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tiqe();
         this.nona();
         this.vylolic();
         if(param1)
         {
            this.batesu();
         }
         return;
      }

      private function tiqe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.icon=Rasoqymi.ricu(this.type);
         addChild(this.icon);
         this.icon.x=5;
         return;
      }

      private function joqucohik() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.zemimu)&&(contains(this.zemimu)))
         {
            this.zemimu.x=WIDTH/4*3-this.zemimu.width/2;
            this.zemimu.y=HEIGHT-this.zemimu.height-4;
            this.datevysez.x=WIDTH/4*1-this.datevysez.width/2;
            this.datevysez.y=HEIGHT-this.datevysez.height-4;
         }
         else
         {
            this.datevysez.x=(WIDTH-this.datevysez.width)/2;
            this.datevysez.y=HEIGHT-this.datevysez.height-4;
         }
         return;
      }
   }

}