package haj
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;


   public class FusionStrength extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function FusionStrength() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addChild(Rilako.nato());
         this.zeledizi();
         this.pyre();
         return;
      }

      public static const wykafom:uint = 8768801;

      public static const pilizuhez:uint = 16711680;

      public static const kidylicut:int = 11776947;

      public static const LOW:String = "FusionStrength.Low";

      public static const wyha:String = "FusionStrength.Bad";

      public static const dapu:String = "FusionStrength.Good";

      public static const bacyhah:String = "FusionStrength.Great";

      public static const buciwaky:String = "FusionStrength.Fantastic";

      public static const zif:String = "FusionStrength.Maxed";

      public static const NONE:String = "FusionStrength.None";

      private static const pybywy:Number = 16;

      private static function cikizolo(param1:Number) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(tybahiw(param1))
         {
            return zif;
         }
         if(param1>0.8)
         {
            return buciwaky;
         }
         if(param1>0.6)
         {
            return bacyhah;
         }
         if(param1>0.4)
         {
            return dapu;
         }
         if(param1>0.2)
         {
            return LOW;
         }
         return wyha;
      }

      private static function tybahiw(param1:Number) : Boolean {
         return Math.abs(param1-1)<0.001;
      }

      private static function hypip(param1:Number) : Boolean {
         return param1<0.2;
      }

      public var ruzy:Guzowoja;

      public function reset() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ruzy.setStringBuilder(new Kybidu().setParams(NONE));
         this.ruzy.setColor(kidylicut);
         return;
      }

      private function zeledizi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = Rilako.makeText();
         _loc1_.x=pybywy;
         _loc1_.y=this.jodecigu();
         addChild(_loc1_);
         return;
      }

      private function pyre() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ruzy=Rilako.bicydepyl();
         this.ruzy.x=width-pybywy;
         this.ruzy.y=this.jodecigu();
         this.ruzy.setStringBuilder(new Kybidu().setParams(NONE));
         this.ruzy.setColor(kidylicut);
         addChild(this.ruzy);
         return;
      }

      private function jodecigu() : Number {
         return height/2;
      }

      public function nuwe(param1:Number) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = cikizolo(param1);
         this.ruzy.setStringBuilder(new Kybidu().setParams(_loc2_));
         this.vydu(param1);
         return;
      }

      private function vydu(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(tybahiw(param1))
         {
            this.ruzy.setColor(wykafom);
         }
         else
         {
            if(hypip(param1))
            {
               this.ruzy.setColor(pilizuhez);
            }
            else
            {
               this.ruzy.setColor(kidylicut);
            }
         }
         return;
      }
   }

}