package fyvanod
{
[CLASS259]   import warude.Panel;
   import pudev.Capitu;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.ui.Cid;
   import kozaligov.Bapipe;
   import com.company.assembleegameclient.game.GameSprite;
   import totuhare.Zufi;


   public class Qumevyd extends Panel
   {
      public function Qumevyd(param1:GameSprite, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1);
         this.objectType=param2;
         this.qysih.setStringBuilder(new Zufi().setParams(this.title));
         this.qysih.x=48;
         this.qysih.y=28;
         addChild(this.qysih);
         this.malybuhyn=new Cid(16,this.koduvupa);
         this.malybuhyn.textChanged.addOnce(this.boqopo);
         addChild(this.malybuhyn);
         this.cywopido=new Cid(16,this.tac);
         this.cywopido.textChanged.addOnce(this.boqopo);
         addChild(this.cywopido);
         return;
      }

      private const qysih:Capitu = Bapipe.kejajaqyv(16777215,16,true);

      private var icon:Bitmap;

      private var title:String = "Pets.petInteractionPanelTitle";

      private var koduvupa:String = "Pets.petInteractionPanelFusePetButton";

      private var tac:String = "Pets.petInteractionPanelFeedPetButton";

      private var objectType:int;

      var cywopido:Cid;

      var malybuhyn:Cid;

      public function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.icon=Bapipe.lumylajyp(this.objectType);
         this.icon.x=-4;
         this.icon.y=-8;
         addChild(this.icon);
         return;
      }

      private function boqopo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.malybuhyn.x=WIDTH/4*3-this.malybuhyn.width/2;
         this.malybuhyn.y=HEIGHT-this.malybuhyn.height-4;
         this.cywopido.x=WIDTH/4*1-this.cywopido.width/2;
         this.cywopido.y=HEIGHT-this.cywopido.height-4;
         return;
      }
   }
[/CLASS]
}