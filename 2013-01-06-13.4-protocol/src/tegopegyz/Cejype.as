package tegopegyz
{
[CLASS1035]   import flash.display.Sprite;
   import sojul.Jekoje;
   import pudev.Capitu;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;
   import haqakel.Kefyfa;


   public class Cejype extends Sprite implements Jekoje
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cejype() {
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lejadu=new Capitu().setSize(heh).setColor(11776947);
         this.lejadu.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.lejadu.setAutoSize(TextFieldAutoSize.RIGHT);
         addChild(this.lejadu);
         return;
      }

      public function rewe(param1:String, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.userName=param1;
         this.tuq=param2;
         this.lejadu.setStringBuilder(new Zufi().setParams(Kefyfa.bucuzyb,{userName:param1}));
         return;
      }
   }
[/CLASS]
}