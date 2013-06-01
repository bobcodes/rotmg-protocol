package fefiw
{
[CLASS1036]   import flash.display.Sprite;
   import sojul.Jekoje;
   import pudev.Capitu;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import totuhare.Zufi;
   import haqakel.Kefyfa;


   public class KabamAccountInfoView extends Sprite implements Jekoje
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function KabamAccountInfoView() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.ceqafon();
         return;
      }

      private static const heh:int = 18;

      private var lejadu:Capitu;

      private var userName:String = "";

      private var tuq:Boolean;

      private function ceqafon() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lejadu=new Capitu().setSize(heh).setColor(11776947);
         this.lejadu.setAutoSize(TextFieldAutoSize.CENTER);
         this.lejadu.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         addChild(this.lejadu);
         return;
      }

      public function rewe(param1:String, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.userName=param1;
         this.tuq=param2;
         this.lejadu.setStringBuilder(new Zufi().setParams(Kefyfa.mas,{userName:param1}));
         return;
      }
   }
[/CLASS]
}