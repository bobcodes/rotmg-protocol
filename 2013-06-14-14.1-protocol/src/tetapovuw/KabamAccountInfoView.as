package tetapovuw
{
   import flash.display.Sprite;
   import sefylew.Rut;
   import hivysif.Guzowoja;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import jediwip.Kybidu;
   import komi.Vibemod;


   public class KabamAccountInfoView extends Sprite implements Rut
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function KabamAccountInfoView() {
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
         this.rif.setAutoSize(TextFieldAutoSize.CENTER);
         this.rif.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         addChild(this.rif);
         return;
      }

      public function zyfa(param1:String, param2:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.userName=param1;
         this.zuqic=param2;
         this.rif.setStringBuilder(new Kybidu().setParams(Vibemod.wilytiveq,{userName:param1}));
         return;
      }
   }

}