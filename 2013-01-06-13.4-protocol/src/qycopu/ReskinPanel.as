package qycopu
{
[CLASS1315]   import warude.Panel;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Cid;
   import tinava.Dab;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.events.KeyboardEvent;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.game.GameSprite;
   import zehus.Kelapu;
   import flash.events.MouseEvent;


   public class ReskinPanel extends Panel
   {
      public function ReskinPanel(param1:GameSprite=null) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         this.dice.add(this.nonolypyr);
         return;
      }

      private const title:Capitu = this.jewyry();

      private const button:Cid = this.lulazipew();

      private const dice:Dab = new Kelapu(this.button,MouseEvent.CLICK);

      public const reskin:Dab = new Dab();

      private function nonolypyr() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.reskin.dispatch();
         return;
      }

      private function jewyry() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = null;
         _loc1_=new Capitu().setSize(18).setColor(16777215).setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.x=WIDTH/2;
         _loc1_.setBold(true);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.setStringBuilder(new Zufi().setParams(Kefyfa.juvilyry));
         addChild(_loc1_);
         return _loc1_;
      }

      private function lulazipew() : Cid {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Cid = new Cid(16,Kefyfa.jujijeqe);
         _loc1_.textChanged.addOnce(this.fuqi);
         addChild(_loc1_);
         return _loc1_;
      }

      private function fuqi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.button.x=WIDTH/2-this.button.width/2;
         this.button.y=HEIGHT-this.button.height-4;
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==Parameters.data_.interact&&stage.focus==null)
         {
            this.reskin.dispatch();
         }
         return;
      }
   }
[/CLASS]
}