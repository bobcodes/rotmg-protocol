package haj
{
   import fytalis.Panel;
   import hivysif.Guzowoja;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.ui.Tivinu;
   import fypeba.Zikorur;
   import com.company.assembleegameclient.game.GameSprite;
   import jediwip.Kybidu;


   public class Rikura extends Panel
   {
      public function Rikura(param1:GameSprite, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1);
         this.objectType=param2;
         this.vef.setStringBuilder(new Kybidu().setParams(this.title));
         this.vef.x=48;
         this.vef.y=28;
         addChild(this.vef);
         this.cod=new Tivinu(16,this.qotyfyby);
         this.cod.textChanged.addOnce(this.jap);
         addChild(this.cod);
         this.fusocy=new Tivinu(16,this.runigalu);
         this.fusocy.textChanged.addOnce(this.jap);
         addChild(this.fusocy);
         return;
      }

      private const vef:Guzowoja = Zikorur.guta(16777215,16,true);

      private var icon:Bitmap;

      private var title:String = "Pets.petInteractionPanelTitle";

      private var qotyfyby:String = "Pets.petInteractionPanelFusePetButton";

      private var runigalu:String = "Pets.petInteractionPanelFeedPetButton";

      private var objectType:int;

      var fusocy:Tivinu;

      var cod:Tivinu;

      public function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.icon=Zikorur.woz(this.objectType);
         this.icon.x=-4;
         this.icon.y=-8;
         addChild(this.icon);
         return;
      }

      private function jap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cod.x=WIDTH/4*3-this.cod.width/2;
         this.cod.y=HEIGHT-this.cod.height-4;
         this.fusocy.x=WIDTH/4*1-this.fusocy.width/2;
         this.fusocy.y=HEIGHT-this.fusocy.height-4;
         return;
      }
   }

}