package fyvanod
{
[CLASS283]   import flash.display.Sprite;
   import pudev.Capitu;
   import totuhare.Zufi;


   public class FusionStrength extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function FusionStrength() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(Tilalip.soq());
         this.cyjobate();
         this.debe();
         return;
      }

      public static const vivyk:uint = 8768801;

      public static const nypunof:uint = 16711680;

      public static const migy:int = 11776947;

      public static const LOW:String = "FusionStrength.Low";

      public static const zefosezun:String = "FusionStrength.Bad";

      public static const bywipiv:String = "FusionStrength.Good";

      public static const tezyvyhod:String = "FusionStrength.Great";

      public static const sedujop:String = "FusionStrength.Fantastic";

      public static const nosigam:String = "FusionStrength.Maxed";

      public static const NONE:String = "FusionStrength.None";

      private static const bykize:Number = 16;

      private static function wivih(param1:Number) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(hed(param1))
         {
            return nosigam;
         }
         if(param1>0.8)
         {
            return sedujop;
         }
         if(param1>0.6)
         {
            return tezyvyhod;
         }
         if(param1>0.4)
         {
            return bywipiv;
         }
         if(param1>0.2)
         {
            return LOW;
         }
         return zefosezun;
      }

      private static function hed(param1:Number) : Boolean {
         return Math.abs(param1-1)<0.001;
      }

      private static function kyjihu(param1:Number) : Boolean {
         return param1<0.2;
      }

      public var bigycec:Capitu;

      public function reset() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bigycec.setStringBuilder(new Zufi().setParams(NONE));
         this.bigycec.setColor(migy);
         return;
      }

      private function cyjobate() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = Tilalip.makeText();
         _loc1_.x=bykize;
         _loc1_.y=this.migicovy();
         addChild(_loc1_);
         return;
      }

      private function debe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bigycec=Tilalip.hokyho();
         this.bigycec.x=width-bykize;
         this.bigycec.y=this.migicovy();
         this.bigycec.setStringBuilder(new Zufi().setParams(NONE));
         this.bigycec.setColor(migy);
         addChild(this.bigycec);
         return;
      }

      private function migicovy() : Number {
         return height/2;
      }

      public function cema(param1:Number) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = wivih(param1);
         this.bigycec.setStringBuilder(new Zufi().setParams(_loc2_));
         this.vyhipod(param1);
         return;
      }

      private function vyhipod(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(hed(param1))
         {
            this.bigycec.setColor(vivyk);
         }
         else
         {
            if(kyjihu(param1))
            {
               this.bigycec.setColor(nypunof);
            }
            else
            {
               this.bigycec.setColor(migy);
            }
         }
         return;
      }
   }
[/CLASS]
}