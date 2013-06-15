package pejycaj
{
   import fytalis.Panel;
   import hivysif.Guzowoja;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.ui.Tivinu;
   import wenono.Nuri;
   import jediwip.Kybidu;
   import nyqojafof.Relaseka;
   import com.company.assembleegameclient.game.GameSprite;


   public class ArenaQueryPanel extends Panel
   {
      public function ArenaQueryPanel(param1:GameSprite, param2:uint) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.ryfoc=new Nuri();
         this.type=param2;
         super(param1);
         this.ryfoc.complete.addOnce(this.jap);
         this.qovuno();
         this.kytocy();
         this.buwif();
         this.zac();
         return;
      }

      private const vef:Guzowoja = Relaseka.guta(16777215,16,true);

      private var icon:Bitmap;

      var dafutubi:Tivinu;

      var fur:Tivinu;

      private var title:String = "ArenaQueryPanel.title";

      private var tabesidy:String = "Pets.caretakerPanelButtonInfo";

      private var bopub:String = "ArenaQueryPanel.leaderboard";

      private var ryfoc:Nuri;

      var type:uint;

      private function buwif() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dafutubi=new Tivinu(16,this.tabesidy);
         this.ryfoc.push(this.dafutubi.textChanged);
         addChild(this.dafutubi);
         return;
      }

      private function kytocy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vef.setStringBuilder(new Kybidu().setParams(this.title));
         this.vef.x=65;
         this.vef.y=28;
         addChild(this.vef);
         return;
      }

      private function zac() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fur=new Tivinu(16,this.bopub);
         this.ryfoc.push(this.fur.textChanged);
         addChild(this.fur);
         return;
      }

      private function qovuno() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.icon=Relaseka.motizilo(this.type);
         addChild(this.icon);
         this.icon.x=5;
         return;
      }

      private function jap() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 15;
         var _loc2_:int = this.dafutubi.width+_loc1_+this.fur.width;
         this.dafutubi.x=WIDTH/2-_loc2_/2;
         this.fur.x=this.dafutubi.x+this.dafutubi.width+_loc1_;
         this.fur.y=HEIGHT-this.fur.height-4;
         this.dafutubi.y=HEIGHT-this.dafutubi.height-4;
         return;
      }
   }

}