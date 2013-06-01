package jat
{
[CLASS959]   import flash.display.Sprite;
   import fyvanod.Sal;
   import qypupet.Vuravipyg;


   public class Vaz extends Sprite implements Waby
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vaz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.degocare=new Kiwow();
         super();
         return;
      }

      public static const vefuqu:String = "topLeft";

      public static const tehivameq:String = "topRight";

      public static const fezy:String = "bottomRight";

      public static const mewejysa:String = "bottomLeft";

      public static const tajowyf:String = "regular";

      private static const kihusykidy:Array = [vefuqu,tehivameq,fezy,mewejysa];

      public var degocare:Kiwow;

      private var hucuposeg:Sal;

      private var background:String;

      private var size:int;

      private var toky:Kohututo;

      public function tolyde(param1:Sal) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hucuposeg=param1;
         addChild(param1);
         return;
      }

      public function disable() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hucuposeg.disable();
         return;
      }

      public function isEnabled() : Boolean {
         return this.hucuposeg.isEnabled();
      }

      public function setSize(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size=param1;
         return;
      }

      public function gupocity(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.background=param1;
         if(this.toky)
         {
            removeChild(this.toky);
         }
         this.toky=Kohututo(this.degocare.create(this.size,this.zumonim()));
         addChildAt(this.toky,0);
         return;
      }

      private function zumonim() : Array {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = [0,0,0,0];
         if(this.background!=tajowyf)
         {
            _loc1_[kihusykidy.indexOf(this.background)]=1;
         }
         return _loc1_;
      }

      public function muse() : String {
         return this.background;
      }

      public function getPetVO() : Vuravipyg {
         return this.hucuposeg.getPetVO();
      }
   }
[/CLASS]
}