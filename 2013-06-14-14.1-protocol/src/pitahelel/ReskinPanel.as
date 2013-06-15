package pitahelel
{
   import fytalis.Panel;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Tivinu;
   import mukyrosu.Qanyduk;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.events.KeyboardEvent;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.assembleegameclient.game.GameSprite;
   import qykifavol.Rulavowaz;
   import flash.events.MouseEvent;


   public class ReskinPanel extends Panel
   {
      public function ReskinPanel(param1:GameSprite=null) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         this.judeba.add(this.zug);
         return;
      }

      private const title:Guzowoja = this.haq();

      private const button:Tivinu = this.wemisusis();

      private const judeba:Qanyduk = new Rulavowaz(this.button,MouseEvent.CLICK);

      public const reskin:Qanyduk = new Qanyduk();

      private function zug() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.reskin.dispatch();
         return;
      }

      private function haq() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = null;
         _loc1_=new Guzowoja().setSize(18).setColor(16777215).setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.x=WIDTH/2;
         _loc1_.setBold(true);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.topolu));
         addChild(_loc1_);
         return _loc1_;
      }

      private function wemisusis() : Tivinu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Tivinu = new Tivinu(16,Vibemod.mecedorum);
         _loc1_.textChanged.addOnce(this.ciwil);
         addChild(_loc1_);
         return _loc1_;
      }

      private function ciwil() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.button.x=WIDTH/2-this.button.width/2;
         this.button.y=HEIGHT-this.button.height-4;
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==RotmgParameters.data_.interact&&stage.focus==null)
         {
            this.reskin.dispatch();
         }
         return;
      }
   }

}