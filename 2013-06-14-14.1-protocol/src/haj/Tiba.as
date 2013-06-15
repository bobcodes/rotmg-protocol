package haj
{
   import fytalis.Panel;
   import hivysif.Guzowoja;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.ui.Tivinu;
   import jediwip.Kybidu;
   import fypeba.Zikorur;
   import com.company.assembleegameclient.game.GameSprite;


   public class Tiba extends Panel
   {
      public function Tiba(param1:GameSprite, param2:uint) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.type=param2;
         super(param1);
         return;
      }

      private const vef:Guzowoja = Zikorur.guta(16777215,16,true);

      private var icon:Bitmap;

      var dafutubi:Tivinu;

      var jepedo:Tivinu;

      private var title:String = "Pets.caretakerPanelTitle";

      private var tabesidy:String = "Pets.caretakerPanelButtonInfo";

      private var bopub:String = "Pets.caretakerPanelButtonUpgrade";

      var type:uint;

      private function buwif() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dafutubi=new Tivinu(16,this.tabesidy);
         this.dafutubi.textChanged.addOnce(this.jap);
         addChild(this.dafutubi);
         return;
      }

      private function kytocy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.icon.x=-25;
         this.icon.y=-36;
         this.vef.setStringBuilder(new Kybidu().setParams(this.title));
         this.vef.x=48;
         this.vef.y=28;
         addChild(this.vef);
         return;
      }

      private function wowuhebuj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jepedo=new Tivinu(16,this.bopub);
         this.jepedo.textChanged.addOnce(this.jap);
         addChild(this.jepedo);
         return;
      }

      public function init(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qovuno();
         this.kytocy();
         this.buwif();
         if(param1)
         {
            this.wowuhebuj();
         }
         return;
      }

      private function qovuno() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.icon=Zikorur.qyteketud(this.type);
         addChild(this.icon);
         this.icon.x=5;
         return;
      }

      private function jap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.jepedo)&&(contains(this.jepedo)))
         {
            this.jepedo.x=WIDTH/4*3-this.jepedo.width/2;
            this.jepedo.y=HEIGHT-this.jepedo.height-4;
            this.dafutubi.x=WIDTH/4*1-this.dafutubi.width/2;
            this.dafutubi.y=HEIGHT-this.dafutubi.height-4;
         }
         else
         {
            this.dafutubi.x=(WIDTH-this.dafutubi.width)/2;
            this.dafutubi.y=HEIGHT-this.dafutubi.height-4;
         }
         return;
      }
   }

}