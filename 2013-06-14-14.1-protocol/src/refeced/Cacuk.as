package refeced
{
   import flash.display.Sprite;
   import sefylew.Rut;
   import hivysif.Guzowoja;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import komi.Vibemod;


   public class Cacuk extends Sprite implements Rut
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cacuk() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.pypa();
         return;
      }

      private static const voquhubi:int = 18;

      private var rif:Guzowoja;

      private var userName:String = "";

      private var zuqic:Boolean;

      private function pypa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rif=new Guzowoja().setSize(voquhubi).setColor(11776947);
         this.rif.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.rif.setAutoSize(TextFieldAutoSize.RIGHT);
         addChild(this.rif);
         return;
      }

      public function zyfa(param1:String, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.userName=param1;
         this.zuqic=param2;
         this.rif.setStringBuilder(new Kybidu().setParams(Vibemod.qyhozulor,{userName:param1}));
         return;
      }
   }

}