package fyvanod
{
[CLASS264]   import warude.Panel;
   import pudev.Capitu;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.ui.Cid;
   import totuhare.Zufi;
   import kozaligov.Bapipe;
   import com.company.assembleegameclient.game.GameSprite;


   public class Byzozit extends Panel
   {
      public function Byzozit(param1:GameSprite, param2:uint) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.type=param2;
         super(param1);
         return;
      }

      private const qysih:Capitu = Bapipe.kejajaqyv(16777215,16,true);

      private var icon:Bitmap;

      var tymipe:Cid;

      var tewu:Cid;

      private var title:String = "Pets.caretakerPanelTitle";

      private var wojelow:String = "Pets.caretakerPanelButtonInfo";

      private var jati:String = "Pets.caretakerPanelButtonUpgrade";

      var type:uint;

      private function lygaci() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tymipe=new Cid(16,this.wojelow);
         this.tymipe.textChanged.addOnce(this.boqopo);
         addChild(this.tymipe);
         return;
      }

      private function gydomycew() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.icon.x=-25;
         this.icon.y=-36;
         this.qysih.setStringBuilder(new Zufi().setParams(this.title));
         this.qysih.x=48;
         this.qysih.y=28;
         addChild(this.qysih);
         return;
      }

      private function zyfu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tewu=new Cid(16,this.jati);
         this.tewu.textChanged.addOnce(this.boqopo);
         addChild(this.tewu);
         return;
      }

      public function init(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nagemihes();
         this.gydomycew();
         this.lygaci();
         if(param1)
         {
            this.zyfu();
         }
         return;
      }

      private function nagemihes() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.icon=Bapipe.wuzuryta(this.type);
         addChild(this.icon);
         this.icon.x=5;
         return;
      }

      private function boqopo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.tewu)&&(contains(this.tewu)))
         {
            this.tewu.x=WIDTH/4*3-this.tewu.width/2;
            this.tewu.y=HEIGHT-this.tewu.height-4;
            this.tymipe.x=WIDTH/4*1-this.tymipe.width/2;
            this.tymipe.y=HEIGHT-this.tymipe.height-4;
         }
         else
         {
            this.tymipe.x=(WIDTH-this.tymipe.width)/2;
            this.tymipe.y=HEIGHT-this.tymipe.height-4;
         }
         return;
      }
   }
[/CLASS]
}