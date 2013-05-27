package fidymu
{
   import flash.display.Sprite;
   import coh.Qewitu;
   import zoroc.Bezuco;


   public class Got extends Sprite implements Lybulihu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Got() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nyfapaj=new Datu();
         super();
         return;
      }

      public static const riwu:String = "topLeft";

      public static const fofahukyn:String = "topRight";

      public static const sysev:String = "bottomRight";

      public static const zupoqu:String = "bottomLeft";

      public static const paluh:String = "regular";

      private static const kudecyh:Array = [riwu,fofahukyn,sysev,zupoqu];

      public var nyfapaj:Datu;

      private var danyz:Qewitu;

      private var background:String;

      private var size:int;

      private var qiri:Durepeba;

      public function mav(param1:Qewitu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.danyz=param1;
         addChild(param1);
         return;
      }

      public function disable() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.danyz.disable();
         return;
      }

      public function isEnabled() : Boolean {
         return this.danyz.isEnabled();
      }

      public function setSize(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.size=param1;
         return;
      }

      public function zubeg(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.background=param1;
         if(this.qiri)
         {
            removeChild(this.qiri);
         }
         this.qiri=Durepeba(this.nyfapaj.create(this.size,this.toqi()));
         addChildAt(this.qiri,0);
         return;
      }

      private function toqi() : Array {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = [0,0,0,0];
         if(this.background!=paluh)
         {
            _loc1_[kudecyh.indexOf(this.background)]=1;
         }
         return _loc1_;
      }

      public function johyrubo() : String {
         return this.background;
      }

      public function getPetVO() : Bezuco {
         return this.danyz.getPetVO();
      }
   }

}